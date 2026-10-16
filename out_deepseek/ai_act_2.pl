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
% There are 363 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous access_restricted_to_commission_and_national_authorities/1.
:- discontiguous accompanied_by_eu_declaration_of_conformity/1.
:- discontiguous accompanied_by_instructions_for_use/1.
:- discontiguous acts_as_competent_authority/2.
:- discontiguous acts_on_behalf_of_public_authority/1.
:- discontiguous additional_sandbox_permitted/1.
:- discontiguous adequate_corrective_action_taken/2.
:- discontiguous adherence_may_be_limited/2.
:- discontiguous administrative_campaign_tool/1.
:- discontiguous adopting_act_concerning_ai_safety_component/1.
:- discontiguous adopting_delegated_act/2.
:- discontiguous adopting_detailed_measures/2.
:- discontiguous adopting_technical_specifications_and_testing_standards/3.
:- discontiguous adverse_impact_on_vulnerable_groups_considered/1.
:- discontiguous aggregated_data_from_member_states/1.
:- discontiguous ai_office_has_supervisory_powers/2.
:- discontiguous ai_office_must_publish_sandbox_list/1.
:- discontiguous alias/2.
:- discontiguous allows_evaluation_of_continuous_compliance/2.
:- discontiguous amendment_to_directive/2.
:- discontiguous annex_3_high_risk_ai_system/1.
:- discontiguous another_body_confirmed_immediate_responsibility/1.
:- discontiguous appeal_available/1.
:- discontiguous application_accompanied_by_accreditation_certificate/1.
:- discontiguous application_accompanied_by_description/1.
:- discontiguous application_date/2.
:- discontiguous application_includes_existing_designation_documents/1.
:- discontiguous appreciably_impairs_informed_decision/1.
:- discontiguous appropriate_targeted_measures_adopted/1.
:- discontiguous arguments_substantiated/1.
:- discontiguous artistic_or_analogous_work/1.
:- discontiguous assistive_editing_function/1.
:- discontiguous assumes_functions/2.
:- discontiguous asylum_application_examination_system/1.
:- discontiguous authorisation_by_judicial_or_independent_authority/1.
:- discontiguous authorisation_granted/1.
:- discontiguous authorisation_refused/1.
:- discontiguous authorised_conformity_assessment_body_third_country/1.
:- discontiguous authorised_for_criminal_offences/1.
:- discontiguous authorised_representative_appointed/1.
:- discontiguous available_for_public_reporting/1.
:- discontiguous aware_of_risk/2.
:- discontiguous awareness_raising_activities/1.
:- discontiguous balanced_commercial_non_commercial_interests/1.
:- discontiguous balanced_selection_of_stakeholders/1.
:- discontiguous balanced_smes_and_other_undertakings/1.
:- discontiguous based_on_objective_verifiable_facts/1.
:- discontiguous based_on_social_behaviour_or_personality/1.
:- discontiguous based_solely_on_profiling_or_personality/1.
:- discontiguous bears_ce_marking/1.
:- discontiguous becomes_provider_under_circumstance/2.
:- discontiguous best_practices_in_public_procurement/1.
:- discontiguous biometric_categorisation_or_emotion_recognition/1.
:- discontiguous biometric_categorisation_system/1.
:- discontiguous biometric_verification_only_system/1.
:- discontiguous board/1.
:- discontiguous board_attendee/1.
:- discontiguous board_established/1.
:- discontiguous board_observer/1.
:- discontiguous board_representative/1.
:- discontiguous board_secretariat/1.
:- discontiguous cannot_fulfill_with_non_personal_data/1.
:- discontiguous carrying_out_activities_pursuant_to/2.
:- discontiguous categorises_by_sensitive_attributes/1.
:- discontiguous categorises_individuals_by_biometric_data/1.
:- discontiguous causes_decision_not_otherwise_taken/1.
:- discontiguous causes_or_likely_causes_significant_harm/1.
:- discontiguous ce_marking_affixed_to_packaging_or_documentation/1.
:- discontiguous ce_marking_affixed_visibly_legibly_indelibly/1.
:- discontiguous ce_marking_followed_by_notified_body_number/1.
:- discontiguous ce_marking_indicates_compliance_with_other_union_law/1.
:- discontiguous ce_marking_subject_to_general_principles/1.
:- discontiguous ceased_activity/1.
:- discontiguous certificate_extension_period/2.
:- discontiguous certificate_language/1.
:- discontiguous certificate_relates_to/2.
:- discontiguous certificate_validity_period/2.
:- discontiguous certificates_remain_valid_after_cessation/1.
:- discontiguous certificates_remain_valid_after_withdrawal/1.
:- discontiguous certificates_remain_valid_during_suspension_or_restriction/1.
:- discontiguous circumvention_intent/2.
:- discontiguous civil_protection_authority/1.
:- discontiguous classified_as_non_high_risk/2.
:- discontiguous code_of_conduct_covers/2.
:- discontiguous collected_from_other_sources/1.
:- discontiguous commission_and_board_may_access_exit_reports/1.
:- discontiguous commission_deems_unjustified/1.
:- discontiguous commission_empowered_to_adopt_delegated_acts/1.
:- discontiguous commission_empowered_to_amend_annex_5/1.
:- discontiguous commission_finds_intentional_or_negligent/2.
:- discontiguous commission_is_controller_of_eu_database/1.
:- discontiguous commission_may_provide_support/1.
:- discontiguous commission_must_adopt_implementing_act/1.
:- discontiguous commission_must_coordinate_with_authorities/1.
:- discontiguous commission_must_develop_single_interface/1.
:- discontiguous committee_within_meaning_of_regulation/1.
:- discontiguous common_specification_adopted/1.
:- discontiguous communication_campaigns/1.
:- discontiguous competent_for/2.
:- discontiguous complaint_contains_contact_point/1.
:- discontiguous complaint_contains_facts/1.
:- discontiguous complaint_contains_reason/1.
:- discontiguous complaint_duly_reasoned/1.
:- discontiguous complaint_grounds/1.
:- discontiguous complaint_handled_for_market_surveillance/1.
:- discontiguous complaint_may_contain_other_information/1.
:- discontiguous compliance_ensured_by_corrective_action/2.
:- discontiguous complies_with_financial_services_governance/1.
:- discontiguous complies_with_temporal_geographic_personal_limitations/1.
:- discontiguous concerns_ai_safety_component/1.
:- discontiguous concerns_ai_safety_components/1.
:- discontiguous concerns_artificial_intelligence_systems/1.
:- discontiguous concludes_noncompliance/2.
:- discontiguous condition_for_adding_use_cases/1.
:- discontiguous condition_for_removing_use_cases/1.
:- discontiguous confidential_information_exchange_restriction_applies/2.
:- discontiguous confidentiality_obligations_apply/1.
:- discontiguous confirmed_no_new_certificates_and_capability/1.
:- discontiguous confirmed_no_risk_and_timeline/1.
:- discontiguous confirmed_no_risk_by_national_competent_authority/1.
:- discontiguous conformity_assessment_based_on_internal_control/1.
:- discontiguous conformity_assessment_carried_out/1.
:- discontiguous conformity_assessment_fees/1.
:- discontiguous conformity_assessment_procedure/2.
:- discontiguous conformity_assessment_procedures_ongoing/1.
:- discontiguous consent_given_for_public_access/1.
:- discontiguous considers_non_conforming/2.
:- discontiguous considers_nonconformity/2.
:- discontiguous court_has_unlimited_jurisdiction_over_fine/1.
:- discontiguous court_may_cancel_reduce_or_increase/1.
:- discontiguous creates_or_expands_facial_recognition_database/1.
:- discontiguous creditworthiness_system/1.
:- discontiguous criminal_offence_referred_to_in_art_5_par_1_h_iii/1.
:- discontiguous criteria_in_annex_13_satisfied/1.
:- discontiguous critical_infrastructure_safety_component/1.
:- discontiguous data_governance_practices_applied/1.
:- discontiguous data_necessary_for_compliance/1.
:- discontiguous data_sets_account_for_setting/1.
:- discontiguous data_sets_meet_quality_criteria/1.
:- discontiguous data_sets_relevant_representative_complete/1.
:- discontiguous dealing_on_behalf_of/2.
:- discontiguous dealing_with_operation_or_use/1.
:- discontiguous decides_to_cease/1.
:- discontiguous decision_affects_certificate/1.
:- discontiguous decision_by_notified_body/1.
:- discontiguous dedicated_communication_channels/1.
:- discontiguous deduces_or_infers_protected_characteristics/1.
:- discontiguous deep_fake_content/1.
:- discontiguous delegated_act_concerns/2.
:- discontiguous delegated_act_enters_into_force/1.
:- discontiguous delegation_of_power_conferred/1.
:- discontiguous delegation_of_power_period/2.
:- discontiguous delegation_of_power_revocable/1.
:- discontiguous deletion_does_not_decrease_protection/1.
:- discontiguous demonstrated_no_systemic_risk/1.
:- discontiguous demonstrates_conformity_with_harmonised_standards/1.
:- discontiguous deployer_can_use_for_high_risk_purpose/1.
:- discontiguous deployer_is_public_authority/1.
:- discontiguous deployer_subject_to_fria/1.
:- discontiguous deployment_confirms_identity/1.
:- discontiguous deploys_deceptive_techniques/1.
:- discontiguous deploys_purposefully_manipulative_techniques/1.
:- discontiguous deploys_subliminal_or_manipulative_techniques/1.
:- discontiguous deploys_subliminal_techniques/1.
:- discontiguous derogation_authorisation/1.
:- discontiguous designation_restricted_suspended_or_withdrawn/1.
:- discontiguous designation_suspended_or_restricted/1.
:- discontiguous designation_suspended_restricted_or_withdrawn/1.
:- discontiguous designation_withdrawn/1.
:- discontiguous detrimental_treatment_unjustified_or_disproportionate/1.
:- discontiguous detrimental_treatment_unrelated_context/1.
:- discontiguous developed_for_substantial_public_interest/1.
:- discontiguous developed_in_specified_area/1.
:- discontiguous development_description/1.
:- discontiguous digital_ce_marking_accessible/1.
:- discontiguous documentation_contains/2.
:- discontiguous documentation_contains_adversarial_testing/2.
:- discontiguous documentation_contains_detailed_description/2.
:- discontiguous documentation_contains_evaluation_strategies/2.
:- discontiguous documentation_contains_general_description/2.
:- discontiguous documentation_contains_system_architecture/2.
:- discontiguous does_not_substantially_alter_input/1.
:- discontiguous due_consideration_to_deployer_context/1.
:- discontiguous duly_reasoned/1.
:- discontiguous ecris_tcn_system/1.
:- discontiguous edps_acts_as_market_surveillance_authority/1.
:- discontiguous edps_may_establish_sandbox/1.
:- discontiguous education_access_system/1.
:- discontiguous education_level_assessment_system/1.
:- discontiguous election_influence_system/1.
:- discontiguous elimination_or_reduction_technically_feasible/1.
:- discontiguous emergency_response_system/1.
:- discontiguous emotion_recognition_system/1.
:- discontiguous employment_decision_system/1.
:- discontiguous entry_exit_system/1.
:- discontiguous entry_into_force_date/2.
:- discontiguous established_in_union/1.
:- discontiguous eu_database_complies_with_accessibility_requirements/1.
:- discontiguous eu_database_contains_personal_data/1.
:- discontiguous eu_database_publicly_accessible/1.
:- discontiguous eu_database_restricted_access/1.
:- discontiguous eu_declaration_of_conformity/1.
:- discontiguous eurodac_system/1.
:- discontiguous european_travel_information_and_authorisation_system/1.
:- discontiguous evaluates_or_classifies_over_time/1.
:- discontiguous evaluation_finds_non_compliance/2.
:- discontiguous evaluation_purpose/2.
:- discontiguous evidence_reliability_system/1.
:- discontiguous ex_officio_designation/1.
:- discontiguous examines_technical_documentation_compliance/1.
:- discontiguous exception_from_explanation_applies/1.
:- discontiguous exceptional_reason/1.
:- discontiguous exit_report_may_be_made_public/1.
:- discontiguous exit_report_taken_positively/1.
:- discontiguous explanation_right_otherwise_provided/1.
:- discontiguous exploits_age_vulnerability/1.
:- discontiguous exploits_disability_vulnerability/1.
:- discontiguous exploits_social_or_economic_situation_vulnerability/1.
:- discontiguous exploits_vulnerabilities/1.
:- discontiguous extension_of_scope/1.
:- discontiguous extension_of_scope_procedures_apply/1.
:- discontiguous extension_opposed/2.
:- discontiguous financial_institution_provider/1.
:- discontiguous finding_under_paragraph_1/1.
:- discontiguous finds_no_longer_meets_requirements/2.
:- discontiguous fine_cap/2.
:- discontiguous fine_cap_art_5/2.
:- discontiguous fine_cap_other/2.
:- discontiguous fines_contribute_to_union_budget/1.
:- discontiguous fines_imposed_under_art_101_must_be/1.
:- discontiguous fines_not_affect_effective_operation/1.
:- discontiguous formal_noncompliance_finding/1.
:- discontiguous fria_complements_dpia/2.
:- discontiguous fria_exemption_applies/1.
:- discontiguous fundamental_rights_authority/1.
:- discontiguous further_processing_personal_data_permitted/1.
:- discontiguous general_description/1.
:- discontiguous generated_or_manipulated_text/1.
:- discontiguous generates_synthetic_content/1.
:- discontiguous grounds_to_consider_conditions_not_met/2.
:- discontiguous harmonised_standards_cover_requirements/1.
:- discontiguous has_reason_to_consider_nonconformity/2.
:- discontiguous high_impact_capabilities_evaluated/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous human_oversight_aims_to_prevent_risks/1.
:- discontiguous human_review_or_editorial_control/1.
:- discontiguous imminent_threat/1.
:- discontiguous implementing_acts_adopted_under/1.
:- discontiguous importer_complied_with_obligations/1.
:- discontiguous in_conformity_with_harmonised_standards/1.
:- discontiguous in_publicly_accessible_space/1.
:- discontiguous in_workplace_or_education/1.
:- discontiguous includes_sensitive_operational_data/1.
:- discontiguous incorrect_information_supply/1.
:- discontiguous indicates_description_of_facts_and_reasons/1.
:- discontiguous indicates_other_relevant_information/1.
:- discontiguous indicates_point_of_contact/1.
:- discontiguous infers_emotions/1.
:- discontiguous information_referred_to_in_paras_1_to_4/1.
:- discontiguous informed_consent_documented/1.
:- discontiguous informed_consent_information/1.
:- discontiguous informed_of_serious_incident/2.
:- discontiguous initial_provider_ceases/1.
:- discontiguous initiating_authority/2.
:- discontiguous instructions_contain_changes/2.
:- discontiguous instructions_contain_characteristics/2.
:- discontiguous instructions_contain_identity/2.
:- discontiguous instructions_contain_log_mechanisms/2.
:- discontiguous instructions_contain_oversight_measures/2.
:- discontiguous instructions_contain_resources/2.
:- discontiguous insurance_risk_assessment_system/1.
:- discontiguous interaction_obvious/1.
:- discontiguous interoperability_framework_system/1.
:- discontiguous issued_certificate_for/2.
:- discontiguous issued_objection_under_art_60_4_b/2.
:- discontiguous judicial_assistance_system/1.
:- discontiguous large_scale_it_system_in_fsj/1.
:- discontiguous law_enforcement_categorisation/1.
:- discontiguous law_enforcement_migration_asylum_border_system/1.
:- discontiguous law_enforcement_or_civil_protection_authority/1.
:- discontiguous law_enforcement_profiling_system/1.
:- discontiguous law_enforcement_sandbox_processing_permitted/1.
:- discontiguous lawful_labelling_or_filtering/1.
:- discontiguous lays_down_governance_rules/1.
:- discontiguous lays_down_harmonised_rules/1.
:- discontiguous lays_down_innovation_support_measures/1.
:- discontiguous lays_down_prohibitions/1.
:- discontiguous lays_down_requirements/1.
:- discontiguous lays_down_rules_for_general_purpose_ai_models/1.
:- discontiguous lays_down_transparency_rules/1.
:- discontiguous learning_outcome_evaluation_system/1.
:- discontiguous liable_for_damage/2.
:- discontiguous limited_application/2.
:- discontiguous limited_period/1.
:- discontiguous limited_to_strictly_necessary_scope/1.
:- discontiguous logging_capabilities_must_enable/2.
:- discontiguous logging_must_record/2.
:- discontiguous makes_risk_assessment_of_natural_person/1.
:- discontiguous market_surveillance_authority_for_annex_3_systems/2.
:- discontiguous market_surveillance_authority_for_financial_system/2.
:- discontiguous market_surveillance_authority_for_product_related_system/2.
:- discontiguous may_advise_on_international_matters/1.
:- discontiguous may_allow_testing_in_derogation/2.
:- discontiguous may_appoint_independent_experts/1.
:- discontiguous may_approve_code_of_practice/1.
:- discontiguous may_assist_ai_office/1.
:- discontiguous may_assist_in_developing_expertise/1.
:- discontiguous may_be_required_to_pay_fees/2.
:- discontiguous may_call_on_experts/2.
:- discontiguous may_carry_out_additional_tests/2.
:- discontiguous may_collect_and_share_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_coordination/1.
:- discontiguous may_contribute_to_guidance_documents/1.
:- discontiguous may_contribute_to_harmonisation/1.
:- discontiguous may_contribute_to_international_cooperation/1.
:- discontiguous may_cooperate_with_union_bodies/1.
:- discontiguous may_designate_alternative_authority/2.
:- discontiguous may_designate_alternative_financial_authority/2.
:- discontiguous may_designate_systemic_risk/2.
:- discontiguous may_establish_other_subgroups/2.
:- discontiguous may_establish_sub_groups/2.
:- discontiguous may_exchange_confidential_information_with_third_countries/2.
:- discontiguous may_exercise_powers_remotely/1.
:- discontiguous may_extend_provisional_validity/2.
:- discontiguous may_extend_term_of_office/2.
:- discontiguous may_facilitate_common_criteria/1.
:- discontiguous may_impose_fine/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_integrate_elements/2.
:- discontiguous may_invite_experts_and_stakeholders/1.
:- discontiguous may_invite_to_adhere/2.
:- discontiguous may_invite_to_participate/2.
:- discontiguous may_involve_other_actors/1.
:- discontiguous may_issue_recommendations/1.
:- discontiguous may_make_commitments_binding/2.
:- discontiguous may_notify/2.
:- discontiguous may_perform_checks/1.
:- discontiguous may_perform_notified_body_activities/2.
:- discontiguous may_prepare_opinions/1.
:- discontiguous may_prepare_recommendations/1.
:- discontiguous may_prepare_written_contributions/1.
:- discontiguous may_present_arguments_against_classification/2.
:- discontiguous may_propose_joint_activities/2.
:- discontiguous may_provide_common_rules/1.
:- discontiguous may_provide_guidance_and_advice/2.
:- discontiguous may_provide_implementation_advice/1.
:- discontiguous may_provide_opinions_on_qualified_alerts/1.
:- discontiguous may_provide_qualified_alert/2.
:- discontiguous may_provide_simplified_documentation/1.
:- discontiguous may_reassess_designation/2.
:- discontiguous may_receive_opinions_from_member_states/1.
:- discontiguous may_rely_on_code_of_practice/2.
:- discontiguous may_renew_term_of_office/2.
:- discontiguous may_request_access/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_exercise_of_powers/2.
:- discontiguous may_request_information_for_scientific_panel/2.
:- discontiguous may_request_information_from_ai_office/2.
:- discontiguous may_request_information_from_provider/2.
:- discontiguous may_request_testing/2.
:- discontiguous may_require_further_evidence/2.
:- discontiguous may_require_modification_of_testing/2.
:- discontiguous may_submit_complaint/2.
:- discontiguous may_submit_incomplete_report/2.
:- discontiguous may_support_joint_activities/1.
:- discontiguous may_support_process/1.
:- discontiguous may_support_promotion_of_ai_literacy/1.
:- discontiguous may_suspend_or_terminate_testing/2.
:- discontiguous may_suspend_restrict_withdraw_designation/2.
:- discontiguous may_suspend_testing/2.
:- discontiguous may_take_necessary_actions/2.
:- discontiguous may_use_documentation_for_compliance/1.
:- discontiguous may_use_existing_designation_documents/1.
:- discontiguous may_use_national_accreditation_body/2.
:- discontiguous measure_according_to_articles/1.
:- discontiguous migration_identification_system/1.
:- discontiguous migration_polygraph_system/1.
:- discontiguous migration_risk_assessment_system/1.
:- discontiguous minimum_six_months_since_designation/1.
:- discontiguous misclassified_to_circumvent/1.
:- discontiguous must_accept_address/1.
:- discontiguous must_accept_simplified_form/1.
:- discontiguous must_achieve_accuracy_robustness_cybersecurity/1.
:- discontiguous must_act_in_accordance_with_confidentiality/1.
:- discontiguous must_add_reference/2.
:- discontiguous must_address_ai_specific_vulnerabilities/1.
:- discontiguous must_adopt_implementing_acts/1.
:- discontiguous must_adopt_implementing_acts_for_proceedings/1.
:- discontiguous must_adopt_mitigation_or_suspend/2.
:- discontiguous must_adopt_rules_of_procedure/2.
:- discontiguous must_advise_ai_office/2.
:- discontiguous must_advise_and_assist/2.
:- discontiguous must_advise_classification_models/2.
:- discontiguous must_advise_classification_systemic_risk/2.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_agree_terms_for_real_world_testing/2.
:- discontiguous must_alert_systemic_risks/2.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_allow_access_to_premises/2.
:- discontiguous must_allow_extension_on_request/2.
:- discontiguous must_apply_article_11_procedure/1.
:- discontiguous must_apply_article_79_procedures/1.
:- discontiguous must_apply_directive/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_appoint_members/2.
:- discontiguous must_assess_amendment_need/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/2.
:- discontiguous must_assess_and_update_requirements/1.
:- discontiguous must_assess_change_to_ai_system/2.
:- discontiguous must_assess_coverage/2.
:- discontiguous must_assess_impact_on_certificates/2.
:- discontiguous must_assess_quality_management_system/2.
:- discontiguous must_assign_human_oversight/2.
:- discontiguous must_assign_identification_number/2.
:- discontiguous must_assist_in_assessment_of_standards/1.
:- discontiguous must_associate_complainants/1.
:- discontiguous must_associate_data_protection_authorities/1.
:- discontiguous must_assume_responsibility_for_compliance/2.
:- discontiguous must_authorise_placing_on_market_or_putting_into_service/2.
:- discontiguous must_avoid_unnecessary_burdens/2.
:- discontiguous must_base_decision_on_commentable_elements/1.
:- discontiguous must_base_on_post_market_monitoring_plan/2.
:- discontiguous must_be_able_to_disregard_output/1.
:- discontiguous must_be_able_to_interrupt_system/1.
:- discontiguous must_be_assisted_by_committee/2.
:- discontiguous must_be_chaired_by_representative/2.
:- discontiguous must_be_designed_for_human_oversight/1.
:- discontiguous must_be_established_under_national_law/1.
:- discontiguous must_be_independent_of_other_operators/1.
:- discontiguous must_be_independent_of_provider/2.
:- discontiguous must_be_ready_by/2.
:- discontiguous must_be_resilient_to_attacks/1.
:- discontiguous must_be_resilient_to_errors/1.
:- discontiguous must_bring_into_compliance_by/2.
:- discontiguous must_carry_out_adequate_tests/2.
:- discontiguous must_carry_out_assessment/2.
:- discontiguous must_carry_out_evaluation/2.
:- discontiguous must_carry_out_periodic_audits/2.
:- discontiguous must_carry_out_surveillance/2.
:- discontiguous must_collect_and_analyse_data/2.
:- discontiguous must_communicate_decision/2.
:- discontiguous must_communicate_fine_information_to_board/1.
:- discontiguous must_communicate_grounds_to_other_authorities/2.
:- discontiguous must_communicate_identity/2.
:- discontiguous must_communicate_preliminary_findings/2.
:- discontiguous must_comply_with_accessibility/2.
:- discontiguous must_comply_with_obligations/2.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_comply_with_requirements/2.
:- discontiguous must_comply_with_safeguards/1.
:- discontiguous must_confirm_identity/1.
:- discontiguous must_consider_adverse_impact/2.
:- discontiguous must_consider_criteria/2.
:- discontiguous must_consider_in_fixing_fine/1.
:- discontiguous must_consult_advisory_forum/1.
:- discontiguous must_consult_and_decide/2.
:- discontiguous must_consult_and_evaluate/2.
:- discontiguous must_consult_board_and_stakeholders/1.
:- discontiguous must_consult_board_on_updating_specifications/1.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_experts_on_functional_specifications/1.
:- discontiguous must_consult_other_authorities/2.
:- discontiguous must_contain_annex_5_information/1.
:- discontiguous must_contain_commitments_or_measures/1.
:- discontiguous must_contain_information_required_under_other_legal_acts/1.
:- discontiguous must_contain_minimum_elements/1.
:- discontiguous must_contribute_to_tasks/2.
:- discontiguous must_contribute_tools_methodologies/2.
:- discontiguous must_contribute_tools_templates/2.
:- discontiguous must_convene_meetings/2.
:- discontiguous must_cooperate/2.
:- discontiguous must_cooperate_in_investigation/2.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_competent_authorities/1.
:- discontiguous must_cooperate_with_new_provider/2.
:- discontiguous must_cooperate_with_other_authorities/1.
:- discontiguous must_coordinate_within_board/1.
:- discontiguous must_correctly_interpret_output/1.
:- discontiguous must_cover_obligations/2.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_justification/1.
:- discontiguous must_declare_accuracy_levels/1.
:- discontiguous must_delete_data_when_no_longer_needed/1.
:- discontiguous must_delete_personal_data_on_request/2.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_compliance/1.
:- discontiguous must_demonstrate_conformity_on_request/2.
:- discontiguous must_designate_notifying_authority/2.
:- discontiguous must_designate_representative/2.
:- discontiguous must_designate_single_point_of_contact/2.
:- discontiguous must_designate_union_ai_testing_support_structure/2.
:- discontiguous must_determine_conditions/2.
:- discontiguous must_determine_panel_size/2.
:- discontiguous must_develop_fria_template/1.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_information_platform/2.
:- discontiguous must_develop_methodology/2.
:- discontiguous must_develop_on_quality_data_sets/2.
:- discontiguous must_develop_union_expertise/2.
:- discontiguous must_direct_to_pre_deployment_services/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_disclose_generated_text/2.
:- discontiguous must_document_impartiality_structure/1.
:- discontiguous must_document_non_high_risk_assessment/2.
:- discontiguous must_document_use/2.
:- discontiguous must_draw_up_certificate_in_language/2.
:- discontiguous must_draw_up_declaration_of_interests/1.
:- discontiguous must_draw_up_eu_declaration_of_conformity/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_rules_of_procedure/1.
:- discontiguous must_draw_up_single_declaration/1.
:- discontiguous must_draw_up_single_set_of_technical_documentation/2.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_elect_co_chairs/2.
:- discontiguous must_eliminate_feedback_loop_bias/1.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_enable_oversight_capabilities/1.
:- discontiguous must_enable_representative/2.
:- discontiguous must_encourage_and_facilitate_drawing_up/2.
:- discontiguous must_encourage_codes_of_practice/1.
:- discontiguous must_encourage_facilitate_codes_of_conduct/2.
:- discontiguous must_encourage_review_and_adaptation/1.
:- discontiguous must_end_noncompliance/3.
:- discontiguous must_ensure_adequate_cybersecurity/1.
:- discontiguous must_ensure_adequate_cybersecurity/2.
:- discontiguous must_ensure_adequate_resources/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_broad_access/1.
:- discontiguous must_ensure_competences/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidence_in_performance/1.
:- discontiguous must_ensure_confidentiality/1.
:- discontiguous must_ensure_cooperation_between_sandbox_authorities/1.
:- discontiguous must_ensure_coordination_and_cooperation/2.
:- discontiguous must_ensure_corrective_action/2.
:- discontiguous must_ensure_corrective_action/3.
:- discontiguous must_ensure_efficient_organisation/2.
:- discontiguous must_ensure_empowered_for_coordination/2.
:- discontiguous must_ensure_free_access_for_smes/1.
:- discontiguous must_ensure_immediate_access_to_documentation/2.
:- discontiguous must_ensure_input_data_quality/2.
:- discontiguous must_ensure_open_access/1.
:- discontiguous must_ensure_participation_in_sectoral_group/2.
:- discontiguous must_ensure_representation/1.
:- discontiguous must_ensure_restrictive_measures/1.
:- discontiguous must_ensure_simple_procedures/1.
:- discontiguous must_ensure_single_contact_point/2.
:- discontiguous must_ensure_storage_conditions/2.
:- discontiguous must_ensure_storage_transport_compliance/2.
:- discontiguous must_ensure_subcontractor_meets_requirements/2.
:- discontiguous must_ensure_transparency/2.
:- discontiguous must_enter_consultation/2.
:- discontiguous must_enter_consultations/2.
:- discontiguous must_enter_data_into_eu_database/2.
:- discontiguous must_entitle_access_to_file/2.
:- discontiguous must_entrust_implementation/3.
:- discontiguous must_establish/2.
:- discontiguous must_establish_or_designate/2.
:- discontiguous must_establish_post_market_monitoring_system/2.
:- discontiguous must_establish_quality_management_system/2.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_sandbox/2.
:- discontiguous must_establish_scientific_panel/1.
:- discontiguous must_establish_standing_subgroups/2.
:- discontiguous must_evaluate_and_report/3.
:- discontiguous must_evaluate_best_practices/2.
:- discontiguous must_evaluate_functioning/2.
:- discontiguous must_evaluate_impact/2.
:- discontiguous must_evaluate_national_measure/1.
:- discontiguous must_examine_proposed_changes/2.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_exercise_powers_independently/1.
:- discontiguous must_facilitate_compliance/1.
:- discontiguous must_facilitate_coordination/1.
:- discontiguous must_facilitate_exchange_of_experience/1.
:- discontiguous must_facilitate_involvement/1.
:- discontiguous must_facilitate_standardisation_participation/2.
:- discontiguous must_facilitate_tasks/2.
:- discontiguous must_facilitate_timely_access/2.
:- discontiguous must_facilitate_tools_development/1.
:- discontiguous must_follow_conformity_assessment/2.
:- discontiguous must_give_access_to_logs/2.
:- discontiguous must_give_opportunity_to_be_heard/2.
:- discontiguous must_give_reasons/2.
:- discontiguous must_grant_access_to_data/2.
:- discontiguous must_grant_access_to_models/2.
:- discontiguous must_grant_full_access_to_documentation/2.
:- discontiguous must_grant_source_code_access/2.
:- discontiguous must_have_authorisation/1.
:- discontiguous must_have_competent_personnel/1.
:- discontiguous must_have_confidentiality_procedures/1.
:- discontiguous must_have_legal_personality/1.
:- discontiguous must_have_permanent_availability_of_personnel/1.
:- discontiguous must_have_procedures_accounting_for_provider_characteristics/1.
:- discontiguous must_have_professional_integrity_and_competence/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_have_security_clearance_to_access_documentation/1.
:- discontiguous must_have_sufficient_internal_competences/1.
:- discontiguous must_have_sufficient_personnel/1.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_identify_fundamental_rights_authorities/1.
:- discontiguous must_identify_risks_within_sandbox/1.
:- discontiguous must_immediately_inform/2.
:- discontiguous must_immediately_inform_authorities/2.
:- discontiguous must_immediately_inform_of_assumption_of_functions/2.
:- discontiguous must_implement_cybersecurity_measures/1.
:- discontiguous must_implement_mitigation_measures/2.
:- discontiguous must_impose_restrictions_on_certificate/2.
:- discontiguous must_include_common_principles/1.
:- discontiguous must_include_in_application/2.
:- discontiguous must_include_provisions_on_alerts/1.
:- discontiguous must_include_provisions_on_assistance/1.
:- discontiguous must_indicate_grounds_and_challenge/2.
:- discontiguous must_indicate_identity/2.
:- discontiguous must_inform_ai_office_of_establishment/2.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_all_authorities/1.
:- discontiguous must_inform_and_cooperate/2.
:- discontiguous must_inform_and_request_corrective_measures/3.
:- discontiguous must_inform_applicant_of_refusal/3.
:- discontiguous must_inform_board_and_authorities/2.
:- discontiguous must_inform_board_of_measure/2.
:- discontiguous must_inform_body_of_objections/2.
:- discontiguous must_inform_cessation/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_commission_and_member_states_of_authorisation/2.
:- discontiguous must_inform_commission_and_member_states_of_designation_change/2.
:- discontiguous must_inform_commission_and_member_states_of_evaluation/3.
:- discontiguous must_inform_commission_and_member_states_of_finding/1.
:- discontiguous must_inform_commission_and_member_states_of_required_suspension_or_withdrawal/2.
:- discontiguous must_inform_commission_of_measures/1.
:- discontiguous must_inform_commission_of_shortcoming/2.
:- discontiguous must_inform_commission_of_withdrawal/1.
:- discontiguous must_inform_committee/1.
:- discontiguous must_inform_interaction/2.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_national_authorities/2.
:- discontiguous must_inform_natural_persons/2.
:- discontiguous must_inform_notified_body/2.
:- discontiguous must_inform_notified_body_of_change/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_notifying_authority_of_subcontracting/2.
:- discontiguous must_inform_of_measures_and_objections/2.
:- discontiguous must_inform_of_risk/2.
:- discontiguous must_inform_of_serious_incident/2.
:- discontiguous must_inform_of_unregistered_system/2.
:- discontiguous must_inform_operation/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_providers_of_designation_change/2.
:- discontiguous must_inform_termination/2.
:- discontiguous must_inform_workers/2.
:- discontiguous must_integrate_testing_and_reporting/2.
:- discontiguous must_investigate_competence_doubts/2.
:- discontiguous must_investigate_noncompliance/2.
:- discontiguous must_investigate_serious_incident/2.
:- discontiguous must_issue_supplement_to_certificate/2.
:- discontiguous must_issue_union_technical_documentation_assessment_certificate/2.
:- discontiguous must_justify_equivalent_technical_solution/2.
:- discontiguous must_keep_declaration_at_disposal/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_documentation_available/1.
:- discontiguous must_keep_list_up_to_date/1.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_registration_information_up_to_date/2.
:- discontiguous must_keep_subcontractor_documents_available/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_keep_testing_information_up_to_date/2.
:- discontiguous must_lay_down_penalty_rules/2.
:- discontiguous must_limit_participation_period/1.
:- discontiguous must_lodge_complaint/2.
:- discontiguous must_lodge_technical_documentation_application/2.
:- discontiguous must_maintain_logs_under_financial_services_law/2.
:- discontiguous must_maintain_quality_management_system/1.
:- discontiguous must_maintain_technical_documentation/2.
:- discontiguous must_make_available_documentation/2.
:- discontiguous must_make_available_information_to_integrators/2.
:- discontiguous must_make_declaration_public/1.
:- discontiguous must_make_list_publicly_available/1.
:- discontiguous must_make_publicly_available/1.
:- discontiguous must_make_publicly_available/2.
:- discontiguous must_make_reports_publicly_available/1.
:- discontiguous must_make_subsidiary_list_publicly_available/1.
:- discontiguous must_manage_conflicts_of_interest/1.
:- discontiguous must_mark_outputs/2.
:- discontiguous must_mitigate_significant_risks/1.
:- discontiguous must_monitor_and_evaluate_achievement/2.
:- discontiguous must_monitor_compliance/2.
:- discontiguous must_monitor_operation/2.
:- discontiguous must_not_be_directly_involved_in_ai_lifecycle/1.
:- discontiguous must_not_engage_in_conflicting_activities/1.
:- discontiguous must_not_make_available_until_conformity/2.
:- discontiguous must_not_offer_conformity_assessment_activities/1.
:- discontiguous must_not_place_on_market/2.
:- discontiguous must_not_seek_instructions/1.
:- discontiguous must_not_use_unregistered_system/2.
:- discontiguous must_notify_amendment/2.
:- discontiguous must_notify_authorities/1.
:- discontiguous must_notify_changes/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_and_member_states/2.
:- discontiguous must_notify_commission_annually/2.
:- discontiguous must_notify_commission_of_serious_incident/1.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_decision/3.
:- discontiguous must_notify_delegated_act/2.
:- discontiguous must_notify_identity_of_single_point_of_contact/2.
:- discontiguous must_notify_intended_change/2.
:- discontiguous must_notify_list_of_authorities/2.
:- discontiguous must_notify_market_surveillance_authority_of_fria/2.
:- discontiguous must_notify_penalty_rules/2.
:- discontiguous must_notify_provisional_measures/2.
:- discontiguous must_notify_suspension_or_termination/3.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_obtain_explanation/2.
:- discontiguous must_obtain_informed_consent/2.
:- discontiguous must_obtain_prior_consultation_before_disclosure/2.
:- discontiguous must_obtain_provider_agreement_for_subcontracting/2.
:- discontiguous must_organise_awareness_activities/2.
:- discontiguous must_organise_communication_campaigns/2.
:- discontiguous must_organise_testing/2.
:- discontiguous must_participate_in_coordination_activities/1.
:- discontiguous must_participate_in_standardisation/1.
:- discontiguous must_pay_fine/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_mandate_tasks/1.
:- discontiguous must_perform_mandated_tasks/1.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_tasks_impartially/1.
:- discontiguous must_permit_withdrawal/2.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_prepare_annual_report/1.
:- discontiguous must_preserve_and_make_available_files/2.
:- discontiguous must_provide_audit_report/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_documentation_on_request/2.
:- discontiguous must_provide_exchange_of_knowledge/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_guidance_supervision_support/2.
:- discontiguous must_provide_independent_advice/2.
:- discontiguous must_provide_information/2.
:- discontiguous must_provide_information_and_documentation/2.
:- discontiguous must_provide_information_clearly/2.
:- discontiguous must_provide_information_on_request/1.
:- discontiguous must_provide_information_on_request/2.
:- discontiguous must_provide_instructions_for_use/2.
:- discontiguous must_provide_mandate_copy/2.
:- discontiguous must_provide_necessary_information/1.
:- discontiguous must_provide_priority_access/2.
:- discontiguous must_provide_regulatory_guidance/2.
:- discontiguous must_provide_relevant_information/2.
:- discontiguous must_provide_relevant_information_to_national_competent_authority/2.
:- discontiguous must_provide_standardised_templates/2.
:- discontiguous must_provide_technical_and_administrative_support/2.
:- discontiguous must_provide_technical_expertise_and_advise/2.
:- discontiguous must_provide_testing_information/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_annual_report/1.
:- discontiguous must_publish_assessment/1.
:- discontiguous must_publish_systemic_risk_list/1.
:- discontiguous must_publish_training_content_summary/1.
:- discontiguous must_put_in_place_copyright_policy/1.
:- discontiguous must_put_into_service_without_authorisation/2.
:- discontiguous must_reflect_differences_in_size_and_capacity/1.
:- discontiguous must_refrain_from_incompatible_action/1.
:- discontiguous must_refuse_certificate/2.
:- discontiguous must_register_at_national_level/1.
:- discontiguous must_register_in_eu_database/2.
:- discontiguous must_register_use_in_eu_database/2.
:- discontiguous must_reject_arguments/2.
:- discontiguous must_remain_aware_of_automation_bias/1.
:- discontiguous must_repeal_common_specification/1.
:- discontiguous must_report_annual_fines/2.
:- discontiguous must_report_annually/2.
:- discontiguous must_report_on_resources/2.
:- discontiguous must_report_prohibited_practices/1.
:- discontiguous must_report_regularly/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_serious_incident/3.
:- discontiguous must_report_serious_incident_death/2.
:- discontiguous must_report_to_ecb/2.
:- discontiguous must_report_widespread_infringement/2.
:- discontiguous must_request_authorisation/2.
:- discontiguous must_request_evidence_of_best_efforts/1.
:- discontiguous must_request_only_strictly_necessary_data/1.
:- discontiguous must_require_compliance_and_corrective_action/3.
:- discontiguous must_require_corrective_action/2.
:- discontiguous must_require_corrective_measures/3.
:- discontiguous must_require_separate_verification/1.
:- discontiguous must_require_suspension_or_withdrawal_of_unduly_issued_certificates/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_rights_of_defence/1.
:- discontiguous must_respect_rigour_and_protection/2.
:- discontiguous must_restrict_or_prohibit_or_recall/2.
:- discontiguous must_restrict_suspend_withdraw_designation/2.
:- discontiguous must_restrict_withdraw_or_recall/2.
:- discontiguous must_retain_technical_documentation_on_premises/1.
:- discontiguous must_safeguard_confidentiality/1.
:- discontiguous must_safeguard_confidentiality/2.
:- discontiguous must_safeguard_impartiality/1.
:- discontiguous must_safeguard_independence_objectivity_impartiality/1.
:- discontiguous must_safeguard_objectivity_impartiality/1.
:- discontiguous must_satisfy_cybersecurity_requirements/1.
:- discontiguous must_satisfy_organisational_requirements/1.
:- discontiguous must_seek_to_promote_investment_and_innovation/1.
:- discontiguous must_select_experts/2.
:- discontiguous must_separate_decision_makers/1.
:- discontiguous must_set_out_objectives/1.
:- discontiguous must_set_up_and_maintain_eu_database/2.
:- discontiguous must_share_information/2.
:- discontiguous must_specify_assistance_by_written_agreement/2.
:- discontiguous must_specify_standards_clear_consistent/1.
:- discontiguous must_state_conformity_with_requirements/1.
:- discontiguous must_stop_use_and_discard_outputs/2.
:- discontiguous must_stop_use_on_rejection/2.
:- discontiguous must_submit_amendment_proposals/1.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_reports/2.
:- discontiguous must_submit_application_for_notification/2.
:- discontiguous must_submit_declaration_copy_on_request/2.
:- discontiguous must_submit_final_report/2.
:- discontiguous must_submit_findings/2.
:- discontiguous must_submit_findings_report/2.
:- discontiguous must_submit_progress_report/2.
:- discontiguous must_submit_registration_information/2.
:- discontiguous must_submit_report/2.
:- discontiguous must_supervise_and_enforce/2.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information_within_deadline/2.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_support_cross_border_activities/2.
:- discontiguous must_support_flexibility/1.
:- discontiguous must_support_market_surveillance/2.
:- discontiguous must_support_safeguard_procedure/2.
:- discontiguous must_suspend_or_withdraw_certificate/2.
:- discontiguous must_suspend_use/2.
:- discontiguous must_take_account_of_interests/1.
:- discontiguous must_take_appropriate_measures/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_corrective_actions_or_ensure/2.
:- discontiguous must_take_full_responsibility_for_subcontracted_tasks/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_chapter_3_section_2_requirements/1.
:- discontiguous must_take_into_account_elements/1.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_into_account_sectoral_specificities/1.
:- discontiguous must_take_into_account_sme_interests/2.
:- discontiguous must_take_necessary_steps/1.
:- discontiguous must_take_out_liability_insurance/1.
:- discontiguous must_take_provisional_measures/2.
:- discontiguous must_take_steps_to_comply_by/2.
:- discontiguous must_technically_allow_logging/1.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_track_document_and_report_serious_incidents/2.
:- discontiguous must_translate_declaration/2.
:- discontiguous must_transmit_information_to_board/1.
:- discontiguous must_treat_as_confidential/1.
:- discontiguous must_treat_information_confidentially/1.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_undergo_new_conformity_assessment/1.
:- discontiguous must_understand_capacities_and_limitations/1.
:- discontiguous must_update_documentation/1.
:- discontiguous must_update_fria/2.
:- discontiguous must_update_guidelines/1.
:- discontiguous must_use_in_accordance_with_instructions/2.
:- discontiguous must_use_simplified_form/1.
:- discontiguous must_use_transparency_information/2.
:- discontiguous must_utilise_communication_channels/2.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_compliance/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_documentation/1.
:- discontiguous must_verify_design_and_monitoring/2.
:- discontiguous must_verify_documentation/2.
:- discontiguous must_verify_qms_compliance/2.
:- discontiguous must_withdraw_authorisation/2.
:- discontiguous must_withdraw_designation_on_cessation/2.
:- discontiguous must_withdraw_measure/1.
:- discontiguous national_data_protection_authority/1.
:- discontiguous necessary_and_proportionate/2.
:- discontiguous new_reasons_since_designation/1.
:- discontiguous no_administrative_fines_if_good_faith/1.
:- discontiguous no_fines_if_other_authorities_involved/1.
:- discontiguous no_longer_poses_significant_risks/1.
:- discontiguous no_objection_raised/1.
:- discontiguous no_objection_raised_within_days/2.
:- discontiguous no_objection_within_15_days/1.
:- discontiguous non_compliance_not_restricted_to_national_territory/1.
:- discontiguous non_compliance_with_art_5/1.
:- discontiguous noncompliance_persists/1.
:- discontiguous notification_based_on_accreditation/1.
:- discontiguous notification_contains_minimum_information/1.
:- discontiguous notification_includes/2.
:- discontiguous notification_includes_necessary_information/1.
:- discontiguous notification_must_include_details/1.
:- discontiguous notified_body/1.
:- discontiguous notified_body_number_affixed_by_body_or_under_instructions/1.
:- discontiguous notified_body_number_in_promotional_material/1.
:- discontiguous notified_of_use/2.
:- discontiguous notified_to_data_protection_authority/1.
:- discontiguous notified_to_market_surveillance_authority/1.
:- discontiguous objection_period/2.
:- discontiguous objection_raised/1.
:- discontiguous objection_raised/2.
:- discontiguous objective_or_effect_materially_distorts_behaviour/1.
:- discontiguous obligation_fulfilled_by_participation/2.
:- discontiguous offending_risk_assessment_system/1.
:- discontiguous offers_mitigation_commitments/2.
:- discontiguous open_source_exception_applies_to_obligations/1.
:- discontiguous open_source_exception_art_54_applies/1.
:- discontiguous open_source_third_party_exception_applies/1.
:- discontiguous operation_sufficiently_transparent/2.
:- discontiguous operator/1.
:- discontiguous operator_fails_corrective_action/2.
:- discontiguous operator_notified_body_infringement/1.
:- discontiguous other_changes_procedures_apply/1.
:- discontiguous overall_residual_risk_acceptable/1.
:- discontiguous oversight_measures_commensurate/1.
:- discontiguous participation_in_standardisation/1.
:- discontiguous permanent_member_of_advisory_forum/1.
:- discontiguous permitted_objective/1.
:- discontiguous permitted_real_time_remote_biometric_identification/2.
:- discontiguous permitted_testing_in_real_world_conditions_outside_sandbox/2.
:- discontiguous permitted_testing_timing/2.
:- discontiguous personal_data_necessary_for_collecting_and_processing/1.
:- discontiguous polygraph_system/1.
:- discontiguous post_market_monitoring_plan_in_technical_documentation/1.
:- discontiguous post_market_monitoring_system_applies/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_through_common_specification/1.
:- discontiguous presumed_conformity_through_harmonised_standard/2.
:- discontiguous presumed_conformity_with_notified_body_requirements/1.
:- discontiguous priority_access_to_sandbox/1.
:- discontiguous procedural_rights_apply/1.
:- discontiguous product_harmonisation_legislation_applies/1.
:- discontiguous product_manufacturer_becomes_provider/2.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_crime_risk_assessment/1.
:- discontiguous prohibited_decision_based_solely_on_output/1.
:- discontiguous prohibited_emotion_inference/1.
:- discontiguous prohibited_exploitation_of_vulnerabilities/1.
:- discontiguous prohibited_facial_recognition_database_creation/1.
:- discontiguous prohibited_practice_infringement/1.
:- discontiguous prohibited_real_time_remote_biometric_identification/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_subliminal_manipulation/1.
:- discontiguous prohibited_testing_in_real_world_conditions_outside_sandbox/2.
:- discontiguous prohibited_untargeted_use/1.
:- discontiguous provenance/2.
:- discontiguous provided_by_deployer/1.
:- discontiguous provider_built_in_oversight/1.
:- discontiguous provider_complied_with_obligations/1.
:- discontiguous provider_identified_deployer_oversight/1.
:- discontiguous providers_remain_liable/1.
:- discontiguous provides_model/2.
:- discontiguous provisional_measure_deemed_justified/1.
:- discontiguous public_benefit_eligibility_system/1.
:- discontiguous published_for_public_interest/1.
:- discontiguous purpose_of_regulation/1.
:- discontiguous qualified_alert/1.
:- discontiguous qualified_alert_from_scientific_panel/1.
:- discontiguous quality_management_system_deemed_fulfilled/1.
:- discontiguous quality_management_system_documented/1.
:- discontiguous quality_management_system_includes/2.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous real_world_testing_registered/2.
:- discontiguous reason_to_suspect/2.
:- discontiguous reasoned_request_from_competent_authority/1.
:- discontiguous reasoned_request_from_provider/1.
:- discontiguous recruitment_system/1.
:- discontiguous references/2.
:- discontiguous registered_without_undue_delay/1.
:- discontiguous registration_in_secure_non_public_section/1.
:- discontiguous registration_includes_only_annex_info/1.
:- discontiguous registration_information_item/2.
:- discontiguous regulation_182_2011_art_5_applies/1.
:- discontiguous regulation_applies_to/1.
:- discontiguous regulation_does_not_apply_to/1.
:- discontiguous regulation_does_not_apply_to_activity/1.
:- discontiguous regulation_does_not_apply_to_obligations/1.
:- discontiguous regulation_does_not_apply_to_system/1.
:- discontiguous regulation_does_not_preclude/1.
:- discontiguous regulation_without_prejudice_to/1.
:- discontiguous relevant_change/1.
:- discontiguous relevant_performance_data/2.
:- discontiguous relevant_residual_risk_acceptable/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous report_must_be_public/1.
:- discontiguous report_must_include_assessment/1.
:- discontiguous report_must_pay_attention/2.
:- discontiguous report_on_real_time_remote_biometric_identification/2.
:- discontiguous request_indicates_fines/1.
:- discontiguous request_sets_period/1.
:- discontiguous request_specifies_information_required/1.
:- discontiguous request_states_legal_basis/1.
:- discontiguous required_risk_management_system/1.
:- discontiguous residual_risk_acceptable/1.
:- discontiguous respects_degree_of_rigour/2.
:- discontiguous right_to_explanation_applies/1.
:- discontiguous risk_eliminated/2.
:- discontiguous risk_equivalent_or_greater/1.
:- discontiguous risk_management_may_be_part_of_existing_procedures/1.
:- discontiguous risk_management_measure_identified/1.
:- discontiguous risk_management_measures_due_consideration_combined_requirements/1.
:- discontiguous risk_management_measures_ensure_elimination_or_reduction/1.
:- discontiguous risk_management_measures_ensure_mitigation_control/1.
:- discontiguous risk_management_measures_ensure_provision_of_information/1.
:- discontiguous risk_management_measures_ensure_training_to_deployers/1.
:- discontiguous risk_management_process_continuous_iterative/1.
:- discontiguous risk_management_process_planned_throughout_lifecycle/1.
:- discontiguous risk_management_process_requires_regular_review/1.
:- discontiguous risk_management_step_adoption_measures/1.
:- discontiguous risk_management_step_estimation_evaluation/1.
:- discontiguous risk_management_step_evaluation_post_market/1.
:- discontiguous risk_management_step_identification_analysis/1.
:- discontiguous risk_management_system/1.
:- discontiguous risk_management_system_documented/1.
:- discontiguous risk_management_system_established/1.
:- discontiguous risk_management_system_implemented/1.
:- discontiguous risk_management_system_maintained/1.
:- discontiguous risk_presenting_system/1.
:- discontiguous risk_to_fundamental_rights/1.
:- discontiguous risk_to_health_or_safety/1.
:- discontiguous risks_cannot_be_eliminated/1.
:- discontiguous risks_concerned_only_reasonably_mitigable/1.
:- discontiguous risks_identified_pursuant_to_art_9_par_2_pnt_a/1.
:- discontiguous risks_to_fundamental_rights_identified/1.
:- discontiguous same_provider_develops_model_and_system/2.
:- discontiguous sandbox_established_jointly/1.
:- discontiguous sandbox_facilitates_cross_border_cooperation/1.
:- discontiguous sandbox_facilitates_development/1.
:- discontiguous sandbox_limited_time/1.
:- discontiguous sandbox_may_include_real_world_testing/1.
:- discontiguous sandbox_not_affect_other_sandboxes/1.
:- discontiguous sandbox_not_affect_supervisory_powers/1.
:- discontiguous sandbox_objective_best_practices/1.
:- discontiguous sandbox_objective_innovation/1.
:- discontiguous sandbox_objective_legal_certainty/1.
:- discontiguous sandbox_objective_market_access/1.
:- discontiguous sandbox_objective_regulatory_learning/1.
:- discontiguous sandbox_operational_by/2.
:- discontiguous sandbox_plan_agreed/2.
:- discontiguous sandbox_provides_controlled_environment/1.
:- discontiguous satisfied_requirements/2.
:- discontiguous schengen_information_system/1.
:- discontiguous section_a_information/1.
:- discontiguous section_b_information/1.
:- discontiguous section_c_information/1.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous sectoral_qms_includes/2.
:- discontiguous sensitive_operational_data_of_law_enforcement/1.
:- discontiguous separate_verification_exception_applies/1.
:- discontiguous serious_incident_reporting_limited/1.
:- discontiguous serious_incident_reporting_limited_medical/1.
:- discontiguous simplified_quality_management_permitted/1.
:- discontiguous single_information_platform/1.
:- discontiguous social_score_leads_to_detrimental_treatment/1.
:- discontiguous source_code_access_conditions_met/1.
:- discontiguous special_category_data_processing_conditions_met/1.
:- discontiguous staff_of/2.
:- discontiguous standardised_templates/1.
:- discontiguous strictly_necessary/2.
:- discontiguous student_monitoring_system/1.
:- discontiguous subject_to_internal_risk_management_requirements/1.
:- discontiguous subject_to_other_union_harmonisation_legislation/1.
:- discontiguous subject_to_sectoral_qms_obligations/1.
:- discontiguous subjects_gave_informed_consent/1.
:- discontiguous sufficient_reason_to_consider_high_risk/2.
:- discontiguous sufficient_reason_to_consider_noncompliance/2.
:- discontiguous sufficient_reason_to_consider_risk/2.
:- discontiguous supervises_fundamental_rights_obligations/1.
:- discontiguous supplement_valid_if_certificate_valid/2.
:- discontiguous supports_human_assessment/1.
:- discontiguous supports_human_assessment_of_criminal_involvement/1.
:- discontiguous suspect_offence/2.
:- discontiguous system_complies_with_section_2/1.
:- discontiguous systemic_risk_classification_applies/1.
:- discontiguous systemic_risk_concern/1.
:- discontiguous systemic_risk_designation_criteria/1.
:- discontiguous systemic_risk_model/1.
:- discontiguous tacit_extension_applies/1.
:- discontiguous takes_into_account_consequences/1.
:- discontiguous takes_into_account_elements/1.
:- discontiguous takes_into_account_nature_of_situation/1.
:- discontiguous technical_documentation/1.
:- discontiguous technical_documentation_drawn_up/1.
:- discontiguous technical_documentation_for_gpai_model/1.
:- discontiguous technical_documentation_for_gpai_model_with_systemic_risk/1.
:- discontiguous term_of_office/2.
:- discontiguous tested_for_risk_management/1.
:- discontiguous tested_in_other_member_states/1.
:- discontiguous testing_carried_out_against_defined_metrics/1.
:- discontiguous testing_duration_within_limit/1.
:- discontiguous testing_ensures_compliance_with_section_2/1.
:- discontiguous testing_ensures_consistent_performance/1.
:- discontiguous testing_identifies_appropriate_measures/1.
:- discontiguous testing_information/1.
:- discontiguous testing_may_include_real_world_conditions/1.
:- discontiguous testing_performed_before_placing_on_market_or_putting_into_service/1.
:- discontiguous testing_performed_throughout_development/1.
:- discontiguous transparency_information/1.
:- discontiguous under_responsibility/2.
:- discontiguous unduly_issued/1.
:- discontiguous union_harmonisation_legislation/1.
:- discontiguous untargeted_scraping_of_facial_images/1.
:- discontiguous urgency_situation/1.
:- discontiguous use_not_restricted_to_national_territory/2.
:- discontiguous use_of_system/2.
:- discontiguous verifies_design_and_monitoring_consistency/1.
:- discontiguous verifies_quality_management_system_compliance/1.
:- discontiguous victimisation_risk_assessment_system/1.
:- discontiguous visa_information_system/1.
:- discontiguous voluntary_application_of_requirements/1.
:- discontiguous voluntary_application_of_specific_requirements/1.

% --- input slots: assert facts against these at runtime ---
:- dynamic ability_to_act_diligently/1.
:- dynamic acceptable_use_policies/1.
:- dynamic accompanies/2.
:- dynamic accreditation_certificate_exists/1.
:- dynamic achieves_equivalent_level_of_protection/1.
:- dynamic act_concerns/2.
:- dynamic acting_on_behalf_of/2.
:- dynamic acts_contrary_to_obligations/1.
:- dynamic adequate_safeguards_fundamental_rights/1.
:- dynamic adopted_pursuant_to/2.
:- dynamic adoption_of_delegated_act/1.
:- dynamic adverse_legal_effect_decision/1.
:- dynamic advisory_forum/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic annex_3_decision_system/1.
:- dynamic annex_3_point_1_a_system/1.
:- dynamic annex_3_point_2_system/1.
:- dynamic annex_3_point_6_system/1.
:- dynamic annex_3_point_7_system/1.
:- dynamic annex_3_system/1.
:- dynamic annual_report_on_activities/1.
:- dynamic applied_all_common_specifications/1.
:- dynamic applied_all_harmonised_standards/1.
:- dynamic applied_common_specifications/1.
:- dynamic applied_harmonised_standards/1.
:- dynamic architecture/1.
:- dynamic authorisation_rejected/1.
:- dynamic authorisation_requested_without_undue_delay/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_to_represent/2.
:- dynamic based_on_specific_union_or_national_law/1.
:- dynamic bias_detection_correction_impossible_otherwise/1.
:- dynamic bias_mitigation_measures_identified/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic board_chair/1.
:- dynamic board_invitee/1.
:- dynamic board_rules_of_procedure/1.
:- dynamic board_standing_subgroup/1.
:- dynamic board_temporary_subgroup/1.
:- dynamic cannot_reach_provider/2.
:- dynamic ce_marking/1.
:- dynamic certified_under_cybersecurity_scheme/1.
:- dynamic co_chair_of_advisory_forum/1.
:- dynamic commission/1.
:- dynamic commission_considers_measure_contrary/1.
:- dynamic commission_decision_equivalent_capabilities/1.
:- dynamic common_specification/1.
:- dynamic common_specification_covers_requirements/1.
:- dynamic common_specifications_available/0.
:- dynamic complaint_handled_according_to_procedures/1.
:- dynamic complaint_taken_into_account/1.
:- dynamic concerns/2.
:- dynamic concise_complete_correct_clear/1.
:- dynamic concluded_confidentiality_arrangement/2.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_body_third_country/1.
:- dynamic contains_accuracy_robustness_cybersecurity/2.
:- dynamic contains_ai_system_identification/1.
:- dynamic contains_computational_hardware_needs/2.
:- dynamic contains_conformity_statement/1.
:- dynamic contains_detailed_description_of_elements/1.
:- dynamic contains_eu_declaration_of_conformity/1.
:- dynamic contains_eu_declaration_of_conformity_copy/1.
:- dynamic contains_expected_lifetime/2.
:- dynamic contains_explanation_capabilities/2.
:- dynamic contains_foreseeable_risks/2.
:- dynamic contains_general_description/1.
:- dynamic contains_harmonised_standard_references/1.
:- dynamic contains_harmonised_standards_list/1.
:- dynamic contains_human_oversight_measures/2.
:- dynamic contains_identity_and_contact/2.
:- dynamic contains_input_specifications/2.
:- dynamic contains_intended_purpose/2.
:- dynamic contains_issuance_details/1.
:- dynamic contains_lifecycle_changes_description/1.
:- dynamic contains_log_mechanism_description/2.
:- dynamic contains_maintenance_and_care/2.
:- dynamic contains_monitoring_functioning_control_info/1.
:- dynamic contains_notified_body_details/1.
:- dynamic contains_output_interpretation_info/2.
:- dynamic contains_performance_metrics_description/1.
:- dynamic contains_performance_on_persons/2.
:- dynamic contains_personal_data_compliance_statement/1.
:- dynamic contains_post_market_evaluation_system_description/1.
:- dynamic contains_pre_determined_changes/2.
:- dynamic contains_provider_details/1.
:- dynamic contains_risk_management_system_description/1.
:- dynamic contains_sole_responsibility_statement/1.
:- dynamic contains_technical_interpretation_measures/2.
:- dynamic continues_learning_after_placement/1.
:- dynamic covered_by_union_harmonisation_legislation/1.
:- dynamic critical_infrastructure/1.
:- dynamic cumulative_computation_exceeds_threshold/1.
:- dynamic curation_methodologies/1.
:- dynamic cybersecurity_certificate_covers_requirements/1.
:- dynamic cybersecurity_scheme_reference_published/1.
:- dynamic data_deleted_after_correction_or_retention/1.
:- dynamic data_not_transmitted_to_other_parties/1.
:- dynamic data_provenance/1.
:- dynamic data_secured_and_protected/1.
:- dynamic data_transfer_safeguards_implemented/1.
:- dynamic data_type/1.
:- dynamic decision_based_solely_on_output/1.
:- dynamic deep_fake/1.
:- dynamic deployer/1.
:- dynamic deployer_informed_and_agreement_concluded/2.
:- dynamic description_of_training_and_testing_kept/1.
:- dynamic designated_for_period/2.
:- dynamic designated_under_other_union_harmonisation_legislation/1.
:- dynamic detects_decision_patterns/1.
:- dynamic disclosure_jeopardises_public_national_security/1.
:- dynamic distribution_methods/1.
:- dynamic distributor/1.
:- dynamic documentary_evidence_provided/2.
:- dynamic downstream_provider/1.
:- dynamic effective_monitoring_mechanisms/1.
:- dynamic employer_deployer/1.
:- dynamic empowered_for_coordination/1.
:- dynamic enables_appropriate_use/2.
:- dynamic enables_interpretation_of_output/2.
:- dynamic ensures_equivalent_compliance/1.
:- dynamic established_in_member_state/2.
:- dynamic established_in_third_country/1.
:- dynamic european_data_protection_supervisor/1.
:- dynamic evaluation_finds_high_risk/2.
:- dynamic exchanged_on_confidential_basis/2.
:- dynamic exercises_control_over_input_data/2.
:- dynamic existing_designation_documents_exist/1.
:- dynamic existing_post_market_monitoring_system/1.
:- dynamic expert/1.
:- dynamic experts_designated_by_member_states/1.
:- dynamic financial_institution_deployer/1.
:- dynamic financial_institution_subject_to_union_financial_services_law/1.
:- dynamic fine_imposed/2.
:- dynamic floating_point_operation/1.
:- dynamic for_substantial_public_interest/1.
:- dynamic free_and_open_source_licence/1.
:- dynamic fulfils_eligibility_conditions/1.
:- dynamic fulfils_selection_criteria/1.
:- dynamic functionally_separate_processing_environment/1.
:- dynamic fundamental_rights_impact_assessment_completed/1.
:- dynamic general_purpose_ai_model/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic guidelines_cover_definition_of_ai_system/1.
:- dynamic guidelines_cover_prohibited_practices/1.
:- dynamic guidelines_cover_relationship_with_union_law/1.
:- dynamic guidelines_cover_requirements_and_obligations/1.
:- dynamic guidelines_cover_substantial_modification/1.
:- dynamic guidelines_cover_transparency_obligations/1.
:- dynamic guidelines_pay_attention_to_smes/1.
:- dynamic guidelines_take_account_of_state_of_art/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_does_not_comply_with_request/1.
:- dynamic harmonised_standard_insufficiently_addresses_fundamental_rights/1.
:- dynamic harmonised_standard_not_delivered_in_time/1.
:- dynamic harmonised_standard_published_with_restriction/1.
:- dynamic harmonised_standard_reference_expected/1.
:- dynamic harmonised_standard_reference_published/1.
:- dynamic harmonised_standard_request_not_accepted/1.
:- dynamic harmonised_standards_exist/0.
:- dynamic has_grounds_to_consider_infringement/2.
:- dynamic has_identified_serious_incident/2.
:- dynamic has_partner_or_linked_enterprise/1.
:- dynamic has_reason_to_consider_risk/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_under_annex_1/1.
:- dynamic implementing_act/2.
:- dynamic importer/1.
:- dynamic improves_result_of_human_activity/1.
:- dynamic in_appropriate_digital_format/1.
:- dynamic independent_from_providers/1.
:- dynamic inform_member_state/3.
:- dynamic informed_consent/1.
:- dynamic initial_identification_of_potential_suspect/1.
:- dynamic input_data/1.
:- dynamic input_format/1.
:- dynamic input_modality/1.
:- dynamic instructions_for_use/1.
:- dynamic integrable_system_types/1.
:- dynamic intended_for_law_enforcement_immigration_asylum_or_union/1.
:- dynamic intended_for_use_by_public_authorities/1.
:- dynamic intended_purpose/1.
:- dynamic intended_tasks/1.
:- dynamic interaction_with_external_hardware_software/1.
:- dynamic international_cooperation_framework/1.
:- dynamic involved_in_application/1.
:- dynamic large_scale_it_system_component/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic law_enforcement_border_control_immigration_asylum_authority/1.
:- dynamic law_enforcement_migration_asylum_border/1.
:- dynamic law_enforcement_purpose/1.
:- dynamic lawyer_duly_authorised/1.
:- dynamic legal_person/1.
:- dynamic legal_representative_in_union/1.
:- dynamic liability_assumed_by_member_state/1.
:- dynamic localisation_of_suspect/1.
:- dynamic made_available_on_union_market/2.
:- dynamic making_available_on_market/1.
:- dynamic manufacturer_opt_out_allowed/1.
:- dynamic market_surveillance_authority/1.
:- dynamic market_surveillance_subgroup/1.
:- dynamic materially_influences_decision_outcome/1.
:- dynamic maximum_input_size/1.
:- dynamic maximum_output_size/1.
:- dynamic medical_or_safety_reason/1.
:- dynamic meets_conditions_of_article_51/1.
:- dynamic meets_notification_requirements/1.
:- dynamic meets_requirements_art_31/1.
:- dynamic member_of_advisory_forum/1.
:- dynamic member_state/1.
:- dynamic member_state_fails_corrective_measures/1.
:- dynamic microenterprise/1.
:- dynamic military_defence_national_security_purpose/1.
:- dynamic mitigation_measures_adopted/1.
:- dynamic model_licence/1.
:- dynamic must_inform_of_risk/3.
:- dynamic must_inform_of_serious_incident/3.
:- dynamic must_issue_standardisation_requests/1.
:- dynamic must_lodge_application/2.
:- dynamic must_treat_information_confidentially/2.
:- dynamic narrow_procedural_task/1.
:- dynamic national_competent_authority/1.
:- dynamic national_measure_justified/1.
:- dynamic national_measure_unjustified/1.
:- dynamic natural_person/1.
:- dynamic non_compliance_attributed_to_shortcomings/1.
:- dynamic non_compliant_general_purpose_ai_system/1.
:- dynamic non_personal_data/1.
:- dynamic notified/1.
:- dynamic notifying_authorities_subgroup/1.
:- dynamic notifying_authority/1.
:- dynamic number_of_parameters/1.
:- dynamic obtained_in_investigation/2.
:- dynamic offence_in_annex_2/1.
:- dynamic offers_conformity_assessment_activities/1.
:- dynamic only_authorised_persons_access/1.
:- dynamic only_authorised_persons_access_personal_data/1.
:- dynamic open_source_exception_applies/1.
:- dynamic originally_collected_data_shared_permitted/1.
:- dynamic output_format/1.
:- dynamic output_modality/1.
:- dynamic parameters_publicly_available/1.
:- dynamic particular_expertise_in_ai/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_conformity_assessment_on/2.
:- dynamic performs_profiling/1.
:- dynamic personal_data/1.
:- dynamic personal_data_protected_and_deleted/1.
:- dynamic personal_non_professional_activity/1.
:- dynamic placed_on_market_or_put_into_service_before/2.
:- dynamic placing_on_market/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic post_remote_biometric_identification_deployer/1.
:- dynamic pre_determined_change/1.
:- dynamic preparatory_task_for_annex_3/1.
:- dynamic prevention_of_threat/1.
:- dynamic processing_logs_kept/1.
:- dynamic processing_no_affect_on_data_subject_rights/1.
:- dynamic processing_no_measures_or_decisions_affecting_data_subjects/1.
:- dynamic product_covered_by_annex_1/1.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_manufacturer/1.
:- dynamic profiling/1.
:- dynamic provided_by/2.
:- dynamic provider/1.
:- dynamic provides/2.
:- dynamic public_authority/1.
:- dynamic public_authority_deployer/1.
:- dynamic publicly_accessible_space/1.
:- dynamic punishable_by_four_years/1.
:- dynamic putting_into_service/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_approved/2.
:- dynamic real_world_testing_plan/1.
:- dynamic real_world_testing_plan_submitted/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasons_to_doubt_competence_or_fulfilment/1.
:- dynamic recall_of_ai_system/1.
:- dynamic recall_procedure_established/1.
:- dynamic records_include_necessity_reasoning/1.
:- dynamic reference_to_committee_procedure/1.
:- dynamic registered_in_eu_database/1.
:- dynamic registered_office_or_branch_in_union/1.
:- dynamic registration/1.
:- dynamic release_date/1.
:- dynamic relevant_accessible_comprehensible/2.
:- dynamic relevant_changes_occur/1.
:- dynamic relevant_software_versions/1.
:- dynamic remote/1.
:- dynamic request_corrective_measures/3.
:- dynamic request_for_information/1.
:- dynamic request_from_commission/2.
:- dynamic requires_conformity_assessment/1.
:- dynamic requires_third_party_conformity_assessment/1.
:- dynamic response_mechanisms_to_mitigate_risks/1.
:- dynamic restricted_section_of_eu_database/1.
:- dynamic risk/1.
:- dynamic rules_of_procedure/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_product/2.
:- dynamic sandbox_created_data_not_shared/1.
:- dynamic sandbox_plan/1.
:- dynamic scientific_panel/1.
:- dynamic scientific_research_and_development_purpose/1.
:- dynamic security_privacy_measures_applied/1.
:- dynamic sensitive_information/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_operational_data_excluded_from_publication/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_reported/2.
:- dynamic significant_risk_of_harm/1.
:- dynamic single_contact_point/1.
:- dynamic sme/1.
:- dynamic sme_startup/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic stakeholder_with_recognised_expertise_in_ai/1.
:- dynamic start_up/1.
:- dynamic subject/1.
:- dynamic subject_to_significant_design_changes/1.
:- dynamic substantial_modification/1.
:- dynamic substantial_modification_occurred/1.
:- dynamic summary_published_on_website/1.
:- dynamic supervised_within/2.
:- dynamic suspension_or_termination_notified/2.
:- dynamic system_output_reversible/1.
:- dynamic systemic_risk/1.
:- dynamic targeted_search_investigation/1.
:- dynamic targeted_search_victims/1.
:- dynamic technical_limitations_on_reuse/1.
:- dynamic technical_means_for_integration/1.
:- dynamic testing_data/1.
:- dynamic testing_data_info/1.
:- dynamic testing_effectively_overseen/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_in_real_world_conditions_outside_sandbox/1.
:- dynamic trained_and_tested_on_relevant_data/1.
:- dynamic training_data/1.
:- dynamic training_data_info/1.
:- dynamic unable_to_conclude_investigation/2.
:- dynamic union_agreement_third_country/1.
:- dynamic union_institution_body_office_or_agency/1.
:- dynamic untargeted_use/1.
:- dynamic urgency_applies/1.
:- dynamic used_by/2.
:- dynamic uses_training_of_ai_models/1.
:- dynamic validation_data/1.
:- dynamic validation_data_info/1.
:- dynamic validation_data_set/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic within_30_days_for_art_5/1.
:- dynamic within_60_days_for_art_5/1.
:- dynamic within_six_months_of_notification/1.
:- dynamic within_three_months_of_notification/1.

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
declared(adverse_legal_effect_decision/1, 'decision producing adverse legal effect based solely on system output', 'reconciled').
declared(annex_3_point_1_a_system/1, 'high-risk AI system referred to in Annex III point 1(a)', 'reconciled').
declared(annex_3_point_2_system/1, 'high-risk AI system listed in Annex III point 2', 'reconciled').
declared(bias_mitigation_measures_identified/1, 'measures to detect, prevent and mitigate biases are identified', 'reconciled').
declared(contains_eu_declaration_of_conformity/1, 'documentation includes a copy of the EU declaration of conformity', 'reconciled').
declared(established_in_third_country/1, 'established in third country', 'reconciled').
declared(evaluation_finds_high_risk/2, 'evaluation finds AI system is high-risk', 'reconciled').
declared(experts_designated_by_member_states/1, 'experts designated by member states', 'reconciled').
declared(extension_of_scope/1, 'extension of scope', 'reconciled').
declared(fine_cap/2, 'maximum fine for an infringement', 'reconciled').
declared(for_substantial_public_interest/1, 'for substantial public interest', 'reconciled').
declared(free_and_open_source_licence/1, 'released under free and open-source licence', 'reconciled').
declared(high_risk_ai_system/1, 'AI system listed in Annex III', 'reconciled').
declared(human_oversight_aims_to_prevent_risks/1, 'human oversight aims to prevent or minimise risks', 'reconciled').
declared(involved_in_application/1, 'involved in application', 'reconciled').
declared(law_enforcement_migration_asylum_border/1, 'system in areas of law enforcement, migration, asylum and border control management', 'reconciled').
declared(made_available_on_union_market/2, 'made available on union market', 'reconciled').
declared(must_comply_with_registration/2, 'authorised representative must comply with registration obligations', 'reconciled').
declared(must_document_impartiality_structure/1, 'notified body must document a structure to safeguard impartiality', 'reconciled').
declared(must_immediately_inform/2, 'entity must immediately inform others', 'reconciled').
declared(must_inform_commission_and_member_states/2, 'Member State must inform Commission and other Member States', 'reconciled').
declared(must_prepare_annual_report/1, 'Commission must publish annual report on use', 'reconciled').
declared(must_report_serious_incident/2, 'provider must report serious incident to market surveillance authority', 'reconciled').
declared(must_take_corrective_actions/2, 'provider must take necessary corrective actions and provide information', 'reconciled').
declared(offers_conformity_assessment_activities/1, 'offers conformity assessment activities', 'reconciled').
declared(only_authorised_persons_access/1, 'only authorised persons have access with confidentiality obligations', 'reconciled').
declared(open_source_exception_applies/1, 'exception for free and open-source models applies', 'reconciled').
declared(parameters_publicly_available/1, 'parameters publicly available', 'reconciled').
declared(presumed_conformity/1, 'system or model presumed to conform to requirements', 'reconciled').
declared(requires_conformity_assessment/1, 'required to undergo third-party conformity assessment', 'reconciled').
declared(residual_risk_acceptable/1, 'residual risk judged acceptable', 'reconciled').
declared(risk_presenting_system/1, 'high-risk AI system presenting a risk under Article 79(1)', 'reconciled').
declared(sandbox_may_include_real_world_testing/1, 'sandbox may include testing in real world conditions', 'reconciled').
declared(supervised_within/2, 'testing is supervised within a sandbox', 'reconciled').
declared(systemic_risk_classification_applies/1, 'general-purpose AI model classified as having systemic risk', 'reconciled').
declared(tested_for_risk_management/1, 'tested to identify risk management measures', 'reconciled').
alias(produces_adverse_legal_effect/1, adverse_legal_effect_decision/1).
alias(referred_to_in_annex_3_point_1_a/1, annex_3_point_1_a_system/1).
alias(system_listed_under_point_2_of_annex_3/1, annex_3_point_2_system/1).
alias(bias_mitigation_measures_required/1, bias_mitigation_measures_identified/1).
alias(eu_declaration_of_conformity_accompanies/1, contains_eu_declaration_of_conformity/1).
alias(accompanied_by_eu_declaration_of_conformity/1, contains_eu_declaration_of_conformity/1).
alias(established_under_third_country_law/1, established_in_third_country/1).
alias(finds_risk_after_evaluation/2, evaluation_finds_high_risk/2).
alias(designated_representatives_of_member_states/1, experts_designated_by_member_states/1).
alias(extension_of_scope_applies/1, extension_of_scope/1).
alias(fine_amount_cap/2, fine_cap/2).
alias(condition_substantial_public_interest/1, for_substantial_public_interest/1).
alias(released_under_free_open_source_licence/1, free_and_open_source_licence/1).
alias(high_risk_ai_system_listed_in_annex_3/1, high_risk_ai_system/1).
alias(annex_3_system/1, high_risk_ai_system/1).
alias(annex_3_high_risk_ai_system/1, high_risk_ai_system/1).
alias(oversight_aims_to_prevent_or_minimise_risks/1, human_oversight_aims_to_prevent_risks/1).
alias(involved_in_application_of_regulation/1, involved_in_application/1).
alias(law_enforcement_migration_asylum_border_system/1, law_enforcement_migration_asylum_border/1).
alias(placed_on_market_or_made_available_in/2, made_available_on_union_market/2).
alias(must_comply_with_registration_obligations/2, must_comply_with_registration/2).
alias(must_implement_impartiality_structure/1, must_document_impartiality_structure/1).
alias(immediately_inform/2, must_immediately_inform/2).
alias(must_notify_commission_and_member_states/2, must_inform_commission_and_member_states/2).
alias(must_publish_annual_report/1, must_prepare_annual_report/1).
alias(must_report_serious_incidents/2, must_report_serious_incident/2).
alias(must_take_corrective_action/2, must_take_corrective_actions/2).
alias(concerns_conformity_assessment_activities/1, offers_conformity_assessment_activities/1).
alias(description_of_conformity_assessment_activities/1, offers_conformity_assessment_activities/1).
alias(only_authorised_persons_have_access/1, only_authorised_persons_access/1).
alias(free_and_open_source_exception/1, open_source_exception_applies/1).
alias(parameters_made_publicly_available/1, parameters_publicly_available/1).
alias(presumed_conformity_with_requirements/1, presumed_conformity/1).
alias(requires_third_party_conformity_assessment/1, requires_conformity_assessment/1).
alias(overall_residual_risk_acceptable/1, residual_risk_acceptable/1).
alias(ai_system_presenting_risk/1, risk_presenting_system/1).
alias(testing_may_include_real_world_conditions/1, sandbox_may_include_real_world_testing/1).
alias(supervised_within_sandbox/2, supervised_within/2).
alias(advising_on_classification_systemic_risk/1, systemic_risk_classification_applies/1).
alias(general_purpose_ai_model_with_systemic_risk/1, systemic_risk_classification_applies/1).
alias(tested_to_identify_risk_management_measures/1, tested_for_risk_management/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(purpose_of_regulation/1, 'purpose of the AI Act', 'celex:32024R1689/oj#art_1').
declared(lays_down_harmonised_rules/1, 'regulation lays down harmonised rules for a domain', 'celex:32024R1689/oj#art_1').
declared(lays_down_prohibitions/1, 'regulation lays down prohibitions of certain AI practices', 'celex:32024R1689/oj#art_1').
declared(lays_down_requirements/1, 'regulation lays down specific requirements for high-risk AI systems', 'celex:32024R1689/oj#art_1').
declared(lays_down_transparency_rules/1, 'regulation lays down harmonised transparency rules', 'celex:32024R1689/oj#art_1').
declared(lays_down_rules_for_general_purpose_ai_models/1, 'regulation lays down harmonised rules for general-purpose AI models', 'celex:32024R1689/oj#art_1').
declared(lays_down_governance_rules/1, 'regulation lays down rules on market monitoring, surveillance, governance and enforcement', 'celex:32024R1689/oj#art_1').
declared(lays_down_innovation_support_measures/1, 'regulation lays down measures to support innovation', 'celex:32024R1689/oj#art_1').
purpose_of_regulation(improve_internal_market_and_promote_trustworthy_ai) :-
    ai_system(_).
lays_down_harmonised_rules(placing_on_market) :-
    ai_system(_).
lays_down_harmonised_rules(putting_into_service) :-
    ai_system(_).
lays_down_harmonised_rules(use_of_ai_systems) :-
    ai_system(_).
lays_down_prohibitions(certain_ai_practices).
lays_down_requirements(high_risk_ai_systems) :-
    high_risk_ai_system(_).
lays_down_requirements(obligations_for_operators) :-
    operator(_).
lays_down_transparency_rules(certain_ai_systems) :-
    ai_system(_).
lays_down_rules_for_general_purpose_ai_models(placing_on_market) :-
    general_purpose_ai_model(_).
lays_down_governance_rules(market_monitoring).
lays_down_governance_rules(market_surveillance).
lays_down_governance_rules(governance).
lays_down_governance_rules(enforcement).
lays_down_innovation_support_measures(smes_and_startups).
provenance(purpose_of_regulation/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_harmonised_rules/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_prohibitions/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_requirements/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_transparency_rules/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_rules_for_general_purpose_ai_models/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_governance_rules/1, 'celex:32024R1689/oj#art_1').
provenance(lays_down_innovation_support_measures/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to/1, 'entity to which the regulation applies', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to/1, 'entity or system to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to_system/1, 'AI system to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to_activity/1, 'activity to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to_obligations/1, 'obligations to which the regulation does not apply', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_preclude/1, 'laws or provisions the regulation does not preclude', 'celex:32024R1689/oj#art_2').
declared(regulation_without_prejudice_to/1, 'legal acts the regulation is without prejudice to', 'celex:32024R1689/oj#art_2').
declared(limited_application/2, 'only specified articles apply to a given system', 'celex:32024R1689/oj#art_2').
declared(military_defence_national_security_purpose/1, 'used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(scientific_research_and_development_purpose/1, 'specifically developed and put into service for the sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(personal_non_professional_activity/1, 'purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(international_cooperation_framework/1, 'used in the framework of international cooperation or agreements for law enforcement and judicial cooperation', 'celex:32024R1689/oj#art_2').
declared(adequate_safeguards_fundamental_rights/1, 'provides adequate safeguards with respect to the protection of fundamental rights and freedoms of individuals', 'celex:32024R1689/oj#art_2').
declared(testing_in_real_world_conditions/1, 'testing in real world conditions', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system_under_annex_1/1, 'high-risk AI system related to products covered by Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#art_2').
regulation_applies_to(Provider) :-
    provider(Provider),
    ( placing_on_market(Provider) ; putting_into_service(Provider) ),
    ( established_in_union(Provider) ; established_in_third_country(Provider) ).
regulation_applies_to(Provider) :-
    provider(Provider),
    placing_on_market(general_purpose_ai_model),
    ( established_in_union(Provider) ; established_in_third_country(Provider) ).
regulation_applies_to(Deployer) :-
    deployer(Deployer),
    ( established_in_union(Deployer) ; located_in_union(Deployer) ).
regulation_applies_to(Entity) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( established_in_third_country(Entity) ; located_in_third_country(Entity) ),
    output_used_in_union(Entity).
regulation_applies_to(Entity) :-
    importer(Entity).
regulation_applies_to(Entity) :-
    distributor(Entity).
regulation_applies_to(Manufacturer) :-
    product_manufacturer(Manufacturer),
    ( placing_on_market(Manufacturer) ; putting_into_service(Manufacturer) ),
    places_ai_system_with_product(Manufacturer).
regulation_applies_to(Representative) :-
    authorised_representative(Representative),
    represents_provider_not_established_in_union(Representative).
regulation_applies_to(Person) :-
    affected_person(Person),
    located_in_union(Person).
limited_application(System, [art_6_par_1, art_102, art_103, art_104, art_105, art_106, art_107, art_108, art_109, art_112]) :-
    high_risk_ai_system_under_annex_1(System).
limited_application(System, [art_57]) :-
    high_risk_ai_system_under_annex_1(System),
    requirements_integrated_in_harmonisation_legislation(System).
regulation_does_not_apply_to(Area) :-
    outside_scope_of_union_law(Area).
regulation_does_not_apply_to(Competence) :-
    national_security_competence(Competence).
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    military_defence_national_security_purpose(System),
    ( placed_on_market_or_put_into_service(System) ; used_with_or_without_modification(System) ).
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    \+ placed_on_market_or_put_into_service_in_union(System),
    output_used_in_union(System),
    military_defence_national_security_purpose(System).
regulation_does_not_apply_to(Authority) :-
    public_authority_third_country(Authority),
    international_cooperation_framework(Authority),
    adequate_safeguards_fundamental_rights(Authority).
regulation_does_not_apply_to(Organisation) :-
    international_organisation(Organisation),
    international_cooperation_framework(Organisation),
    adequate_safeguards_fundamental_rights(Organisation).
regulation_without_prejudice_to(liability_of_providers_of_intermediary_services).
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    scientific_research_and_development_purpose(System).
regulation_does_not_apply_to_system(Model) :-
    general_purpose_ai_model(Model),
    scientific_research_and_development_purpose(Model).
regulation_without_prejudice_to('celex:32016R0679/oj').
regulation_without_prejudice_to('(EU) 2018/1725').
regulation_without_prejudice_to('celex:32002L0058/oj').
regulation_without_prejudice_to('(EU) 2016/680').
regulation_does_not_apply_to_activity(Activity) :-
    research_testing_development_activity(Activity),
    prior_to_placing_on_market_or_putting_into_service(Activity),
    \+ testing_in_real_world_conditions(Activity).
regulation_without_prejudice_to(consumer_protection_and_product_safety).
regulation_does_not_apply_to_obligations(Deployer) :-
    deployer(Deployer),
    natural_person(Deployer),
    personal_non_professional_activity(Deployer).
regulation_does_not_preclude(more_favourable_worker_protection).
regulation_does_not_apply_to_system(System) :-
    ai_system(System),
    free_and_open_source_licence(System),
    \+ high_risk_ai_system(System),
    \+ system_falls_under_art_5_or_art_50(System).
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_system/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_activity/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to_obligations/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_preclude/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_without_prejudice_to/1, 'celex:32024R1689/oj#art_2').
provenance(limited_application/2, 'celex:32024R1689/oj#art_2').
provenance(military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(scientific_research_and_development_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_framework/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(testing_in_real_world_conditions/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_under_annex_1/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure_ai_literacy/2, 'entity must ensure sufficient AI literacy of staff and other persons', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(Entity, Staff) :-
    ( provider(Entity) ; deployer(Entity) ),
    ( staff_of(Entity, Staff) ; dealing_on_behalf_of(Entity, Staff) ),
    dealing_with_operation_or_use(Staff).
staff_of(Entity, Person) :-
    ( provider(Entity) ; deployer(Entity) ),
    Person = staff(Entity).
dealing_on_behalf_of(Entity, Person) :-
    ( provider(Entity) ; deployer(Entity) ),
    Person = other_person(Entity).
dealing_with_operation_or_use(Person) :-
    Person = staff(_) ; Person = other_person(_).
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(staff_of/2, 'celex:32024R1689/oj#art_4').
provenance(dealing_on_behalf_of/2, 'celex:32024R1689/oj#art_4').
provenance(dealing_with_operation_or_use/1, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulation/1, 'AI system deploying subliminal or manipulative techniques causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_exploitation_of_vulnerabilities/1, 'AI system exploiting vulnerabilities causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system for social scoring leading to detrimental treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_crime_risk_assessment/1, 'AI system assessing risk of criminal offence based solely on profiling', 'celex:32024R1689/oj#art_5').
declared(prohibited_facial_recognition_database_creation/1, 'AI system creating facial recognition databases through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_inference/1, 'AI system inferring emotions in workplace or education', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'biometric categorisation system deducing protected characteristics', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification/1, 'use of real-time remote biometric identification for law enforcement', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification/2, 'permitted use of real-time remote biometric identification for a specific objective', 'celex:32024R1689/oj#art_5').
declared(must_confirm_identity/1, 'deployment must confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(must_take_into_account_elements/1, 'deployment must take into account nature of situation and consequences', 'celex:32024R1689/oj#art_5').
declared(must_comply_with_safeguards/1, 'deployment must comply with necessary and proportionate safeguards', 'celex:32024R1689/oj#art_5').
declared(must_have_authorisation/1, 'deployment must have prior authorisation from judicial or independent authority', 'celex:32024R1689/oj#art_5').
declared(must_notify_authorities/1, 'deployment must be notified to market surveillance and data protection authorities', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'authority must submit annual report to Commission', 'celex:32024R1689/oj#art_5').
declared(must_publish_annual_report/1, 'Commission must publish annual report', 'celex:32024R1689/oj#art_5').
declared(urgency_applies/1, 'duly justified situation of urgency', 'celex:32024R1689/oj#art_5').
declared(fundamental_rights_impact_assessment_completed/1, 'law enforcement authority completed fundamental rights impact assessment', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'system registered in EU database', 'celex:32024R1689/oj#art_5').
declared(authorisation_granted/1, 'authorisation granted by competent authority', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_without_undue_delay/1, 'authorisation requested without undue delay', 'celex:32024R1689/oj#art_5').
declared(adverse_legal_effect_decision/1, 'decision producing adverse legal effect based solely on system output', 'celex:32024R1689/oj#art_5').
declared(medical_or_safety_reason/1, 'use intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(law_enforcement_purpose/1, 'use for law enforcement purposes', 'celex:32024R1689/oj#art_5').
declared(targeted_search_victims/1, 'targeted search for victims of abduction, trafficking or exploitation', 'celex:32024R1689/oj#art_5').
declared(prevention_of_threat/1, 'prevention of specific substantial imminent threat to life or safety', 'celex:32024R1689/oj#art_5').
declared(localisation_of_suspect/1, 'localisation or identification of person suspected of criminal offence', 'celex:32024R1689/oj#art_5').
declared(offence_in_annex_2/1, 'offence referred to in Annex II', 'celex:32024R1689/oj#art_5').
declared(punishable_by_four_years/1, 'offence punishable by custodial sentence of at least four years', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    deploys_subliminal_or_manipulative_techniques(S),
    objective_or_effect_materially_distorts_behaviour(S),
    appreciably_impairs_informed_decision(S),
    causes_decision_not_otherwise_taken(S),
    causes_or_likely_causes_significant_harm(S).
deploys_subliminal_or_manipulative_techniques(S) :-
    ai_system(S),
    ( deploys_subliminal_techniques(S)
    ; deploys_purposefully_manipulative_techniques(S)
    ; deploys_deceptive_techniques(S)
    ).
prohibited_exploitation_of_vulnerabilities(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    exploits_vulnerabilities(S),
    objective_or_effect_materially_distorts_behaviour(S),
    causes_or_likely_causes_significant_harm(S).
exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_age_vulnerability(S).
exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_disability_vulnerability(S).
exploits_vulnerabilities(S) :-
    ai_system(S),
    exploits_social_or_economic_situation_vulnerability(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    evaluates_or_classifies_over_time(S),
    based_on_social_behaviour_or_personality(S),
    social_score_leads_to_detrimental_treatment(S).
social_score_leads_to_detrimental_treatment(S) :-
    detrimental_treatment_unrelated_context(S).
social_score_leads_to_detrimental_treatment(S) :-
    detrimental_treatment_unjustified_or_disproportionate(S).
prohibited_crime_risk_assessment(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    makes_risk_assessment_of_natural_person(S),
    based_solely_on_profiling_or_personality(S),
    \+ supports_human_assessment_of_criminal_involvement(S).
supports_human_assessment_of_criminal_involvement(S) :-
    ai_system(S),
    supports_human_assessment(S),
    based_on_objective_verifiable_facts(S).
prohibited_facial_recognition_database_creation(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    creates_or_expands_facial_recognition_database(S),
    untargeted_scraping_of_facial_images(S).
prohibited_emotion_inference(S) :-
    ai_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    infers_emotions(S),
    in_workplace_or_education(S),
    \+ medical_or_safety_reason(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    ( placing_on_market(S)
    ; putting_into_service(S)
    ; deployer(_D), use_of_system(_D, S)
    ),
    categorises_individuals_by_biometric_data(S),
    deduces_or_infers_protected_characteristics(S),
    \+ lawful_labelling_or_filtering(S),
    \+ law_enforcement_categorisation(S).
prohibited_real_time_remote_biometric_identification(Use) :-
    real_time_remote_biometric_identification_system(S),
    use_of_system(law_enforcement_authority, S, Use),
    in_publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    \+ permitted_real_time_remote_biometric_identification(Use, _Objective).
permitted_real_time_remote_biometric_identification(Use, Objective) :-
    real_time_remote_biometric_identification_system(S),
    use_of_system(law_enforcement_authority, S, Use),
    in_publicly_accessible_space(Use),
    law_enforcement_purpose(Use),
    strictly_necessary(Use, Objective),
    permitted_objective(Objective).
permitted_objective(targeted_search_victims).
permitted_objective(prevention_of_threat).
permitted_objective(localisation_of_suspect(Suspect)) :-
    offence_in_annex_2(Offence),
    suspect_offence(Suspect, Offence),
    punishable_by_four_years(Offence).
must_confirm_identity(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    deployment_confirms_identity(Use).
must_take_into_account_elements(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    takes_into_account_nature_of_situation(Use),
    takes_into_account_consequences(Use).
must_comply_with_safeguards(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    complies_with_temporal_geographic_personal_limitations(Use),
    fundamental_rights_impact_assessment_completed(Use),
    ( registered_in_eu_database(Use)
    ; urgency_applies(Use), registered_without_undue_delay(Use)
    ).
must_have_authorisation(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    ( authorisation_granted(Use)
    ; urgency_applies(Use), authorisation_requested_without_undue_delay(Use)
    ).
authorisation_granted(Use) :-
    permitted_real_time_remote_biometric_identification(Use, Objective),
    authorisation_by_judicial_or_independent_authority(Use),
    necessary_and_proportionate(Use, Objective),
    limited_to_strictly_necessary_scope(Use),
    takes_into_account_elements(Use),
    \+ adverse_legal_effect_decision(Use).
must_notify_authorities(Use) :-
    permitted_real_time_remote_biometric_identification(Use, _Objective),
    notified_to_market_surveillance_authority(Use),
    notified_to_data_protection_authority(Use),
    notification_contains_minimum_information(Use),
    \+ includes_sensitive_operational_data(Use).
must_submit_annual_report(Authority, Commission) :-
    ( market_surveillance_authority(Authority)
    ; national_data_protection_authority(Authority)
    ),
    notified_of_use(Authority, _Use),
    report_on_real_time_remote_biometric_identification(Authority, Commission).
must_publish_annual_report(Commission) :-
    ai_office(Commission),
    aggregated_data_from_member_states(Commission),
    \+ includes_sensitive_operational_data(Commission).
use_of_system(_Actor, _System) :- true.
deploys_subliminal_techniques(_S) :- true.
deploys_purposefully_manipulative_techniques(_S) :- true.
deploys_deceptive_techniques(_S) :- true.
objective_or_effect_materially_distorts_behaviour(_S) :- true.
appreciably_impairs_informed_decision(_S) :- true.
causes_decision_not_otherwise_taken(_S) :- true.
causes_or_likely_causes_significant_harm(_S) :- true.
exploits_age_vulnerability(_S) :- true.
exploits_disability_vulnerability(_S) :- true.
exploits_social_or_economic_situation_vulnerability(_S) :- true.
evaluates_or_classifies_over_time(_S) :- true.
based_on_social_behaviour_or_personality(_S) :- true.
detrimental_treatment_unrelated_context(_S) :- true.
detrimental_treatment_unjustified_or_disproportionate(_S) :- true.
makes_risk_assessment_of_natural_person(_S) :- true.
based_solely_on_profiling_or_personality(_S) :- true.
supports_human_assessment(_S) :- true.
based_on_objective_verifiable_facts(_S) :- true.
creates_or_expands_facial_recognition_database(_S) :- true.
untargeted_scraping_of_facial_images(_S) :- true.
infers_emotions(_S) :- true.
in_workplace_or_education(_S) :- true.
categorises_individuals_by_biometric_data(_S) :- true.
deduces_or_infers_protected_characteristics(_S) :- true.
lawful_labelling_or_filtering(_S) :- true.
law_enforcement_categorisation(_S) :- true.
in_publicly_accessible_space(_Use) :- true.
strictly_necessary(_Use, _Objective) :- true.
deployment_confirms_identity(_Use) :- true.
takes_into_account_nature_of_situation(_Use) :- true.
takes_into_account_consequences(_Use) :- true.
complies_with_temporal_geographic_personal_limitations(_Use) :- true.
registered_without_undue_delay(_Use) :- true.
authorisation_by_judicial_or_independent_authority(_Use) :- true.
necessary_and_proportionate(_Use, _Objective) :- true.
limited_to_strictly_necessary_scope(_Use) :- true.
takes_into_account_elements(_Use) :- true.
notified_to_market_surveillance_authority(_Use) :- true.
notified_to_data_protection_authority(_Use) :- true.
notification_contains_minimum_information(_Use) :- true.
includes_sensitive_operational_data(_Use) :- true.
national_data_protection_authority(_A) :- true.
notified_of_use(_A, _Use) :- true.
report_on_real_time_remote_biometric_identification(_A, _C) :- true.
aggregated_data_from_member_states(_C) :- true.
suspect_offence(_Suspect, _Offence) :- true.
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_crime_risk_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_inference/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification/2, 'celex:32024R1689/oj#art_5').
provenance(must_confirm_identity/1, 'celex:32024R1689/oj#art_5').
provenance(must_take_into_account_elements/1, 'celex:32024R1689/oj#art_5').
provenance(must_comply_with_safeguards/1, 'celex:32024R1689/oj#art_5').
provenance(must_have_authorisation/1, 'celex:32024R1689/oj#art_5').
provenance(must_notify_authorities/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(must_publish_annual_report/1, 'celex:32024R1689/oj#art_5').
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
declared(safety_component_of_product/2, 'AI system is a safety component of a product', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
declared(product_covered_by_annex_1/1, 'product covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
declared(requires_third_party_conformity_assessment/1, 'product required to undergo third-party conformity assessment under Annex I legislation', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
declared(annex_3_system/1, 'AI system referred to in Annex III', 'celex:32024R1689/oj#art_6/par_2').
declared(significant_risk_of_harm/1, 'poses significant risk of harm to health, safety or fundamental rights', 'celex:32024R1689/oj#art_6/par_3').
declared(materially_influences_decision_outcome/1, 'materially influences the outcome of decision making', 'celex:32024R1689/oj#art_6/par_3').
declared(narrow_procedural_task/1, 'intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
declared(improves_result_of_human_activity/1, 'intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
declared(detects_decision_patterns/1, 'intended to detect decision-making patterns or deviations without replacing human assessment', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
declared(preparatory_task_for_annex_3/1, 'intended to perform a preparatory task to an assessment relevant for Annex III use cases', 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
declared(performs_profiling/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6/par_3/unp_3').
declared(must_document_non_high_risk_assessment/2, 'provider must document assessment that Annex III system is not high-risk', 'celex:32024R1689/oj#art_6/par_4').
declared(must_provide_documentation_on_request/2, 'provider must provide documentation of assessment upon request of national competent authorities', 'celex:32024R1689/oj#art_6/par_4').
high_risk_ai_system(S) :-
    ai_system(S),
    safety_component_of_product(S, P),
    product_covered_by_annex_1(P),
    requires_third_party_conformity_assessment(P).
high_risk_ai_system(S) :-
    ai_system(S),
    product_covered_by_annex_1(S),
    requires_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    annex_3_system(S).
high_risk_ai_system(S) :-
    annex_3_system(S),
    performs_profiling(S).
high_risk_ai_system(S) :-
    annex_3_system(S),
    significant_risk_of_harm(S).
high_risk_ai_system(S) :-
    annex_3_system(S),
    materially_influences_decision_outcome(S).
high_risk_ai_system(S) :-
    annex_3_system(S),
    \+ narrow_procedural_task(S),
    \+ improves_result_of_human_activity(S),
    \+ detects_decision_patterns(S),
    \+ preparatory_task_for_annex_3(S),
    \+ performs_profiling(S).
must_document_non_high_risk_assessment(Provider, S) :-
    provider(Provider),
    annex_3_system(S),
    \+ high_risk_ai_system(S).
must_provide_documentation_on_request(Provider, S) :-
    provider(Provider),
    annex_3_system(S),
    \+ high_risk_ai_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(safety_component_of_product/2, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(product_covered_by_annex_1/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
provenance(requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
provenance(annex_3_system/1, 'celex:32024R1689/oj#art_6/par_2').
provenance(significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(materially_influences_decision_outcome/1, 'celex:32024R1689/oj#art_6/par_3').
provenance(narrow_procedural_task/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_a').
provenance(improves_result_of_human_activity/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_b').
provenance(detects_decision_patterns/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_c').
provenance(preparatory_task_for_annex_3/1, 'celex:32024R1689/oj#art_6/par_3/unp_2/pnt_d').
provenance(performs_profiling/1, 'celex:32024R1689/oj#art_6/par_3/unp_3').
provenance(must_document_non_high_risk_assessment/2, 'celex:32024R1689/oj#art_6/par_4').
provenance(must_provide_documentation_on_request/2, 'celex:32024R1689/oj#art_6/par_4').
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
declared(must_consider_criteria/2, 'Commission must consider criteria when assessing condition', 'celex:32024R1689/oj#art_7').
declared(condition_for_adding_use_cases/1, 'conditions for adding high-risk AI use-cases are fulfilled', 'celex:32024R1689/oj#art_7').
declared(condition_for_removing_use_cases/1, 'conditions for removing high-risk AI use-cases are fulfilled', 'celex:32024R1689/oj#art_7').
declared(risk_equivalent_or_greater/1, 'risk of harm equivalent to or greater than existing high-risk AI systems', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risks/1, 'high-risk AI system no longer poses significant risks', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion does not decrease overall level of protection', 'celex:32024R1689/oj#art_7').
condition_for_adding_use_cases(S) :-
    ai_system(S),
    intended_purpose(S),
    risk_equivalent_or_greater(S).
risk_equivalent_or_greater(S) :-
    ai_system(S),
    risk(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    intended_purpose(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    extent_of_use(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    nature_and_amount_of_data(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    extent_of_autonomy(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    prior_harm_or_concerns(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    potential_extent_of_harm(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    dependency_on_outcome(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    power_imbalance_or_vulnerability(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    corrigibility_of_outcome(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    magnitude_and_likelihood_of_benefit(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    existing_union_law_provides_redress(S).
must_consider_criteria(Commission, S) :-
    ai_system(S),
    existing_union_law_provides_prevention(S).
condition_for_removing_use_cases(S) :-
    high_risk_ai_system(S),
    no_longer_poses_significant_risks(S),
    deletion_does_not_decrease_protection(S).
no_longer_poses_significant_risks(S) :-
    high_risk_ai_system(S),
    \+ risk(S).
deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S).
provenance(condition_for_adding_use_cases/1, 'celex:32024R1689/oj#art_7').
provenance(risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(must_consider_criteria/2, 'celex:32024R1689/oj#art_7').
provenance(condition_for_removing_use_cases/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risks/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
declared(must_comply_with_requirements/2, 'high-risk AI system must comply with Section 2 requirements', 'celex:32024R1689/oj#art_8').
declared(must_integrate_testing_and_reporting/2, 'provider must integrate testing and reporting processes with existing documentation', 'celex:32024R1689/oj#art_8').
must_comply_with_requirements(S, intended_purpose(P)) :-
    high_risk_ai_system(S),
    intended_purpose(P).
must_integrate_testing_and_reporting(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    must_comply_with_requirements(S, _).
provenance(must_comply_with_requirements/2, 'celex:32024R1689/oj#art_8').
provenance(must_integrate_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(risk_management_system/1, 'risk management system established, implemented, documented and maintained', 'celex:32024R1689/oj#art_9').
declared(risk_management_measure_identified/1, 'appropriate and targeted risk management measures adopted', 'celex:32024R1689/oj#art_9').
declared(residual_risk_acceptable/1, 'relevant residual risk and overall residual risk judged acceptable', 'celex:32024R1689/oj#art_9').
declared(tested_for_risk_management/1, 'tested to identify most appropriate risk management measures', 'celex:32024R1689/oj#art_9').
declared(adverse_impact_on_vulnerable_groups_considered/1, 'consideration given to adverse impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9').
required_risk_management_system(S) :-
    high_risk_ai_system(S).
risk_management_system(S) :-
    high_risk_ai_system(S),
    risk_management_system_established(S),
    risk_management_system_implemented(S),
    risk_management_system_documented(S),
    risk_management_system_maintained(S).
risk_management_system_established(S) :-
    high_risk_ai_system(S).
risk_management_system_implemented(S) :-
    high_risk_ai_system(S).
risk_management_system_documented(S) :-
    high_risk_ai_system(S).
risk_management_system_maintained(S) :-
    high_risk_ai_system(S).
risk_management_process_continuous_iterative(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_process_planned_throughout_lifecycle(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_process_requires_regular_review(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_step_identification_analysis(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_step_estimation_evaluation(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_step_evaluation_post_market(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    post_market_monitoring_system(M),
    data_gathered_from(M, S).
risk_management_step_adoption_measures(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risk_management_measure_identified(S).
risk_management_measure_identified(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    risks_identified_pursuant_to_art_9_par_2_pnt_a(S),
    appropriate_targeted_measures_adopted(S).
risks_identified_pursuant_to_art_9_par_2_pnt_a(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
appropriate_targeted_measures_adopted(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risks_concerned_only_reasonably_mitigable(S) :-
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_measures_due_consideration_combined_requirements(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    relevant_residual_risk_acceptable(S),
    overall_residual_risk_acceptable(S).
relevant_residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
overall_residual_risk_acceptable(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
risk_management_measures_ensure_elimination_or_reduction(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    elimination_or_reduction_technically_feasible(S).
elimination_or_reduction_technically_feasible(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
risk_management_measures_ensure_mitigation_control(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    risks_cannot_be_eliminated(S).
risks_cannot_be_eliminated(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
risk_management_measures_ensure_provision_of_information(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    information_required_pursuant_to_art_13(S).
risk_management_measures_ensure_training_to_deployers(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S),
    training_appropriate(S).
due_consideration_to_deployer_context(S) :-
    high_risk_ai_system(S),
    risk_management_measure_identified(S).
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    testing_identifies_appropriate_measures(S).
testing_identifies_appropriate_measures(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
testing_ensures_consistent_performance(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
testing_ensures_compliance_with_section_2(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
testing_may_include_real_world_conditions(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
testing_performed_throughout_development(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
testing_performed_before_placing_on_market_or_putting_into_service(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
testing_carried_out_against_defined_metrics(S) :-
    high_risk_ai_system(S),
    tested_for_risk_management(S).
adverse_impact_on_vulnerable_groups_considered(S) :-
    high_risk_ai_system(S),
    risk_management_system(S),
    provider(P),
    must_consider_adverse_impact(P, S).
must_consider_adverse_impact(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_management_system(S).
risk_management_may_be_part_of_existing_procedures(S) :-
    high_risk_ai_system(S),
    provider(P),
    subject_to_internal_risk_management_requirements(P).
subject_to_internal_risk_management_requirements(P) :-
    provider(P).
provenance(required_risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_established/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_implemented/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_documented/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_maintained/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_continuous_iterative/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_planned_throughout_lifecycle/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_process_requires_regular_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_identification_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_estimation_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_evaluation_post_market/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_step_adoption_measures/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measure_identified/1, 'celex:32024R1689/oj#art_9').
provenance(risks_identified_pursuant_to_art_9_par_2_pnt_a/1, 'celex:32024R1689/oj#art_9').
provenance(appropriate_targeted_measures_adopted/1, 'celex:32024R1689/oj#art_9').
provenance(risks_concerned_only_reasonably_mitigable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_due_consideration_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(relevant_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(overall_residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_elimination_or_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(elimination_or_reduction_technically_feasible/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_mitigation_control/1, 'celex:32024R1689/oj#art_9').
provenance(risks_cannot_be_eliminated/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_provision_of_information/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_ensure_training_to_deployers/1, 'celex:32024R1689/oj#art_9').
provenance(due_consideration_to_deployer_context/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_identifies_appropriate_measures/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_consistent_performance/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_compliance_with_section_2/1, 'celex:32024R1689/oj#art_9').
provenance(testing_may_include_real_world_conditions/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_throughout_development/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_9').
provenance(testing_carried_out_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_vulnerable_groups_considered/1, 'celex:32024R1689/oj#art_9').
provenance(must_consider_adverse_impact/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_may_be_part_of_existing_procedures/1, 'celex:32024R1689/oj#art_9').
provenance(subject_to_internal_risk_management_requirements/1, 'celex:32024R1689/oj#art_9').
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
declared(data_governance_practices_applied/1, 'training, validation and testing data sets subject to data governance and management practices', 'celex:32024R1689/oj#art_10').
declared(data_sets_meet_quality_criteria/1, 'data sets meet quality criteria of paragraphs 2-5', 'celex:32024R1689/oj#art_10').
declared(data_sets_relevant_representative_complete/1, 'data sets are relevant, sufficiently representative, free of errors and complete', 'celex:32024R1689/oj#art_10').
declared(data_sets_account_for_setting/1, 'data sets take into account geographical, contextual, behavioural or functional setting', 'celex:32024R1689/oj#art_10').
declared(special_category_data_processing_conditions_met/1, 'conditions for processing special categories of personal data are met', 'celex:32024R1689/oj#art_10').
declared(bias_detection_correction_impossible_otherwise/1, 'bias detection and correction cannot be fulfilled by processing other data', 'celex:32024R1689/oj#art_10').
declared(technical_limitations_on_reuse/1, 'special categories of personal data subject to technical limitations on re-use', 'celex:32024R1689/oj#art_10').
declared(security_privacy_measures_applied/1, 'state-of-the-art security and privacy-preserving measures applied', 'celex:32024R1689/oj#art_10').
declared(data_secured_and_protected/1, 'personal data secured, protected, subject to suitable safeguards', 'celex:32024R1689/oj#art_10').
declared(data_not_transmitted_to_other_parties/1, 'special categories of personal data not transmitted or accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(data_deleted_after_correction_or_retention/1, 'special categories of personal data deleted once bias corrected or retention period ends', 'celex:32024R1689/oj#art_10').
declared(records_include_necessity_reasoning/1, 'records of processing include reasons for necessity of processing special categories', 'celex:32024R1689/oj#art_10').
declared(uses_training_of_ai_models/1, 'high-risk AI system uses techniques involving training of AI models with data', 'celex:32024R1689/oj#art_10').
must_develop_on_quality_data_sets(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    uses_training_of_ai_models(S),
    data_sets_meet_quality_criteria(S).
data_sets_meet_quality_criteria(S) :-
    data_governance_practices_applied(S),
    data_sets_relevant_representative_complete(S),
    data_sets_account_for_setting(S),
    special_category_data_processing_conditions_met(S).
data_governance_practices_applied(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    
    bias_mitigation_measures_identified(S).
data_sets_relevant_representative_complete(S) :-
    high_risk_ai_system(S),
    intended_purpose(S).
data_sets_account_for_setting(S) :-
    high_risk_ai_system(S),
    intended_purpose(S).
special_category_data_processing_conditions_met(S) :-
    high_risk_ai_system(S),
    bias_detection_correction_impossible_otherwise(S),
    technical_limitations_on_reuse(S),
    security_privacy_measures_applied(S),
    data_secured_and_protected(S),
    data_not_transmitted_to_other_parties(S),
    data_deleted_after_correction_or_retention(S),
    records_include_necessity_reasoning(S).
must_develop_on_quality_data_sets(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ uses_training_of_ai_models(S),
    testing_data(S),
    data_governance_practices_applied(S),
    data_sets_relevant_representative_complete(S),
    data_sets_account_for_setting(S),
    special_category_data_processing_conditions_met(S).
provenance(must_develop_on_quality_data_sets/2, 'celex:32024R1689/oj#art_10').
provenance(data_sets_meet_quality_criteria/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practices_applied/1, 'celex:32024R1689/oj#art_10').
provenance(data_sets_relevant_representative_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_sets_account_for_setting/1, 'celex:32024R1689/oj#art_10').
provenance(special_category_data_processing_conditions_met/1, 'celex:32024R1689/oj#art_10').
provenance(bias_detection_correction_impossible_otherwise/1, 'celex:32024R1689/oj#art_10').
provenance(technical_limitations_on_reuse/1, 'celex:32024R1689/oj#art_10').
provenance(security_privacy_measures_applied/1, 'celex:32024R1689/oj#art_10').
provenance(data_secured_and_protected/1, 'celex:32024R1689/oj#art_10').
provenance(data_not_transmitted_to_other_parties/1, 'celex:32024R1689/oj#art_10').
provenance(data_deleted_after_correction_or_retention/1, 'celex:32024R1689/oj#art_10').
provenance(records_include_necessity_reasoning/1, 'celex:32024R1689/oj#art_10').
provenance(uses_training_of_ai_models/1, 'celex:32024R1689/oj#art_10').
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
declared(technical_documentation/1, 'technical documentation of a high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(must_draw_up_technical_documentation/2, 'entity must draw up technical documentation for a high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(must_keep_technical_documentation_up_to_date/2, 'entity must keep technical documentation up-to-date', 'celex:32024R1689/oj#art_11').
declared(must_demonstrate_compliance/1, 'technical documentation must demonstrate compliance with Section 2 requirements', 'celex:32024R1689/oj#art_11').
declared(must_provide_necessary_information/1, 'technical documentation must provide necessary information for compliance assessment', 'celex:32024R1689/oj#art_11').
declared(must_contain_minimum_elements/1, 'technical documentation must contain at least the elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small or medium-sized enterprise, including start-ups', 'celex:32024R1689/oj#art_11').
declared(may_provide_simplified_documentation/1, 'SME may provide technical documentation in a simplified manner', 'celex:32024R1689/oj#art_11').
declared(must_use_simplified_form/1, 'SME opting for simplified documentation must use the Commission form', 'celex:32024R1689/oj#art_11').
declared(must_accept_simplified_form/1, 'notified body must accept the simplified form for conformity assessment', 'celex:32024R1689/oj#art_11').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_11').
declared(must_draw_up_single_set_of_technical_documentation/2, 'entity must draw up a single set of technical documentation for a product-related high-risk AI system', 'celex:32024R1689/oj#art_11').
declared(must_contain_information_required_under_other_legal_acts/1, 'single set of technical documentation must contain information required under other legal acts', 'celex:32024R1689/oj#art_11').
declared(commission_empowered_to_adopt_delegated_acts/1, 'Commission is empowered to adopt delegated acts to amend Annex IV', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
must_demonstrate_compliance(Doc) :-
    technical_documentation(Doc).
must_provide_necessary_information(Doc) :-
    technical_documentation(Doc).
must_contain_minimum_elements(Doc) :-
    technical_documentation(Doc).
may_provide_simplified_documentation(SME) :-
    sme(SME).
must_use_simplified_form(SME) :-
    sme(SME),
    may_provide_simplified_documentation(SME).
must_accept_simplified_form(Body) :-
    notified_body(Body).
must_draw_up_single_set_of_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation(S),
    ( placing_on_market(S) ; putting_into_service(S) ).
must_contain_information_required_under_other_legal_acts(Doc) :-
    technical_documentation(Doc).
commission_empowered_to_adopt_delegated_acts(Commission) :-
    ai_office(Commission).
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(must_demonstrate_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(must_provide_necessary_information/1, 'celex:32024R1689/oj#art_11').
provenance(must_contain_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(may_provide_simplified_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(must_use_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(must_accept_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_single_set_of_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_contain_information_required_under_other_legal_acts/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(must_technically_allow_logging/1, 'high-risk AI system must technically allow automatic recording of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(logging_capabilities_must_enable/2, 'logging capabilities must enable recording of events relevant for a purpose', 'celex:32024R1689/oj#art_12').
declared(logging_must_record/2, 'logging capabilities must record a specific item', 'celex:32024R1689/oj#art_12').
must_technically_allow_logging(S) :-
    high_risk_ai_system(S).
logging_capabilities_must_enable(S, identifying_risk_or_modification) :-
    high_risk_ai_system(S).
logging_capabilities_must_enable(S, facilitating_post_market_monitoring) :-
    high_risk_ai_system(S).
logging_capabilities_must_enable(S, monitoring_operation) :-
    high_risk_ai_system(S),
    
    high_risk_ai_system(S).
logging_must_record(S, period_of_each_use) :-
    annex_3_point_1_a_system(S).
logging_must_record(S, reference_database) :-
    annex_3_point_1_a_system(S).
logging_must_record(S, input_data_leading_to_match) :-
    annex_3_point_1_a_system(S).
logging_must_record(S, identification_of_persons_verifying_results) :-
    annex_3_point_1_a_system(S).
provenance(must_technically_allow_logging/1, 'celex:32024R1689/oj#art_12').
provenance(logging_capabilities_must_enable/2, 'celex:32024R1689/oj#art_12').
provenance(logging_must_record/2, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(must_ensure_transparency/2, 'high-risk AI system must be designed to ensure transparent operation', 'celex:32024R1689/oj#art_13').
declared(must_provide_instructions_for_use/2, 'high-risk AI system must be accompanied by instructions for use', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_identity/2, 'instructions for use contain identity and contact details', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_characteristics/2, 'instructions for use contain characteristics, capabilities and limitations', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_changes/2, 'instructions for use contain pre-determined changes', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_oversight_measures/2, 'instructions for use contain human oversight measures', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_resources/2, 'instructions for use contain computational and hardware resources', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_log_mechanisms/2, 'instructions for use contain description of log mechanisms', 'celex:32024R1689/oj#art_13').
must_ensure_transparency(S, D) :-
    high_risk_ai_system(S),
    deployer(D),
    operation_sufficiently_transparent(S, D).
operation_sufficiently_transparent(S, D) :-
    high_risk_ai_system(S),
    deployer(D),
    enables_interpretation_of_output(S, D),
    enables_appropriate_use(S, D).
must_provide_instructions_for_use(S, I) :-
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(S, I),
    in_appropriate_digital_format(I),
    concise_complete_correct_clear(I),
    relevant_accessible_comprehensible(I, D),
    deployer(D).
instructions_contain_identity(I, P) :-
    instructions_for_use(I),
    provider(P),
    contains_identity_and_contact(I, P).
instructions_contain_identity(I, R) :-
    instructions_for_use(I),
    authorised_representative(R),
    contains_identity_and_contact(I, R).
instructions_contain_characteristics(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_intended_purpose(I, S),
    contains_accuracy_robustness_cybersecurity(I, S),
    contains_foreseeable_risks(I, S),
    contains_explanation_capabilities(I, S),
    contains_performance_on_persons(I, S),
    contains_input_specifications(I, S),
    contains_output_interpretation_info(I, S).
instructions_contain_changes(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_pre_determined_changes(I, S).
instructions_contain_oversight_measures(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_human_oversight_measures(I, S),
    contains_technical_interpretation_measures(I, S).
instructions_contain_resources(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_computational_hardware_needs(I, S),
    contains_expected_lifetime(I, S),
    contains_maintenance_and_care(I, S).
instructions_contain_log_mechanisms(I, S) :-
    instructions_for_use(I),
    high_risk_ai_system(S),
    contains_log_mechanism_description(I, S).
declared(operation_sufficiently_transparent/2, 'operation is sufficiently transparent', 'celex:32024R1689/oj#art_13').
declared(enables_interpretation_of_output/2, 'enables deployer to interpret output', 'celex:32024R1689/oj#art_13').
declared(enables_appropriate_use/2, 'enables deployer to use system appropriately', 'celex:32024R1689/oj#art_13').
declared(accompanies/2, 'instructions accompany the system', 'celex:32024R1689/oj#art_13').
declared(in_appropriate_digital_format/1, 'in appropriate digital format or otherwise', 'celex:32024R1689/oj#art_13').
declared(concise_complete_correct_clear/1, 'information is concise, complete, correct and clear', 'celex:32024R1689/oj#art_13').
declared(relevant_accessible_comprehensible/2, 'information is relevant, accessible and comprehensible', 'celex:32024R1689/oj#art_13').
declared(contains_identity_and_contact/2, 'contains identity and contact details', 'celex:32024R1689/oj#art_13').
declared(contains_intended_purpose/2, 'contains intended purpose', 'celex:32024R1689/oj#art_13').
declared(contains_accuracy_robustness_cybersecurity/2, 'contains accuracy, robustness and cybersecurity information', 'celex:32024R1689/oj#art_13').
declared(contains_foreseeable_risks/2, 'contains known or foreseeable risks', 'celex:32024R1689/oj#art_13').
declared(contains_explanation_capabilities/2, 'contains technical capabilities to explain output', 'celex:32024R1689/oj#art_13').
declared(contains_performance_on_persons/2, 'contains performance on specific persons or groups', 'celex:32024R1689/oj#art_13').
declared(contains_input_specifications/2, 'contains specifications for input data', 'celex:32024R1689/oj#art_13').
declared(contains_output_interpretation_info/2, 'contains information to interpret output', 'celex:32024R1689/oj#art_13').
declared(contains_pre_determined_changes/2, 'contains pre-determined changes', 'celex:32024R1689/oj#art_13').
declared(contains_human_oversight_measures/2, 'contains human oversight measures', 'celex:32024R1689/oj#art_13').
declared(contains_technical_interpretation_measures/2, 'contains technical measures for interpretation', 'celex:32024R1689/oj#art_13').
declared(contains_computational_hardware_needs/2, 'contains computational and hardware resources needed', 'celex:32024R1689/oj#art_13').
declared(contains_expected_lifetime/2, 'contains expected lifetime', 'celex:32024R1689/oj#art_13').
declared(contains_maintenance_and_care/2, 'contains maintenance and care measures', 'celex:32024R1689/oj#art_13').
declared(contains_log_mechanism_description/2, 'contains description of log mechanisms', 'celex:32024R1689/oj#art_13').
provenance(must_ensure_transparency/2, 'celex:32024R1689/oj#art_13').
provenance(must_provide_instructions_for_use/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_identity/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_changes/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_oversight_measures/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_resources/2, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanisms/2, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(must_be_designed_for_human_oversight/1, 'high-risk AI system must be designed and developed to be effectively overseen by natural persons', 'celex:32024R1689/oj#art_14').
declared(human_oversight_aims_to_prevent_risks/1, 'human oversight aims to prevent or minimise risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_commensurate/1, 'oversight measures are commensurate with risks, autonomy and context of use', 'celex:32024R1689/oj#art_14').
declared(provider_built_in_oversight/1, 'oversight measures identified and built into the system by the provider', 'celex:32024R1689/oj#art_14').
declared(provider_identified_deployer_oversight/1, 'oversight measures identified by the provider for implementation by the deployer', 'celex:32024R1689/oj#art_14').
declared(must_enable_oversight_capabilities/1, 'system must be provided to deployer enabling natural persons to exercise oversight capabilities', 'celex:32024R1689/oj#art_14').
declared(must_understand_capacities_and_limitations/1, 'oversight person must be able to understand capacities and limitations and monitor operation', 'celex:32024R1689/oj#art_14').
declared(must_remain_aware_of_automation_bias/1, 'oversight person must remain aware of possible automation bias', 'celex:32024R1689/oj#art_14').
declared(must_correctly_interpret_output/1, 'oversight person must be able to correctly interpret system output', 'celex:32024R1689/oj#art_14').
declared(must_be_able_to_disregard_output/1, 'oversight person must be able to decide not to use or to disregard, override or reverse output', 'celex:32024R1689/oj#art_14').
declared(must_be_able_to_interrupt_system/1, 'oversight person must be able to intervene or interrupt the system via a stop button', 'celex:32024R1689/oj#art_14').
declared(annex_3_point_1_a_system/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_14').
declared(must_require_separate_verification/1, 'system must ensure no action is taken on identification unless verified by at least two natural persons', 'celex:32024R1689/oj#art_14').
declared(separate_verification_exception_applies/1, 'exception to separate verification requirement for law enforcement, migration, border control or asylum', 'celex:32024R1689/oj#art_14').
must_be_designed_for_human_oversight(S) :-
    high_risk_ai_system(S).
human_oversight_aims_to_prevent_risks(S) :-
    high_risk_ai_system(S).
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S).
provider_built_in_oversight(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(S),
    putting_into_service(S).
provider_identified_deployer_oversight(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(S),
    putting_into_service(S).
must_enable_oversight_capabilities(S) :-
    high_risk_ai_system(S).
must_understand_capacities_and_limitations(S) :-
    high_risk_ai_system(S).
must_remain_aware_of_automation_bias(S) :-
    high_risk_ai_system(S).
must_correctly_interpret_output(S) :-
    high_risk_ai_system(S).
must_be_able_to_disregard_output(S) :-
    high_risk_ai_system(S).
must_be_able_to_interrupt_system(S) :-
    high_risk_ai_system(S).
must_require_separate_verification(S) :-
    annex_3_point_1_a_system(S),
    \+ separate_verification_exception_applies(S).
separate_verification_exception_applies(S) :-
    annex_3_point_1_a_system(S),
    law_enforcement_migration_asylum_border(S).
provenance(must_be_designed_for_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_aims_to_prevent_risks/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(provider_built_in_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(provider_identified_deployer_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(must_enable_oversight_capabilities/1, 'celex:32024R1689/oj#art_14').
provenance(must_understand_capacities_and_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(must_remain_aware_of_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(must_correctly_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(must_be_able_to_disregard_output/1, 'celex:32024R1689/oj#art_14').
provenance(must_be_able_to_interrupt_system/1, 'celex:32024R1689/oj#art_14').
provenance(must_require_separate_verification/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_exception_applies/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(must_achieve_accuracy_robustness_cybersecurity/1, 'high-risk AI system must achieve appropriate accuracy, robustness and cybersecurity', 'celex:32024R1689/oj#art_15/par_1').
declared(must_declare_accuracy_levels/1, 'accuracy levels and metrics must be declared in instructions for use', 'celex:32024R1689/oj#art_15/par_3').
declared(must_be_resilient_to_errors/1, 'high-risk AI system must be resilient to errors, faults or inconsistencies', 'celex:32024R1689/oj#art_15/par_4').
declared(must_eliminate_feedback_loop_bias/1, 'continually learning system must eliminate or reduce biased feedback loops', 'celex:32024R1689/oj#art_15/par_4').
declared(must_be_resilient_to_attacks/1, 'high-risk AI system must be resilient to unauthorised third-party attacks', 'celex:32024R1689/oj#art_15/par_5').
declared(must_implement_cybersecurity_measures/1, 'technical solutions for cybersecurity must be appropriate to circumstances', 'celex:32024R1689/oj#art_15/par_5').
declared(must_address_ai_specific_vulnerabilities/1, 'technical solutions must address AI-specific vulnerabilities', 'celex:32024R1689/oj#art_15/par_5').
declared(continues_learning_after_placement/1, 'AI system that continues to learn after being placed on the market or put into service', 'celex:32024R1689/oj#art_15/par_4').
must_achieve_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S).
must_declare_accuracy_levels(S) :-
    high_risk_ai_system(S).
must_be_resilient_to_errors(S) :-
    high_risk_ai_system(S).
must_eliminate_feedback_loop_bias(S) :-
    high_risk_ai_system(S),
    continues_learning_after_placement(S).
must_be_resilient_to_attacks(S) :-
    high_risk_ai_system(S).
must_implement_cybersecurity_measures(S) :-
    high_risk_ai_system(S).
must_address_ai_specific_vulnerabilities(S) :-
    high_risk_ai_system(S).
provenance(must_achieve_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15/par_1').
provenance(must_declare_accuracy_levels/1, 'celex:32024R1689/oj#art_15/par_3').
provenance(must_be_resilient_to_errors/1, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_eliminate_feedback_loop_bias/1, 'celex:32024R1689/oj#art_15/par_4').
provenance(must_be_resilient_to_attacks/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(must_address_ai_specific_vulnerabilities/1, 'celex:32024R1689/oj#art_15/par_5').
provenance(continues_learning_after_placement/1, 'celex:32024R1689/oj#art_15/par_4').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_indicate_identity/2, 'provider must indicate name, trade name or mark and contact address on system, packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider must have a quality management system in place', 'celex:32024R1689/oj#art_16').
declared(must_keep_documentation/2, 'provider must keep the documentation referred to in Article 18', 'celex:32024R1689/oj#art_16').
declared(must_keep_logs/2, 'provider must keep automatically generated logs when under their control', 'celex:32024R1689/oj#art_16').
declared(must_undergo_conformity_assessment/2, 'provider must ensure system undergoes conformity assessment before placing on market or putting into service', 'celex:32024R1689/oj#art_16').
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up an EU declaration of conformity', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider must affix CE marking to system, packaging or documentation', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_registration/2, 'provider must comply with registration obligations', 'celex:32024R1689/oj#art_16').
declared(must_take_corrective_actions/2, 'provider must take necessary corrective actions and provide information', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity_on_request/2, 'provider must demonstrate conformity upon reasoned request of national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_accessibility/2, 'provider must ensure system complies with accessibility requirements', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_indicate_identity(P, S) :-
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
must_comply_with_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_demonstrate_conformity_on_request(P, S) :-
    provider(P),
    high_risk_ai_system(S).
must_comply_with_accessibility(P, S) :-
    provider(P),
    high_risk_ai_system(S).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity_on_request/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_accessibility/2, 'celex:32024R1689/oj#art_16').
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
declared(must_establish_quality_management_system/2, 'provider must establish a quality management system for high-risk AI systems', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system documented in systematic and orderly manner', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_includes/2, 'quality management system includes a required aspect', 'celex:32024R1689/oj#art_17').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to internal governance requirements', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_deemed_fulfilled/1, 'quality management system obligation deemed fulfilled through financial services rules', 'celex:32024R1689/oj#art_17').
must_establish_quality_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_documented(System),
    quality_management_system_includes(System, regulatory_compliance_strategy),
    quality_management_system_includes(System, design_control_techniques),
    quality_management_system_includes(System, development_quality_control),
    quality_management_system_includes(System, examination_test_validation_procedures),
    quality_management_system_includes(System, technical_specifications_and_means),
    quality_management_system_includes(System, data_management_systems),
    quality_management_system_includes(System, risk_management_system),
    quality_management_system_includes(System, post_market_monitoring_setup),
    quality_management_system_includes(System, serious_incident_reporting_procedures),
    quality_management_system_includes(System, communication_handling),
    quality_management_system_includes(System, record_keeping_systems),
    quality_management_system_includes(System, resource_management),
    quality_management_system_includes(System, accountability_framework).
quality_management_system_documented(System) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, regulatory_compliance_strategy) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, design_control_techniques) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, development_quality_control) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, examination_test_validation_procedures) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, technical_specifications_and_means) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, data_management_systems) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, risk_management_system) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, post_market_monitoring_setup) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, serious_incident_reporting_procedures) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, communication_handling) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, record_keeping_systems) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, resource_management) :-
    high_risk_ai_system(System).
quality_management_system_includes(System, accountability_framework) :-
    high_risk_ai_system(System).
must_establish_quality_management_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_documented(System),
    respects_degree_of_rigour(Provider, System).
respects_degree_of_rigour(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
quality_management_system_includes(System, Aspect) :-
    high_risk_ai_system(System),
    provider(Provider),
    subject_to_sectoral_qms_obligations(Provider),
    sectoral_qms_includes(Provider, Aspect).
subject_to_sectoral_qms_obligations(Provider) :-
    provider(Provider).
sectoral_qms_includes(Provider, Aspect) :-
    quality_management_system_includes(_, Aspect).
quality_management_system_deemed_fulfilled(Provider) :-
    financial_institution_provider(Provider),
    complies_with_financial_services_governance(Provider).
financial_institution_provider(Provider) :-
    provider(Provider).
complies_with_financial_services_governance(Provider) :-
    financial_institution_provider(Provider).
must_establish_quality_management_system(Provider, System) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(System),
    quality_management_system_includes(System, risk_management_system),
    quality_management_system_includes(System, post_market_monitoring_setup),
    quality_management_system_includes(System, serious_incident_reporting_procedures).
provenance(must_establish_quality_management_system/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_17').
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
declared(must_keep_documentation/2, 'provider must keep documentation at disposal of national competent authorities', 'celex:32024R1689/oj#art_18').
declared(must_determine_conditions/2, 'Member State must determine conditions for documentation availability', 'celex:32024R1689/oj#art_18').
declared(must_maintain_technical_documentation/2, 'financial institution provider must maintain technical documentation under financial services law', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_18').
must_keep_documentation(Provider, documentation(TechnicalDoc, QualityDoc, ApprovedChanges, NotifiedBodyDocs, EUDeclaration)) :-
    provider(Provider),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    TechnicalDoc = technical_documentation(art_11),
    QualityDoc = quality_management_system_documentation(art_17),
    ApprovedChanges = changes_approved_by_notified_bodies,
    NotifiedBodyDocs = documents_issued_by_notified_bodies,
    EUDeclaration = eu_declaration_of_conformity(art_47).
must_determine_conditions(MemberState, documentation_availability(Provider)) :-
    must_keep_documentation(Provider, _),
    ( provider(Provider) ; authorised_representative(Provider) ),
    established_on_territory(Provider, MemberState),
    ( bankrupt(Provider) ; ceased_activity(Provider) ).
must_maintain_technical_documentation(Provider, technical_documentation(art_11)) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ).
financial_institution_provider(Provider) :-
    provider(Provider),
    subject_to_union_financial_services_law(Provider).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_technical_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(must_keep_logs/2, 'provider must keep automatically generated logs', 'celex:32024R1689/oj#art_19').
declared(must_maintain_logs_under_financial_services_law/2, 'financial institution provider must maintain logs under financial services law', 'celex:32024R1689/oj#art_19').
must_keep_logs(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    under_control_of(Provider, System),
    kept_for_period(System, period(at_least(months(6)), appropriate_to(intended_purpose(System)))).
must_maintain_logs_under_financial_services_law(Provider, logs(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    financial_institution(Provider),
    subject_to_internal_governance_requirements(Provider),
    maintained_as_part_of_documentation(Provider, System).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_under_financial_services_law/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
must_take_corrective_actions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( placing_on_market(System)
    ; putting_into_service(System)
    ),
    ( considers_nonconformity(Provider, System)
    ; has_reason_to_consider_nonconformity(Provider, System)
    ).
must_immediately_inform(Provider, nonconformity(System)) :-
    must_take_corrective_actions(Provider, System).
must_immediately_inform(Provider, nonconformity(System)) :-
    distributor(D),
    must_immediately_inform(Provider, nonconformity(System)),
    must_immediately_inform(Provider, distributor(D, System)).
must_immediately_inform(Provider, deployer(D, System)) :-
    deployer(D),
    must_immediately_inform(Provider, nonconformity(System)).
must_immediately_inform(Provider, authorised_representative(R, System)) :-
    authorised_representative(R),
    must_immediately_inform(Provider, nonconformity(System)).
must_immediately_inform(Provider, importer(I, System)) :-
    importer(I),
    must_immediately_inform(Provider, nonconformity(System)).
must_report_serious_incident(Provider, risk(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    aware_of_risk(Provider, System).
must_immediately_inform(Provider, market_surveillance_authority(A, System)) :-
    must_report_serious_incident(Provider, risk(System)),
    market_surveillance_authority(A),
    competent_for(A, System).
must_immediately_inform(Provider, notified_body(B, System)) :-
    must_report_serious_incident(Provider, risk(System)),
    notified_body(B),
    issued_certificate_for(B, System).
considers_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
has_reason_to_consider_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
aware_of_risk(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
competent_for(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).
issued_certificate_for(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_20').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
declared(must_provide_information_and_documentation/2, 'provider must provide information and documentation to competent authority upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_give_access_to_logs/2, 'provider must give access to automatically generated logs to competent authority upon reasoned request', 'celex:32024R1689/oj#art_21').
declared(must_treat_information_confidentially/1, 'competent authority must treat obtained information in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_21').
must_provide_information_and_documentation(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, information_and_documentation(S)),
    information_demonstrates_conformity(S, 'celex:32024R1689/oj#chp_3/sec_2'),
    language_easily_understood(Authority).
must_give_access_to_logs(Provider, Authority) :-
    provider(Provider),
    high_risk_ai_system(S),
    reasoned_request(Authority, Provider, access_to_logs(S)),
    logs_referred_to_in_art_12_par_1(S),
    logs_under_control_of(Provider, S).
must_treat_information_confidentially(Authority) :-
    competent_authority(Authority),
    information_obtained_pursuant_to(Authority, 'celex:32024R1689/oj#art_21').
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_21').
provenance(must_give_access_to_logs/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_information_confidentially/1, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_appoint_authorised_representative/2, 'provider must appoint authorised representative established in the Union', 'celex:32024R1689/oj#art_22').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform mandated tasks', 'celex:32024R1689/oj#art_22').
declared(must_perform_mandated_tasks/1, 'authorised representative must perform tasks specified in the mandate', 'celex:32024R1689/oj#art_22').
declared(must_provide_mandate_copy/2, 'authorised representative must provide mandate copy to market surveillance authorities on request', 'celex:32024R1689/oj#art_22').
declared(must_verify_conformity_documentation/1, 'authorised representative must verify EU declaration of conformity and technical documentation drawn up and conformity assessment carried out', 'celex:32024R1689/oj#art_22').
declared(must_keep_documentation_available/1, 'authorised representative must keep documentation at disposal of competent authorities for 10 years', 'celex:32024R1689/oj#art_22').
declared(must_provide_information_on_request/1, 'authorised representative must provide information and documentation to competent authority on reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_cooperate_with_competent_authorities/1, 'authorised representative must cooperate with competent authorities on reasoned request', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
declared(must_inform_termination/2, 'authorised representative must immediately inform market surveillance authority and notified body of mandate termination', 'celex:32024R1689/oj#art_22').
must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    established_in_union(Representative),
    high_risk_ai_system(S),
    placing_on_market(S),
    \+ made_available_on_union_market(S, _).
must_enable_authorised_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    must_appoint_authorised_representative(Provider, Representative).
must_perform_mandated_tasks(Representative) :-
    authorised_representative(Representative).
must_provide_mandate_copy(Representative, Authority) :-
    authorised_representative(Representative),
    market_surveillance_authority(Authority).
must_verify_conformity_documentation(Representative) :-
    authorised_representative(Representative).
must_keep_documentation_available(Representative) :-
    authorised_representative(Representative).
must_provide_information_on_request(Representative) :-
    authorised_representative(Representative).
must_cooperate_with_competent_authorities(Representative) :-
    authorised_representative(Representative).
must_comply_with_registration(Representative, registration_obligations) :-
    authorised_representative(Representative).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider),
    acts_contrary_to_obligations(Provider).
must_inform_termination(Representative, termination(Provider, Reason)) :-
    authorised_representative(Representative),
    provider(Provider),
    must_terminate_mandate(Representative, Provider),
    market_surveillance_authority(MSA),
    notified_body(NB).
declared(established_in_union/1, 'established in the Union', 'celex:32024R1689/oj#art_22').
declared(acts_contrary_to_obligations/1, 'provider acts contrary to obligations under this Regulation', 'celex:32024R1689/oj#art_22').
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandated_tasks/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_22').
provenance(must_verify_conformity_documentation/1, 'celex:32024R1689/oj#art_22').
provenance(must_keep_documentation_available/1, 'celex:32024R1689/oj#art_22').
provenance(must_provide_information_on_request/1, 'celex:32024R1689/oj#art_22').
provenance(must_cooperate_with_competent_authorities/1, 'celex:32024R1689/oj#art_22').
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
declared(must_verify_conformity/2, 'importer must verify conformity of high-risk AI system before placing on market', 'celex:32024R1689/oj#art_23').
declared(must_not_place_on_market/2, 'importer must not place non-conforming high-risk AI system on market', 'celex:32024R1689/oj#art_23').
declared(must_indicate_identity/2, 'importer must indicate name and address on high-risk AI system', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_conditions/2, 'importer must ensure storage and transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_23').
declared(must_keep_documentation/2, 'importer must keep documentation for 10 years after placing on market or putting into service', 'celex:32024R1689/oj#art_23').
declared(must_provide_information/2, 'importer must provide information and documentation to competent authorities upon reasoned request', 'celex:32024R1689/oj#art_23').
declared(must_cooperate_with_authorities/2, 'importer must cooperate with competent authorities on actions relating to high-risk AI system', 'celex:32024R1689/oj#art_23').
must_verify_conformity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    placing_on_market(S),
    conformity_assessment_carried_out(S),
    technical_documentation_drawn_up(S),
    bears_ce_marking(S),
    accompanied_by_eu_declaration_of_conformity(S),
    accompanied_by_instructions_for_use(S),
    authorised_representative_appointed(S).
conformity_assessment_carried_out(S) :-
    high_risk_ai_system(S),
    conformity_assessment(assessment(S)).
technical_documentation_drawn_up(S) :-
    high_risk_ai_system(S),
    provider(P),
    technical_documentation(drawn_up(P, S)).
bears_ce_marking(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
accompanied_by_eu_declaration_of_conformity(S) :-
    high_risk_ai_system(S),
    contains_eu_declaration_of_conformity(S).
accompanied_by_instructions_for_use(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
authorised_representative_appointed(S) :-
    high_risk_ai_system(S),
    provider(P),
    authorised_representative(R),
    appointed(P, R, S).
must_not_place_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_nonconformity(I, S),
    \+ brought_into_conformity(S).
must_immediately_inform(I, nonconformity(S)) :-
    importer(I),
    high_risk_ai_system(S),
    risk_presenting_system(S),
    provider(P),
    authorised_representative(R),
    market_surveillance_authority(A).
must_indicate_identity(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    indicates_name_and_address(I, S).
must_ensure_storage_conditions(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    under_responsibility(I, S),
    storage_or_transport_conditions_do_not_jeopardise_compliance(S).
must_keep_documentation(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    keeps_for(I, period(years(10), after(placing_on_market_or_putting_into_service(S))), documentation(S)).
must_provide_information(I, request(Authority, S)) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    reasoned_request(Authority, S),
    provides_information_and_documentation(I, Authority, S).
must_provide_information(I, technical_documentation(Authority, S)) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    ensures_technical_documentation_available(I, Authority, S).
must_cooperate_with_authorities(I, S) :-
    importer(I),
    high_risk_ai_system(S),
    national_competent_authority(Authority),
    action_by_authority(Authority, S),
    cooperates(I, Authority, S).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_identity/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_conditions/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_23').
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
declared(must_verify_before_making_available/2, 'distributor must verify CE marking, EU declaration of conformity, instructions for use, and provider/importer compliance', 'celex:32024R1689/oj#art_24/par_1').
declared(must_not_make_available_until_conformity/2, 'distributor must not make available a non-conforming high-risk AI system until brought into conformity', 'celex:32024R1689/oj#art_24/par_2').
declared(must_inform_of_risk/2, 'distributor must inform provider or importer when high-risk AI system presents a risk', 'celex:32024R1689/oj#art_24/par_2').
declared(must_ensure_storage_transport_compliance/2, 'distributor must ensure storage or transport conditions do not jeopardise compliance', 'celex:32024R1689/oj#art_24/par_3').
declared(must_take_corrective_actions_or_ensure/2, 'distributor must take corrective actions or ensure provider/importer/operator does so', 'celex:32024R1689/oj#art_24/par_4').
declared(must_immediately_inform_authorities/2, 'distributor must immediately inform provider/importer and competent authorities of risk and non-compliance details', 'celex:32024R1689/oj#art_24/par_4').
declared(must_provide_information_on_request/2, 'distributor must provide competent authority with information and documentation on reasoned request', 'celex:32024R1689/oj#art_24/par_5').
declared(must_cooperate_with_authorities/2, 'distributor must cooperate with competent authorities in actions relating to high-risk AI system', 'celex:32024R1689/oj#art_24/par_6').
must_verify_before_making_available(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    ce_marking(System),
    contains_eu_declaration_of_conformity(System),
    instructions_for_use(System),
    provider_complied_with_obligations(System),
    importer_complied_with_obligations(System).
provider_complied_with_obligations(System) :-
    provider(P),
    
    true.
importer_complied_with_obligations(System) :-
    importer(I),
    
    true.
must_not_make_available_until_conformity(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_conforming(Distributor, System).
must_inform_of_risk(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    ( provider(P) -> true ; importer(I) -> true ).
must_ensure_storage_transport_compliance(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System).
must_take_corrective_actions_or_ensure(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System),
    considers_non_conforming(Distributor, System).
must_immediately_inform_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System),
    risk_presenting_system(System).
must_provide_information_on_request(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    reasoned_request_from_competent_authority(System).
must_cooperate_with_authorities(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_union_market(Distributor, System).
considers_non_conforming(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    
    true.
under_responsibility(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System).
reasoned_request_from_competent_authority(System) :-
    high_risk_ai_system(System).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24/par_1').
provenance(must_not_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24/par_2').
provenance(must_inform_of_risk/2, 'celex:32024R1689/oj#art_24/par_2').
provenance(must_ensure_storage_transport_compliance/2, 'celex:32024R1689/oj#art_24/par_3').
provenance(must_take_corrective_actions_or_ensure/2, 'celex:32024R1689/oj#art_24/par_4').
provenance(must_immediately_inform_authorities/2, 'celex:32024R1689/oj#art_24/par_4').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_24/par_5').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_24/par_5').
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
declared(becomes_provider_under_circumstance/2, 'third party becomes provider of high-risk AI system under a specific circumstance', 'celex:32024R1689/oj#art_25').
declared(initial_provider_ceases/1, 'initial provider ceases to be considered provider of that specific AI system', 'celex:32024R1689/oj#art_25').
declared(must_cooperate_with_new_provider/2, 'initial provider must cooperate with new provider', 'celex:32024R1689/oj#art_25').
declared(must_specify_assistance_by_written_agreement/2, 'provider and third party must specify assistance by written agreement', 'celex:32024R1689/oj#art_25').
declared(open_source_third_party_exception_applies/1, 'exception for third parties making tools etc. available under free and open-source licence', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_becomes_provider/2, 'product manufacturer becomes provider of high-risk AI system under a specific circumstance', 'celex:32024R1689/oj#art_25').
becomes_provider_under_circumstance(ThirdParty, puts_name_or_trademark(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ).
becomes_provider_under_circumstance(ThirdParty, makes_substantial_modification(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    substantial_modification(S).
becomes_provider_under_circumstance(ThirdParty, modifies_intended_purpose(ThirdParty, S)) :-
    ( distributor(ThirdParty) ; importer(ThirdParty) ; deployer(ThirdParty) ),
    ai_system(S),
    \+ high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    intended_purpose(S).
initial_provider_ceases(InitialProvider) :-
    provider(InitialProvider),
    becomes_provider_under_circumstance(_, _).
must_cooperate_with_new_provider(InitialProvider, NewProvider) :-
    initial_provider_ceases(InitialProvider),
    becomes_provider_under_circumstance(NewProvider, _).
product_manufacturer_becomes_provider(Manufacturer, placed_on_market_together(Manufacturer, S, Product)) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    placing_on_market(S).
product_manufacturer_becomes_provider(Manufacturer, put_into_service_under_name(Manufacturer, S, Product)) :-
    product_manufacturer(Manufacturer),
    high_risk_ai_system(S),
    safety_component(S),
    putting_into_service(S).
must_specify_assistance_by_written_agreement(Provider, ThirdParty) :-
    provider(Provider),
    high_risk_ai_system(S),
    supplies_to_high_risk_system(ThirdParty, S),
    \+ open_source_third_party_exception_applies(ThirdParty).
open_source_third_party_exception_applies(ThirdParty) :-
    free_and_open_source_licence(ThirdParty),
    \+ general_purpose_ai_model(ThirdParty).
provenance(becomes_provider_under_circumstance/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider_ceases/1, 'celex:32024R1689/oj#art_25').
provenance(must_cooperate_with_new_provider/2, 'celex:32024R1689/oj#art_25').
provenance(must_specify_assistance_by_written_agreement/2, 'celex:32024R1689/oj#art_25').
provenance(open_source_third_party_exception_applies/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_becomes_provider/2, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

% ==== celex:32024R1689/oj#art_26 ====
declared(must_use_in_accordance_with_instructions/2, 'deployer must use high-risk AI system in accordance with instructions for use', 'celex:32024R1689/oj#art_26/par_1').
declared(must_assign_human_oversight/2, 'deployer must assign human oversight to competent natural persons', 'celex:32024R1689/oj#art_26/par_2').
declared(must_ensure_input_data_quality/2, 'deployer must ensure input data is relevant and representative', 'celex:32024R1689/oj#art_26/par_4').
declared(must_monitor_operation/2, 'deployer must monitor operation of high-risk AI system', 'celex:32024R1689/oj#art_26/par_5').
declared(must_inform_of_risk/3, 'deployer must inform provider or distributor and market surveillance authority of risk', 'celex:32024R1689/oj#art_26/par_5').
declared(must_inform_of_serious_incident/3, 'deployer must inform provider, importer or distributor and market surveillance authority of serious incident', 'celex:32024R1689/oj#art_26/par_5').
declared(must_suspend_use/2, 'deployer must suspend use of high-risk AI system', 'celex:32024R1689/oj#art_26/par_5').
declared(must_keep_logs/2, 'deployer must keep automatically generated logs', 'celex:32024R1689/oj#art_26/par_6').
declared(must_inform_workers/2, 'employer-deployer must inform workers and representatives of AI system use', 'celex:32024R1689/oj#art_26/par_7').
declared(must_comply_with_registration/2, 'public authority deployer must comply with registration obligations', 'celex:32024R1689/oj#art_26/par_8').
declared(must_not_use_unregistered_system/2, 'deployer must not use unregistered high-risk AI system', 'celex:32024R1689/oj#art_26/par_8').
declared(must_inform_of_unregistered_system/2, 'deployer must inform provider or distributor of unregistered system', 'celex:32024R1689/oj#art_26/par_8').
declared(must_use_transparency_information/2, 'deployer must use transparency information for data protection impact assessment', 'celex:32024R1689/oj#art_26/par_9').
declared(must_request_authorisation/2, 'deployer must request authorisation for post-remote biometric identification', 'celex:32024R1689/oj#art_26/par_10').
declared(must_stop_use_on_rejection/2, 'deployer must stop use and delete data if authorisation rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(must_document_use/2, 'deployer must document each use in police file', 'celex:32024R1689/oj#art_26/par_10').
declared(must_submit_annual_reports/2, 'deployer must submit annual reports on post-remote biometric identification use', 'celex:32024R1689/oj#art_26/par_10').
declared(must_inform_natural_persons/2, 'deployer must inform natural persons of AI system use in decisions', 'celex:32024R1689/oj#art_26/par_11').
declared(must_cooperate_with_authorities/2, 'deployer must cooperate with competent authorities', 'celex:32024R1689/oj#art_26/par_12').
declared(exercises_control_over_input_data/2, 'deployer exercises control over input data', 'celex:32024R1689/oj#art_26/par_4').
declared(has_reason_to_consider_risk/2, 'deployer has reason to consider use may result in risk', 'celex:32024R1689/oj#art_26/par_5').
declared(has_identified_serious_incident/2, 'deployer has identified a serious incident', 'celex:32024R1689/oj#art_26/par_5').
declared(cannot_reach_provider/2, 'deployer is not able to reach the provider', 'celex:32024R1689/oj#art_26/par_5').
declared(financial_institution_deployer/1, 'deployer is a financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_26/par_5').
declared(employer_deployer/1, 'deployer is an employer', 'celex:32024R1689/oj#art_26/par_7').
declared(public_authority_deployer/1, 'deployer is a public authority or Union institution', 'celex:32024R1689/oj#art_26/par_8').
declared(post_remote_biometric_identification_deployer/1, 'deployer of high-risk AI system for post-remote biometric identification', 'celex:32024R1689/oj#art_26/par_10').
declared(targeted_search_investigation/1, 'investigation for targeted search of suspected or convicted person', 'celex:32024R1689/oj#art_26/par_10').
declared(initial_identification_of_potential_suspect/1, 'use for initial identification of potential suspect based on objective facts', 'celex:32024R1689/oj#art_26/par_10').
declared(authorisation_rejected/1, 'requested authorisation is rejected', 'celex:32024R1689/oj#art_26/par_10').
declared(untargeted_use/1, 'use in an untargeted way without link to criminal offence', 'celex:32024R1689/oj#art_26/par_10').
declared(decision_based_solely_on_output/1, 'decision producing adverse legal effect based solely on system output', 'celex:32024R1689/oj#art_26/par_10').
declared(annex_3_decision_system/1, 'high-risk AI system referred to in Annex III that makes or assists decisions about natural persons', 'celex:32024R1689/oj#art_26/par_11').
declared(law_enforcement_purpose/1, 'use for law enforcement purposes', 'celex:32024R1689/oj#art_26/par_11').
must_use_in_accordance_with_instructions(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    instructions_for_use(I),
    accompanies(I, S).
must_assign_human_oversight(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_ensure_input_data_quality(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    exercises_control_over_input_data(D, S).
must_monitor_operation(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).
must_inform_of_risk(D, risk(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).
must_suspend_use(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    has_reason_to_consider_risk(D, S).
must_inform_of_serious_incident(D, serious_incident(S)) :-
    deployer(D),
    high_risk_ai_system(S),
    has_identified_serious_incident(D, S).
must_keep_logs(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    \+ financial_institution_deployer(D).
must_inform_workers(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    employer_deployer(D).
must_comply_with_registration(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D).
must_not_use_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).
must_inform_of_unregistered_system(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    public_authority_deployer(D),
    \+ registered_in_eu_database(S).
must_use_transparency_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
must_request_authorisation(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    targeted_search_investigation(I),
    \+ initial_identification_of_potential_suspect(I).
must_stop_use_on_rejection(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S),
    authorisation_rejected(S).
must_document_use(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
must_submit_annual_reports(D, S) :-
    deployer(D),
    post_remote_biometric_identification_system(S).
prohibited_untargeted_use(S) :-
    post_remote_biometric_identification_system(S),
    untargeted_use(S).
prohibited_decision_based_solely_on_output(S) :-
    post_remote_biometric_identification_system(S),
    decision_based_solely_on_output(S).
must_inform_natural_persons(D, S) :-
    deployer(D),
    annex_3_decision_system(S),
    \+ law_enforcement_purpose(S).
must_cooperate_with_authorities(D, S) :-
    deployer(D),
    high_risk_ai_system(S).
provenance(must_use_in_accordance_with_instructions/2, 'celex:32024R1689/oj#art_26/par_1').
provenance(must_assign_human_oversight/2, 'celex:32024R1689/oj#art_26/par_2').
provenance(must_ensure_input_data_quality/2, 'celex:32024R1689/oj#art_26/par_4').
provenance(must_monitor_operation/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_of_risk/3, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_suspend_use/2, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_inform_of_serious_incident/3, 'celex:32024R1689/oj#art_26/par_5').
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_26/par_6').
provenance(must_inform_workers/2, 'celex:32024R1689/oj#art_26/par_7').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_not_use_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_inform_of_unregistered_system/2, 'celex:32024R1689/oj#art_26/par_8').
provenance(must_use_transparency_information/2, 'celex:32024R1689/oj#art_26/par_9').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_stop_use_on_rejection/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_document_use/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_untargeted_use/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(prohibited_decision_based_solely_on_output/1, 'celex:32024R1689/oj#art_26/par_10').
provenance(must_inform_natural_persons/2, 'celex:32024R1689/oj#art_26/par_11').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_26/par_12').
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
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment before deploying high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority_of_fria/2, 'deployer must notify market surveillance authority of fundamental rights impact assessment results', 'celex:32024R1689/oj#art_27').
declared(must_update_fria/2, 'deployer must update fundamental rights impact assessment when elements change', 'celex:32024R1689/oj#art_27').
declared(fria_complements_dpia/2, 'fundamental rights impact assessment complements data protection impact assessment', 'celex:32024R1689/oj#art_27').
declared(must_develop_fria_template/1, 'AI Office must develop template for fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(deployer_subject_to_fria/1, 'deployer subject to fundamental rights impact assessment obligation', 'celex:32024R1689/oj#art_27').
declared(fria_exemption_applies/1, 'deployer exempt from notifying market surveillance authority of FRIA results', 'celex:32024R1689/oj#art_27').
deployer_subject_to_fria(D) :-
    deployer(D),
    high_risk_ai_system(S),
    deploying(D, S),
    \+ intended_for_area_annex_3_point_2(S),
    (   body_governed_by_public_law(D)
    ;   private_entity_providing_public_services(D)
    ;   deploying_annex_3_point_5_b_or_c_system(D, S)
    ).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    first_use(D, S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    similar_case(D, S),
    \+ previously_conducted_fria_exists(D, S),
    \+ existing_provider_impact_assessment_exists(D, S).
must_update_fria(D, S) :-
    deployer_subject_to_fria(D),
    deploying(D, S),
    element_of_fria_changed(D, S).
must_notify_market_surveillance_authority_of_fria(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    \+ fria_exemption_applies(D).
fria_exemption_applies(D) :-
    deployer(D),
    
    deployer_exempt_under_art_46_par_1(D).
fria_complements_dpia(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    data_protection_impact_assessment_conducted(D, S).
must_develop_fria_template(ai_office).
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority_of_fria/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fria/2, 'celex:32024R1689/oj#art_27').
provenance(fria_complements_dpia/2, 'celex:32024R1689/oj#art_27').
provenance(must_develop_fria_template/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_subject_to_fria/1, 'celex:32024R1689/oj#art_27').
provenance(fria_exemption_applies/1, 'celex:32024R1689/oj#art_27').
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
declared(must_designate_notifying_authority/2, 'Member State must designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28/par_1').
declared(may_use_national_accreditation_body/2, 'Member State may decide that assessment and monitoring is carried out by national accreditation body', 'celex:32024R1689/oj#art_28/par_2').
declared(must_safeguard_impartiality/1, 'notifying authority must be established to avoid conflict of interest and safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_28/par_3').
declared(must_separate_decision_makers/1, 'notifying authority must ensure notification decisions are taken by persons different from assessors', 'celex:32024R1689/oj#art_28/par_4').
declared(must_not_offer_conformity_assessment_activities/1, 'notifying authority must not offer or provide conformity assessment activities or consultancy services', 'celex:32024R1689/oj#art_28/par_5').
declared(must_safeguard_confidentiality/1, 'notifying authority must safeguard confidentiality of information obtained', 'celex:32024R1689/oj#art_28/par_6').
declared(must_have_competent_personnel/1, 'notifying authority must have adequate number of competent personnel with necessary expertise', 'celex:32024R1689/oj#art_28/par_7').
must_designate_notifying_authority(MemberState, Authority) :-
    notifying_authority(Authority),
    MemberState = _.
may_use_national_accreditation_body(MemberState, Body) :-
    MemberState = _,
    Body = _.
must_safeguard_impartiality(Authority) :-
    notifying_authority(Authority).
must_separate_decision_makers(Authority) :-
    notifying_authority(Authority).
must_not_offer_conformity_assessment_activities(Authority) :-
    notifying_authority(Authority).
must_safeguard_confidentiality(Authority) :-
    notifying_authority(Authority).
must_have_competent_personnel(Authority) :-
    notifying_authority(Authority).
provenance(must_designate_notifying_authority/2, 'celex:32024R1689/oj#art_28/par_1').
provenance(may_use_national_accreditation_body/2, 'celex:32024R1689/oj#art_28/par_2').
provenance(must_safeguard_impartiality/1, 'celex:32024R1689/oj#art_28/par_3').
provenance(must_separate_decision_makers/1, 'celex:32024R1689/oj#art_28/par_4').
provenance(must_not_offer_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_28/par_5').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_28/par_6').
provenance(must_have_competent_personnel/1, 'celex:32024R1689/oj#art_28/par_7').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application_for_notification/2, 'conformity assessment body must submit application for notification to notifying authority', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_description/1, 'application accompanied by description of activities, modules and AI system types', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_accreditation_certificate/1, 'application accompanied by accreditation certificate where one exists', 'celex:32024R1689/oj#art_29').
declared(application_includes_existing_designation_documents/1, 'application includes valid documents related to existing designations under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'conformity assessment body must provide documentary evidence for verification, recognition and monitoring', 'celex:32024R1689/oj#art_29').
declared(may_use_existing_designation_documents/1, 'notified body may use documents and certificates from other Union harmonisation legislation designations', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/1, 'notified body must update documentation when relevant changes occur', 'celex:32024R1689/oj#art_29').
must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).
application_accompanied_by_description(Application) :-
    offers_conformity_assessment_activities(Application).
application_accompanied_by_accreditation_certificate(Application) :-
    accreditation_certificate_exists(Application).
application_includes_existing_designation_documents(Application) :-
    existing_designation_documents_exist(Application).
must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_exists(Body),
    documentary_evidence_provided(Body, Authority).
may_use_existing_designation_documents(Body) :-
    notified_body(Body),
    designated_under_other_union_harmonisation_legislation(Body).
must_update_documentation(Body) :-
    notified_body(Body),
    relevant_changes_occur(Body).
declared(established_in_member_state/2, 'conformity assessment body established in the Member State of the notifying authority', 'celex:32024R1689/oj#art_29').
declared(accreditation_certificate_exists/1, 'accreditation certificate issued by national accreditation body exists', 'celex:32024R1689/oj#art_29').
declared(existing_designation_documents_exist/1, 'valid documents related to existing designations under other Union harmonisation legislation exist', 'celex:32024R1689/oj#art_29').
declared(documentary_evidence_provided/2, 'documentary evidence necessary for verification, recognition and monitoring is provided', 'celex:32024R1689/oj#art_29').
declared(designated_under_other_union_harmonisation_legislation/1, 'notified body designated under other Union harmonisation legislation', 'celex:32024R1689/oj#art_29').
declared(relevant_changes_occur/1, 'relevant changes occur to documentation', 'celex:32024R1689/oj#art_29').
provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(application_includes_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(may_notify/2, 'notifying authority may notify conformity assessment body', 'celex:32024R1689/oj#art_30/par_1').
declared(must_notify_commission_and_member_states/2, 'notifying authority shall notify Commission and other Member States of conformity assessment body', 'celex:32024R1689/oj#art_30/par_2').
declared(notification_includes/2, 'notification includes details of conformity assessment activities', 'celex:32024R1689/oj#art_30/par_3').
declared(notification_based_on_accreditation/1, 'notification is based on an accreditation certificate', 'celex:32024R1689/oj#art_30/par_3').
declared(must_provide_documentary_evidence/2, 'notifying authority shall provide documentary evidence attesting competence', 'celex:32024R1689/oj#art_30/par_3').
declared(may_perform_notified_body_activities/2, 'conformity assessment body may perform notified body activities', 'celex:32024R1689/oj#art_30/par_4').
declared(objection_raised/2, 'objection raised by Commission or Member State', 'celex:32024R1689/oj#art_30/par_4').
declared(must_enter_consultations/2, 'Commission shall enter into consultations with Member States and conformity assessment body', 'celex:32024R1689/oj#art_30/par_5').
declared(must_decide_authorisation/2, 'Commission shall decide whether authorisation is justified', 'celex:32024R1689/oj#art_30/par_5').
may_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    satisfied_requirements(Body, 'celex:32024R1689/oj#art_31').
satisfied_requirements(Body, Article) :-
    conformity_assessment_body(Body).
must_notify_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    may_notify(Authority, Body).
notification_includes(Notification, details(Activities, Modules, Systems, Attestation)) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    notification_based_on_accreditation(Notification),
    notification_includes(Notification, details(Activities, Modules, Systems, Attestation)).
notification_based_on_accreditation(Notification) :-
    notification_includes(Notification, details(_, _, _, _)).
must_provide_documentary_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ notification_based_on_accreditation(_),
    must_notify_commission_and_member_states(Authority, Body).
may_perform_notified_body_activities(Body, Activities) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    notification_based_on_accreditation(Notification),
    \+ objection_raised(_, _),
    within_period(Notification, weeks(2)).
may_perform_notified_body_activities(Body, Activities) :-
    conformity_assessment_body(Body),
    offers_conformity_assessment_activities(Body),
    \+ notification_based_on_accreditation(Notification),
    must_provide_documentary_evidence(_, Body),
    \+ objection_raised(_, _),
    within_period(Notification, months(2)).
objection_raised(Commission, Body) :-
    conformity_assessment_body(Body).
objection_raised(MemberState, Body) :-
    conformity_assessment_body(Body).
must_enter_consultations(Commission, consultation(MemberStates, Body)) :-
    objection_raised(_, Body),
    conformity_assessment_body(Body).
must_decide_authorisation(Commission, decision(MemberState, Body)) :-
    must_enter_consultations(Commission, consultation(_, Body)),
    conformity_assessment_body(Body).
provenance(may_notify/2, 'celex:32024R1689/oj#art_30/par_1').
provenance(must_notify_commission_and_member_states/2, 'celex:32024R1689/oj#art_30/par_2').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30/par_3').
provenance(notification_based_on_accreditation/1, 'celex:32024R1689/oj#art_30/par_3').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30/par_3').
provenance(may_perform_notified_body_activities/2, 'celex:32024R1689/oj#art_30/par_4').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_30/par_4').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30/par_5').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30/par_5').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(must_be_established_under_national_law/1, 'notified body must be established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(must_have_legal_personality/1, 'notified body must have legal personality', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_organisational_requirements/1, 'notified body must satisfy organisational, quality management, resources and process requirements', 'celex:32024R1689/oj#art_31').
declared(must_satisfy_cybersecurity_requirements/1, 'notified body must satisfy suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(must_ensure_confidence_in_performance/1, 'organisational structure, allocation of responsibilities, reporting lines and operation must ensure confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of_provider/2, 'notified body must be independent of provider of assessed high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(must_be_independent_of_other_operators/1, 'notified body must be independent of other operators with economic interest and competitors', 'celex:32024R1689/oj#art_31').
declared(must_not_be_directly_involved_in_ai_lifecycle/1, 'conformity assessment body, top-level management and personnel must not be directly involved in design, development, marketing or use of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(must_not_engage_in_conflicting_activities/1, 'must not engage in any activity that might conflict with independence of judgement or integrity', 'celex:32024R1689/oj#art_31').
declared(must_safeguard_independence_objectivity_impartiality/1, 'notified body must be organised and operated to safeguard independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(must_have_confidentiality_procedures/1, 'notified body must have documented procedures ensuring confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(must_observe_professional_secrecy/1, 'staff of notified body must observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(must_have_procedures_accounting_for_provider_characteristics/1, 'notified body must have procedures taking due account of provider size, sector, structure and system complexity', 'celex:32024R1689/oj#art_31').
declared(must_take_out_liability_insurance/1, 'notified body must take out appropriate liability insurance', 'celex:32024R1689/oj#art_31').
declared(must_have_professional_integrity_and_competence/1, 'notified body must carry out tasks with highest degree of professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(must_have_sufficient_internal_competences/1, 'notified body must have sufficient internal competences to evaluate tasks conducted by external parties', 'celex:32024R1689/oj#art_31').
declared(must_have_permanent_availability_of_personnel/1, 'notified body must have permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_coordination_activities/1, 'notified body must participate in coordination activities under Article 38', 'celex:32024R1689/oj#art_31').
declared(must_participate_in_standardisation/1, 'notified body must take part in or be represented in European standardisation organisations or ensure awareness of relevant standards', 'celex:32024R1689/oj#art_31').
must_be_established_under_national_law(B) :-
    notified_body(B).
must_have_legal_personality(B) :-
    notified_body(B).
must_satisfy_organisational_requirements(B) :-
    notified_body(B).
must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B).
must_ensure_confidence_in_performance(B) :-
    notified_body(B).
must_be_independent_of_provider(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    performs_conformity_assessment_on(B, S),
    provided_by(S, P).
must_be_independent_of_other_operators(B) :-
    notified_body(B).
must_not_be_directly_involved_in_ai_lifecycle(B) :-
    conformity_assessment_body(B).
must_not_engage_in_conflicting_activities(B) :-
    conformity_assessment_body(B).
must_safeguard_independence_objectivity_impartiality(B) :-
    notified_body(B).
must_document_impartiality_structure(B) :-
    notified_body(B).
must_have_confidentiality_procedures(B) :-
    notified_body(B).
must_observe_professional_secrecy(B) :-
    notified_body(B).
must_have_procedures_accounting_for_provider_characteristics(B) :-
    notified_body(B).
must_take_out_liability_insurance(B) :-
    notified_body(B),
    \+ liability_assumed_by_member_state(B).
must_have_professional_integrity_and_competence(B) :-
    notified_body(B).
must_have_sufficient_internal_competences(B) :-
    notified_body(B).
must_have_permanent_availability_of_personnel(B) :-
    notified_body(B).
must_participate_in_coordination_activities(B) :-
    notified_body(B).
must_participate_in_standardisation(B) :-
    notified_body(B).
declared(performs_conformity_assessment_on/2, 'notified body performs conformity assessment on an AI system', 'celex:32024R1689/oj#art_31').
declared(provided_by/2, 'AI system is provided by a provider', 'celex:32024R1689/oj#art_31').
declared(liability_assumed_by_member_state/1, 'liability is assumed by the Member State in which the notified body is established', 'celex:32024R1689/oj#art_31').
provenance(must_be_established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_other_operators/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_ai_lifecycle/1, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_impartiality_structure/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_procedures_accounting_for_provider_characteristics/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_out_liability_insurance/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_professional_integrity_and_competence/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_conformity_with_notified_body_requirements/1, 'conformity assessment body presumed to comply with notified body requirements', 'celex:32024R1689/oj#art_32').
presumed_conformity_with_notified_body_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_harmonised_standards(B),
    harmonised_standards_cover_requirements(B).
demonstrates_conformity_with_harmonised_standards(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    references_published_in_ojeu(H),
    body_conforms_to_standard(B, H).
harmonised_standards_cover_requirements(B) :-
    conformity_assessment_body(B),
    harmonised_standard(H),
    references_published_in_ojeu(H),
    body_conforms_to_standard(B, H),
    standard_covers_article_31_requirements(H).
provenance(presumed_conformity_with_notified_body_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_32').
provenance(harmonised_standards_cover_requirements/1, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(must_ensure_subcontractor_meets_requirements/2, 'notified body must ensure subcontractor or subsidiary meets requirements', 'celex:32024R1689/oj#art_33').
declared(must_inform_notifying_authority_of_subcontracting/2, 'notified body must inform notifying authority of subcontracting', 'celex:32024R1689/oj#art_33').
declared(must_take_full_responsibility_for_subcontracted_tasks/2, 'notified body must take full responsibility for tasks performed by subcontractors or subsidiaries', 'celex:32024R1689/oj#art_33').
declared(must_obtain_provider_agreement_for_subcontracting/2, 'notified body must obtain provider agreement for subcontracting or subsidiary activities', 'celex:32024R1689/oj#art_33').
declared(must_make_subsidiary_list_publicly_available/1, 'notified body must make list of subsidiaries publicly available', 'celex:32024R1689/oj#art_33').
declared(must_keep_subcontractor_documents_available/2, 'notified body must keep subcontractor qualification and work documents at disposal of notifying authority', 'celex:32024R1689/oj#art_33').
must_ensure_subcontractor_meets_requirements(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    meets_requirements(Sub, 'celex:32024R1689/oj#art_31').
must_inform_notifying_authority_of_subcontracting(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    notifying_authority(Authority),
    must_inform(Body, Authority, subcontracting(Sub)).
must_take_full_responsibility_for_subcontracted_tasks(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    tasks_performed(Sub, Tasks),
    responsible(Body, Tasks).
must_obtain_provider_agreement_for_subcontracting(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    provider(Provider),
    agreement(Provider, subcontracting(Sub)).
must_make_subsidiary_list_publicly_available(Body) :-
    notified_body(Body),
    subsidiary_list(Body, List),
    publicly_available(List).
must_keep_subcontractor_documents_available(Body, Sub) :-
    notified_body(Body),
    (   subcontractor(Sub) ; subsidiary(Sub) ),
    notifying_authority(Authority),
    documents(assessment(qualifications(Sub)), work_carried_out(Sub)),
    kept_at_disposal(Authority, documents(assessment(qualifications(Sub)), work_carried_out(Sub)), period(years(5), from(termination_date(subcontracting)))).
provenance(must_ensure_subcontractor_meets_requirements/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_notifying_authority_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_full_responsibility_for_subcontracted_tasks/2, 'celex:32024R1689/oj#art_33').
provenance(must_obtain_provider_agreement_for_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_make_subsidiary_list_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(must_keep_subcontractor_documents_available/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body must verify conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/2, 'notified body must avoid unnecessary burdens for providers', 'celex:32024R1689/oj#art_34').
declared(must_respect_rigour_and_protection/2, 'notified body must respect degree of rigour and level of protection', 'celex:32024R1689/oj#art_34').
declared(must_make_available_documentation/2, 'notified body must make available documentation to notifying authority', 'celex:32024R1689/oj#art_34').
must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System),
    must_verify_conformity(Body, System).
must_respect_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    must_verify_conformity(Body, System).
must_make_available_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_make_available_documentation(Body, Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_identification_number/2, 'Commission must assign a single identification number to a notified body', 'celex:32024R1689/oj#art_35').
declared(must_make_publicly_available/2, 'Commission must make publicly available the list of notified bodies', 'celex:32024R1689/oj#art_35').
declared(must_keep_list_up_to_date/1, 'Commission must ensure the list of notified bodies is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign_identification_number(Commission, Body) :-
    notified_body(Body).
must_make_publicly_available(Commission, list_of_notified_bodies) :-
    notified_body(_).
must_keep_list_up_to_date(Commission) :-
    notified_body(_).
provenance(must_assign_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify_changes/2, 'notifying authority must notify Commission and Member States of relevant changes to notification', 'celex:32024R1689/oj#art_36/par_1').
declared(extension_of_scope_procedures_apply/1, 'procedures of Articles 29 and 30 apply to extension of scope', 'celex:32024R1689/oj#art_36/par_2').
declared(other_changes_procedures_apply/1, 'procedures of paragraphs 3-9 apply to changes other than extension of scope', 'celex:32024R1689/oj#art_36/par_2').
declared(must_inform_cessation/2, 'notified body must inform notifying authority and providers of cessation', 'celex:32024R1689/oj#art_36/par_3').
declared(certificates_remain_valid_after_cessation/1, 'certificates remain valid for nine months after cessation under conditions', 'celex:32024R1689/oj#art_36/par_3').
declared(must_withdraw_designation_on_cessation/2, 'notifying authority must withdraw designation when notified body ceases activity', 'celex:32024R1689/oj#art_36/par_3').
declared(must_investigate_noncompliance/2, 'notifying authority must investigate if notified body no longer meets requirements or fails obligations', 'celex:32024R1689/oj#art_36/par_4').
declared(must_inform_body_of_objections/2, 'notifying authority must inform notified body of objections and allow views', 'celex:32024R1689/oj#art_36/par_4').
declared(must_restrict_suspend_withdraw_designation/2, 'notifying authority must restrict, suspend or withdraw designation on conclusion of noncompliance', 'celex:32024R1689/oj#art_36/par_4').
declared(must_inform_commission_and_member_states_of_designation_change/2, 'notifying authority must immediately inform Commission and Member States of designation change', 'celex:32024R1689/oj#art_36/par_4').
declared(must_inform_providers_of_designation_change/2, 'notified body must inform providers within 10 days of designation suspension, restriction or withdrawal', 'celex:32024R1689/oj#art_36/par_5').
declared(must_preserve_and_make_available_files/2, 'notifying authority must keep files and make them available on request', 'celex:32024R1689/oj#art_36/par_6').
declared(must_assess_impact_on_certificates/2, 'notifying authority must assess impact on certificates issued by notified body', 'celex:32024R1689/oj#art_36/par_7/a').
declared(must_submit_findings_report/2, 'notifying authority must submit report on findings within three months', 'celex:32024R1689/oj#art_36/par_7/b').
declared(must_require_suspension_or_withdrawal_of_unduly_issued_certificates/2, 'notifying authority must require suspension or withdrawal of unduly issued certificates', 'celex:32024R1689/oj#art_36/par_7/c').
declared(must_inform_commission_and_member_states_of_required_suspension_or_withdrawal/2, 'notifying authority must inform Commission and Member States of required suspension or withdrawal of certificates', 'celex:32024R1689/oj#art_36/par_7/d').
declared(must_provide_relevant_information_to_national_competent_authority/2, 'notifying authority must provide relevant information to national competent authority', 'celex:32024R1689/oj#art_36/par_7/e').
declared(certificates_remain_valid_during_suspension_or_restriction/1, 'certificates remain valid during suspension or restriction under specified circumstances', 'celex:32024R1689/oj#art_36/par_8').
declared(certificates_remain_valid_after_withdrawal/1, 'certificates remain valid for nine months after withdrawal under specified circumstances', 'celex:32024R1689/oj#art_36/par_9').
declared(may_extend_provisional_validity/2, 'national competent authority may extend provisional validity of certificates', 'celex:32024R1689/oj#art_36/par_9/unp_2').
declared(must_immediately_inform_of_assumption_of_functions/2, 'national competent authority or notified body assuming functions must immediately inform', 'celex:32024R1689/oj#art_36/par_9/unp_3').
must_notify_changes(Authority, change(notification(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    relevant_change(notification(Body)).
relevant_change(notification(Body)) :-
    notified_body(Body).
extension_of_scope_procedures_apply(change(notification(Body))) :-
    notified_body(Body),
    extension_of_scope(notification(Body)).
other_changes_procedures_apply(change(notification(Body))) :-
    notified_body(Body),
    \+ extension_of_scope(notification(Body)).
extension_of_scope(notification(_Body)).
must_inform_cessation(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    decides_to_cease(Body),
    notifying_authority(Authority),
    findall(P, provider(P), Providers).
decides_to_cease(Body) :-
    notified_body(Body).
certificates_remain_valid_after_cessation(cessation(Body, AssumingBody)) :-
    notified_body(Body),
    notified_body(AssumingBody),
    Body \= AssumingBody,
    confirmed_in_writing(AssumingBody, assume_responsibilities(Body)).
must_withdraw_designation_on_cessation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activity(Body).
ceased_activity(Body) :-
    notified_body(Body).
must_investigate_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider_noncompliance(Authority, Body).
sufficient_reason_to_consider_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body).
must_inform_body_of_objections(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_investigate_noncompliance(Authority, Body).
must_restrict_suspend_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    concludes_noncompliance(Authority, Body).
concludes_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body).
must_inform_commission_and_member_states_of_designation_change(Authority, change(designation(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_restrict_suspend_withdraw_designation(Authority, Body).
must_inform_providers_of_designation_change(Body, change(designation(Body))) :-
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).
designation_suspended_restricted_or_withdrawn(Body) :-
    notified_body(Body).
must_preserve_and_make_available_files(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
designation_restricted_suspended_or_withdrawn(Body) :-
    notified_body(Body).
must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_submit_findings_report(Authority, report(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).
must_inform_commission_and_member_states_of_required_suspension_or_withdrawal(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body).
must_provide_relevant_information_to_national_competent_authority(Authority, information(certificates(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body).
certificates_remain_valid_during_suspension_or_restriction(certificates(Body)) :-
    notified_body(Body),
    designation_suspended_or_restricted(Body),
    \+ unduly_issued(certificates(Body)),
    (   confirmed_no_risk_and_timeline(Body)
    ;   confirmed_no_new_certificates_and_capability(Body)
    ).
designation_suspended_or_restricted(Body) :-
    notified_body(Body).
unduly_issued(certificates(_Body)).
confirmed_no_risk_and_timeline(Body) :-
    notified_body(Body).
confirmed_no_new_certificates_and_capability(Body) :-
    notified_body(Body).
certificates_remain_valid_after_withdrawal(certificates(Body)) :-
    notified_body(Body),
    designation_withdrawn(Body),
    \+ unduly_issued(certificates(Body)),
    confirmed_no_risk_by_national_competent_authority(Body),
    another_body_confirmed_immediate_responsibility(Body).
designation_withdrawn(Body) :-
    notified_body(Body).
confirmed_no_risk_by_national_competent_authority(Body) :-
    notified_body(Body).
another_body_confirmed_immediate_responsibility(Body) :-
    notified_body(Body).
may_extend_provisional_validity(Authority, certificates(Body)) :-
    national_competent_authority(Authority),
    notified_body(Body),
    certificates_remain_valid_after_withdrawal(certificates(Body)).
must_immediately_inform_of_assumption_of_functions(Informer, assumption(Body)) :-
    (   national_competent_authority(Informer)
    ;   notified_body(Informer)
    ),
    notified_body(Body),
    assumes_functions(Informer, Body).
assumes_functions(Informer, Body) :-
    (   national_competent_authority(Informer)
    ;   notified_body(Informer)
    ),
    notified_body(Body).
provenance(must_notify_changes/2, 'celex:32024R1689/oj#art_36/par_1').
provenance(extension_of_scope_procedures_apply/1, 'celex:32024R1689/oj#art_36/par_2').
provenance(other_changes_procedures_apply/1, 'celex:32024R1689/oj#art_36/par_2').
provenance(must_inform_cessation/2, 'celex:32024R1689/oj#art_36/par_3').
provenance(certificates_remain_valid_after_cessation/1, 'celex:32024R1689/oj#art_36/par_3').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36/par_3').
provenance(must_investigate_noncompliance/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_body_of_objections/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_restrict_suspend_withdraw_designation/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_commission_and_member_states_of_designation_change/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36/par_5').
provenance(must_preserve_and_make_available_files/2, 'celex:32024R1689/oj#art_36/par_6').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36/par_7/a').
provenance(must_submit_findings_report/2, 'celex:32024R1689/oj#art_36/par_7/b').
provenance(must_require_suspension_or_withdrawal_of_unduly_issued_certificates/2, 'celex:32024R1689/oj#art_36/par_7/c').
provenance(must_inform_commission_and_member_states_of_required_suspension_or_withdrawal/2, 'celex:32024R1689/oj#art_36/par_7/d').
provenance(must_provide_relevant_information_to_national_competent_authority/2, 'celex:32024R1689/oj#art_36/par_7/e').
provenance(certificates_remain_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36/par_8').
provenance(certificates_remain_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36/par_9').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36/par_9/unp_2').
provenance(must_immediately_inform_of_assumption_of_functions/2, 'celex:32024R1689/oj#art_36/par_9/unp_3').
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
declared(must_investigate_competence_doubts/2, 'Commission must investigate cases where there are reasons to doubt competence of notified body', 'celex:32024R1689/oj#art_37').
declared(must_provide_information_on_request/2, 'notifying authority must provide Commission with relevant information on request', 'celex:32024R1689/oj#art_37').
declared(must_treat_information_confidentially/2, 'Commission must ensure sensitive information obtained in investigations is treated confidentially', 'celex:32024R1689/oj#art_37').
declared(must_inform_and_request_corrective_measures/3, 'Commission must inform notifying Member State and request corrective measures when notified body fails requirements', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_withdraw_designation/2, 'Commission may suspend, restrict or withdraw designation by implementing act', 'celex:32024R1689/oj#art_37').
must_investigate_competence_doubts(Commission, Body) :-
    notified_body(Body),
    reasons_to_doubt_competence_or_fulfilment(Body).
must_provide_information_on_request(Authority, Commission) :-
    notifying_authority(Authority),
    request_from_commission(Commission, information(notification_or_maintenance_of_competence)).
must_inform_and_request_corrective_measures(Commission, MemberState, Body) :-
    notified_body(Body),
    \+ meets_notification_requirements(Body),
    inform_member_state(Commission, MemberState, non_compliance(Body)),
    request_corrective_measures(Commission, MemberState, corrective_measures(Body)).
may_suspend_restrict_withdraw_designation(Commission, Body) :-
    notified_body(Body),
    member_state_fails_corrective_measures(Body),
    implementing_act(Commission, suspend_restrict_withdraw(Body)).
declared(reasons_to_doubt_competence_or_fulfilment/1, 'there are reasons to doubt competence or continued fulfilment of requirements', 'celex:32024R1689/oj#art_37').
declared(request_from_commission/2, 'Commission requests information', 'celex:32024R1689/oj#art_37').
declared(sensitive_information/1, 'information is sensitive', 'celex:32024R1689/oj#art_37').
declared(obtained_in_investigation/2, 'information obtained in course of investigation', 'celex:32024R1689/oj#art_37').
declared(meets_notification_requirements/1, 'notified body meets requirements for its notification', 'celex:32024R1689/oj#art_37').
declared(inform_member_state/3, 'Commission informs Member State', 'celex:32024R1689/oj#art_37').
declared(request_corrective_measures/3, 'Commission requests corrective measures', 'celex:32024R1689/oj#art_37').
declared(member_state_fails_corrective_measures/1, 'Member State fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
declared(implementing_act/2, 'act adopted in accordance with examination procedure', 'celex:32024R1689/oj#art_37').
provenance(must_investigate_competence_doubts/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_request/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_and_request_corrective_measures/3, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw_designation/2, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination_and_cooperation/2, 'Commission must ensure coordination and cooperation between notified bodies', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation_in_sectoral_group/2, 'notifying authority must ensure its notified bodies participate in the sectoral group', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange_of_knowledge/2, 'Commission must provide for exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
must_ensure_coordination_and_cooperation(Commission, sectoral_group(notified_bodies)) :-
    ai_office(Commission),
    high_risk_ai_system(_S),
    conformity_assessment(_CA),
    notified_body(B),
    offers_conformity_assessment_activities(B).
must_ensure_participation_in_sectoral_group(Authority, sectoral_group(notified_bodies)) :-
    notifying_authority(Authority),
    notified_body(B),
    must_ensure_coordination_and_cooperation(_Commission, sectoral_group(notified_bodies)).
must_provide_exchange_of_knowledge(Commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    ai_office(Commission),
    notifying_authority(_A).
provenance(must_ensure_coordination_and_cooperation/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(conformity_assessment_body_third_country/1, 'conformity assessment body established under third country law', 'celex:32024R1689/oj#art_39').
declared(union_agreement_third_country/1, 'third country with which the Union has concluded an agreement', 'celex:32024R1689/oj#art_39').
declared(meets_requirements_art_31/1, 'meets the requirements laid down in Article 31', 'celex:32024R1689/oj#art_39').
declared(ensures_equivalent_compliance/1, 'ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
authorised_conformity_assessment_body_third_country(B) :-
    conformity_assessment_body(B),
    established_in_third_country(B),
    union_agreement_third_country(C),
    established_under_law_of(B, C),
    ( meets_requirements_art_31(B)
    ; ensures_equivalent_compliance(B)
    ).
provenance(authorised_conformity_assessment_body_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(conformity_assessment_body_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(union_agreement_third_country/1, 'celex:32024R1689/oj#art_39').
provenance(meets_requirements_art_31/1, 'celex:32024R1689/oj#art_39').
provenance(ensures_equivalent_compliance/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(must_issue_standardisation_requests/1, 'Commission must issue standardisation requests', 'celex:32024R1689/oj#art_40').
declared(must_consult_board_and_stakeholders/1, 'Commission must consult Board and stakeholders', 'celex:32024R1689/oj#art_40').
declared(must_specify_standards_clear_consistent/1, 'Commission must specify standards are clear and consistent', 'celex:32024R1689/oj#art_40').
declared(must_request_evidence_of_best_efforts/1, 'Commission must request evidence of best efforts', 'celex:32024R1689/oj#art_40').
declared(must_seek_to_promote_investment_and_innovation/1, 'participants must seek to promote investment and innovation', 'celex:32024R1689/oj#art_40').
presumed_conformity(S) :-
    high_risk_ai_system(S),
    in_conformity_with_harmonised_standards(S).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    in_conformity_with_harmonised_standards(M).
in_conformity_with_harmonised_standards(X) :-
    harmonised_standard(H),
    reference_published_in_official_journal(H),
    covers_requirements_or_obligations(H, X).
must_consult_board_and_stakeholders(Commission) :-
    ai_office(Commission),
    preparing_standardisation_request(Commission).
must_specify_standards_clear_consistent(Commission) :-
    ai_office(Commission),
    issuing_standardisation_request(Commission).
must_request_evidence_of_best_efforts(Commission) :-
    ai_office(Commission),
    issuing_standardisation_request(Commission).
must_seek_to_promote_investment_and_innovation(Participant) :-
    involved_in_standardisation_process(Participant).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(in_conformity_with_harmonised_standards/1, 'celex:32024R1689/oj#art_40').
provenance(must_issue_standardisation_requests/1, 'celex:32024R1689/oj#art_40').
provenance(must_consult_board_and_stakeholders/1, 'celex:32024R1689/oj#art_40').
provenance(must_specify_standards_clear_consistent/1, 'celex:32024R1689/oj#art_40').
provenance(must_request_evidence_of_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(must_seek_to_promote_investment_and_innovation/1, 'celex:32024R1689/oj#art_40').
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
declared(common_specification_adopted/1, 'common specification adopted by the Commission', 'celex:32024R1689/oj#art_41').
declared(common_specification_covers_requirements/1, 'common specification covers requirements of Section 2 or obligations of Sections 2 and 3', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_request_not_accepted/1, 'request for harmonised standard not accepted by any European standardisation organisation', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_not_delivered_in_time/1, 'harmonised standard not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_insufficiently_addresses_fundamental_rights/1, 'harmonised standard insufficiently addresses fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_does_not_comply_with_request/1, 'harmonised standard does not comply with the request', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_reference_published/1, 'reference to harmonised standard published in OJEU', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_reference_expected/1, 'reference to harmonised standard expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(must_consult_advisory_forum/1, 'Commission must consult advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(must_inform_committee/1, 'Commission must inform committee before preparing draft implementing act', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_through_common_specification/1, 'system or model presumed conformant through common specification', 'celex:32024R1689/oj#art_41').
declared(must_repeal_common_specification/1, 'Commission must repeal common specification when harmonised standard published', 'celex:32024R1689/oj#art_41').
declared(must_justify_equivalent_technical_solution/2, 'provider must justify equivalent technical solution when not complying with common specification', 'celex:32024R1689/oj#art_41').
declared(must_inform_commission_of_shortcoming/2, 'Member State must inform Commission of common specification shortcoming', 'celex:32024R1689/oj#art_41').
common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_request_not_accepted(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).
common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_not_delivered_in_time(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).
common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_insufficiently_addresses_fundamental_rights(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).
common_specification_adopted(CS) :-
    common_specification(CS),
    harmonised_standard_does_not_comply_with_request(CS),
    \+ harmonised_standard_reference_published(CS),
    \+ harmonised_standard_reference_expected(CS).
must_consult_advisory_forum(CS) :-
    common_specification_adopted(CS).
must_inform_committee(CS) :-
    common_specification_adopted(CS).
presumed_conformity_through_common_specification(S) :-
    ( high_risk_ai_system(S) ; general_purpose_ai_model(S) ),
    common_specification_covers_requirements(S).
must_repeal_common_specification(CS) :-
    common_specification(CS),
    harmonised_standard_reference_published(CS).
must_justify_equivalent_technical_solution(Provider, S) :-
    provider(Provider),
    ( high_risk_ai_system(S) ; general_purpose_ai_model(S) ),
    common_specification_covers_requirements(S),
    \+ presumed_conformity_through_common_specification(S).
must_inform_commission_of_shortcoming(MemberState, CS) :-
    common_specification(CS),
    \+ common_specification_covers_requirements(CS).
provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(must_consult_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee/1, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_through_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_technical_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission_of_shortcoming/2, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

% ==== celex:32024R1689/oj#art_42 ====
declared(trained_and_tested_on_relevant_data/1, 'trained and tested on data reflecting specific geographical, behavioural, contextual or functional setting', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme/1, 'certified or statement of conformity issued under cybersecurity scheme', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_scheme_reference_published/1, 'references of cybersecurity scheme published in OJEU', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certificate_covers_requirements/1, 'cybersecurity certificate or statement covers art_15 requirements', 'celex:32024R1689/oj#art_42').
presumed_conformity(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_relevant_data(S).
presumed_conformity(S) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme(S),
    cybersecurity_scheme_reference_published(S),
    cybersecurity_certificate_covers_requirements(S).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_relevant_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_scheme_reference_published/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_covers_requirements/1, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(conformity_assessment_procedure/2, 'conformity assessment procedure applicable to a high-risk AI system', 'celex:32024R1689/oj#art_43').
declared(must_follow_conformity_assessment/2, 'provider must follow a specific conformity assessment procedure', 'celex:32024R1689/oj#art_43').
declared(must_undergo_new_conformity_assessment/1, 'high-risk AI system must undergo a new conformity assessment', 'celex:32024R1689/oj#art_43').
declared(substantial_modification_occurred/1, 'a substantial modification has occurred', 'celex:32024R1689/oj#art_43').
declared(pre_determined_change/1, 'change pre-determined by the provider at initial conformity assessment', 'celex:32024R1689/oj#art_43').
declared(applied_harmonised_standards/1, 'provider applied harmonised standards', 'celex:32024R1689/oj#art_43').
declared(applied_common_specifications/1, 'provider applied common specifications', 'celex:32024R1689/oj#art_43').
declared(harmonised_standards_exist/0, 'harmonised standards exist', 'celex:32024R1689/oj#art_43').
declared(common_specifications_available/0, 'common specifications are available', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_published_with_restriction/1, 'harmonised standard published with a restriction', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement_immigration_asylum_or_union/1, 'intended to be put into service by law enforcement, immigration, asylum authorities or Union institutions', 'celex:32024R1689/oj#art_43').
declared(covered_by_union_harmonisation_legislation/1, 'covered by Union harmonisation legislation listed in Annex I Section A', 'celex:32024R1689/oj#art_43').
declared(manufacturer_opt_out_allowed/1, 'legal act enables manufacturer to opt out from third-party conformity assessment', 'celex:32024R1689/oj#art_43').
declared(applied_all_harmonised_standards/1, 'manufacturer applied all harmonised standards covering all relevant requirements', 'celex:32024R1689/oj#art_43').
declared(applied_all_common_specifications/1, 'manufacturer applied common specifications covering all requirements', 'celex:32024R1689/oj#art_43').
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_harmonised_standards(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_common_specifications(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_harmonised_standards(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    applied_common_specifications(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ harmonised_standards_exist,
    \+ common_specifications_available.
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    \+ applied_harmonised_standards(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    common_specifications_available,
    \+ applied_common_specifications(S).
conformity_assessment_procedure(S, annex_7_with_notified_body) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    harmonised_standard_published_with_restriction(HS),
    \+ applied_harmonised_standards(S).
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S, annex_7_with_notified_body),
    \+ intended_for_law_enforcement_immigration_asylum_or_union(S).
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S, annex_7_with_notified_body),
    intended_for_law_enforcement_immigration_asylum_or_union(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    annex_3_point_2_system(S).
must_follow_conformity_assessment(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    manufacturer_opt_out_allowed(S),
    applied_all_harmonised_standards(S).
conformity_assessment_procedure(S, internal_control) :-
    high_risk_ai_system(S),
    covered_by_union_harmonisation_legislation(S),
    manufacturer_opt_out_allowed(S),
    applied_all_common_specifications(S).
must_undergo_new_conformity_assessment(S) :-
    high_risk_ai_system(S),
    substantial_modification_occurred(S),
    \+ pre_determined_change(S).
provenance(conformity_assessment_procedure/2, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment/2, 'celex:32024R1689/oj#art_43').
provenance(must_undergo_new_conformity_assessment/1, 'celex:32024R1689/oj#art_43').
provenance(substantial_modification_occurred/1, 'celex:32024R1689/oj#art_43').
provenance(pre_determined_change/1, 'celex:32024R1689/oj#art_43').
provenance(applied_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applied_common_specifications/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standards_exist/0, 'celex:32024R1689/oj#art_43').
provenance(common_specifications_available/0, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_immigration_asylum_or_union/1, 'celex:32024R1689/oj#art_43').
provenance(covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_43').
provenance(manufacturer_opt_out_allowed/1, 'celex:32024R1689/oj#art_43').
provenance(applied_all_harmonised_standards/1, 'celex:32024R1689/oj#art_43').
provenance(applied_all_common_specifications/1, 'celex:32024R1689/oj#art_43').
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
declared(certificate_language/1, 'certificate drawn up in easily understood language', 'celex:32024R1689/oj#art_44').
declared(certificate_validity_period/2, 'certificate validity period for a system', 'celex:32024R1689/oj#art_44').
declared(certificate_extension_period/2, 'maximum extension period for a certificate', 'celex:32024R1689/oj#art_44').
declared(must_suspend_or_withdraw_certificate/2, 'notified body must suspend, withdraw or restrict certificate', 'celex:32024R1689/oj#art_44').
declared(must_give_reasons/2, 'notified body must give reasons for decision', 'celex:32024R1689/oj#art_44').
declared(appeal_available/1, 'appeal procedure available against notified body decisions', 'celex:32024R1689/oj#art_44').
must_draw_up_certificate_in_language(Body, Certificate) :-
    notified_body(Body),
    certificate_language(Certificate).
certificate_language(Certificate) :-
    
    
    true.
certificate_validity_period(Certificate, years(5)) :-
    
    true.
certificate_validity_period(Certificate, years(4)) :-
    
    true.
certificate_extension_period(Certificate, years(5)) :-
    
    true.
certificate_extension_period(Certificate, years(4)) :-
    
    true.
must_allow_extension_on_request(Body, Certificate) :-
    notified_body(Body),
    
    true.
supplement_valid_if_certificate_valid(Supplement, Certificate) :-
    
    true.
must_suspend_or_withdraw_certificate(Body, Certificate) :-
    notified_body(Body),
    finds_no_longer_meets_requirements(Body, System),
    certificate_relates_to(Certificate, System),
    \+ compliance_ensured_by_corrective_action(System, Body).
must_impose_restrictions_on_certificate(Body, Certificate) :-
    notified_body(Body),
    finds_no_longer_meets_requirements(Body, System),
    certificate_relates_to(Certificate, System),
    \+ compliance_ensured_by_corrective_action(System, Body).
must_give_reasons(Body, Decision) :-
    notified_body(Body),
    decision_affects_certificate(Decision).
appeal_available(Decision) :-
    decision_by_notified_body(Decision).
finds_no_longer_meets_requirements(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    
    true.
compliance_ensured_by_corrective_action(System, Body) :-
    high_risk_ai_system(System),
    notified_body(Body),
    
    true.
certificate_relates_to(Certificate, System) :-
    
    true.
decision_affects_certificate(Decision) :-
    
    true.
decision_by_notified_body(Decision) :-
    
    true.
provenance(certificate_language/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(must_give_reasons/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'notified body must inform other notified bodies of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_provide_relevant_information/2, 'notified body must provide relevant information to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(must_safeguard_confidentiality/2, 'notified body must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(Body, issued_certificates_and_approvals) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).
must_inform_notifying_authority(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).
must_inform_notifying_authority(Body, refusal_restriction_suspension_withdrawal) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).
must_inform_notifying_authority(Body, circumstances_affecting_scope_or_conditions) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).
must_inform_notifying_authority(Body, request_for_information_from_market_surveillance) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).
must_inform_notifying_authority(Body, conformity_assessment_activities_performed) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_inform_notifying_authority(Body, Authority).
must_inform_other_notified_bodies(Body, refused_suspended_withdrawn_quality_approvals) :-
    notified_body(Body).
must_inform_other_notified_bodies(Body, issued_quality_approvals_on_request) :-
    notified_body(Body).
must_inform_other_notified_bodies(Body, refused_withdrawn_suspended_restricted_certificates) :-
    notified_body(Body).
must_inform_other_notified_bodies(Body, issued_certificates_on_request) :-
    notified_body(Body).
must_provide_relevant_information(Body, negative_conformity_results) :-
    notified_body(Body).
must_provide_relevant_information(Body, positive_conformity_results_on_request) :-
    notified_body(Body).
must_safeguard_confidentiality(Body, obtained_information) :-
    notified_body(Body).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(derogation_authorisation/1, 'authorisation to derogate from conformity assessment procedure', 'celex:32024R1689/oj#art_46').
declared(exceptional_reason/1, 'exceptional reason of public security, protection of life/health, environment, or key assets', 'celex:32024R1689/oj#art_46').
declared(urgency_situation/1, 'duly justified situation of urgency', 'celex:32024R1689/oj#art_46').
declared(imminent_threat/1, 'specific, substantial and imminent threat to life or physical safety', 'celex:32024R1689/oj#art_46').
declared(law_enforcement_or_civil_protection_authority/1, 'law-enforcement authority or civil protection authority', 'celex:32024R1689/oj#art_46').
declared(must_authorise_placing_on_market_or_putting_into_service/2, 'market surveillance authority may authorise placing on market or putting into service', 'celex:32024R1689/oj#art_46').
declared(must_put_into_service_without_authorisation/2, 'law-enforcement or civil protection authority may put into service without prior authorisation', 'celex:32024R1689/oj#art_46').
declared(must_request_authorisation/2, 'authority must request authorisation during or after use without undue delay', 'celex:32024R1689/oj#art_46').
declared(must_stop_use_and_discard_outputs/2, 'authority must stop use and discard results if authorisation refused', 'celex:32024R1689/oj#art_46').
declared(must_inform_commission_and_member_states_of_authorisation/2, 'market surveillance authority must inform Commission and Member States of authorisation', 'celex:32024R1689/oj#art_46').
declared(must_consult_and_decide/2, 'Commission must consult and decide on objections', 'celex:32024R1689/oj#art_46').
declared(must_withdraw_authorisation/2, 'market surveillance authority must withdraw authorisation if Commission deems it unjustified', 'celex:32024R1689/oj#art_46').
declared(product_harmonisation_legislation_applies/1, 'product covered by Union harmonisation legislation in Annex I Section A', 'celex:32024R1689/oj#art_46').
must_authorise_placing_on_market_or_putting_into_service(Authority, authorisation(System, Period)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    exceptional_reason(Reason),
    derogation_authorisation(authorisation(System, Period)),
    limited_period(Period),
    conformity_assessment_procedures_ongoing(System).
derogation_authorisation(authorisation(System, Period)) :-
    high_risk_ai_system(System),
    exceptional_reason(_),
    limited_period(Period).
exceptional_reason(public_security).
exceptional_reason(protection_of_life_and_health).
exceptional_reason(environmental_protection).
exceptional_reason(protection_of_key_industrial_and_infrastructural_assets).
limited_period(Period) :-
    nonvar(Period).
conformity_assessment_procedures_ongoing(System) :-
    high_risk_ai_system(System).
must_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(urgency(public_security)),
    imminent_threat(threat_to_life_or_physical_safety).
must_put_into_service_without_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    urgency_situation(urgency(public_security)),
    imminent_threat(threat_to_life_or_physical_safety),
    must_request_authorisation(Authority, System).
must_request_authorisation(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    \+ authorisation_refused(System).
must_stop_use_and_discard_outputs(Authority, System) :-
    law_enforcement_or_civil_protection_authority(Authority),
    high_risk_ai_system(System),
    authorisation_refused(System).
authorisation_refused(System) :-
    high_risk_ai_system(System),
    \+ derogation_authorisation(authorisation(System, _)).
law_enforcement_or_civil_protection_authority(Authority) :-
    law_enforcement_authority(Authority).
law_enforcement_or_civil_protection_authority(Authority) :-
    
    declared(civil_protection_authority/1, 'civil protection authority', 'celex:32024R1689/oj#art_46').
civil_protection_authority(Authority).
urgency_situation(urgency(public_security)).
imminent_threat(threat_to_life_or_physical_safety).
must_inform_commission_and_member_states_of_authorisation(Authority, authorisation(System, _)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    derogation_authorisation(authorisation(System, _)),
    system_complies_with_section_2(System).
system_complies_with_section_2(System) :-
    high_risk_ai_system(System).
derogation_authorisation(authorisation(System, _)) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority),
    must_inform_commission_and_member_states_of_authorisation(Authority, authorisation(System, _)),
    no_objection_within_15_days(authorisation(System, _)).
no_objection_within_15_days(authorisation(System, _)) :-
    high_risk_ai_system(System).
must_consult_and_decide(Commission, authorisation(System, _)) :-
    ai_office(Commission),
    high_risk_ai_system(System),
    objection_raised(authorisation(System, _)).
objection_raised(authorisation(System, _)) :-
    high_risk_ai_system(System).
must_withdraw_authorisation(Authority, authorisation(System, _)) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    commission_deems_unjustified(authorisation(System, _)).
commission_deems_unjustified(authorisation(System, _)) :-
    high_risk_ai_system(System).
product_harmonisation_legislation_applies(System) :-
    high_risk_ai_system(System),
    
    true.
provenance(derogation_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reason/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_situation/1, 'celex:32024R1689/oj#art_46').
provenance(imminent_threat/1, 'celex:32024R1689/oj#art_46').
provenance(law_enforcement_or_civil_protection_authority/1, 'celex:32024R1689/oj#art_46').
provenance(must_authorise_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_46').
provenance(must_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_request_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_stop_use_and_discard_outputs/2, 'celex:32024R1689/oj#art_46').
provenance(must_inform_commission_and_member_states_of_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(must_consult_and_decide/2, 'celex:32024R1689/oj#art_46').
provenance(must_withdraw_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(product_harmonisation_legislation_applies/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_eu_declaration_of_conformity/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_at_disposal/2, 'provider must keep EU declaration of conformity at disposal of national competent authorities', 'celex:32024R1689/oj#art_47').
declared(must_submit_declaration_copy_on_request/2, 'provider must submit copy of EU declaration of conformity upon request', 'celex:32024R1689/oj#art_47').
declared(must_state_conformity_with_requirements/1, 'EU declaration of conformity must state high-risk AI system meets Section 2 requirements', 'celex:32024R1689/oj#art_47').
declared(must_contain_annex_5_information/1, 'EU declaration of conformity must contain information set out in Annex V', 'celex:32024R1689/oj#art_47').
declared(must_translate_declaration/2, 'EU declaration of conformity must be translated into language easily understood by national competent authorities', 'celex:32024R1689/oj#art_47').
declared(must_draw_up_single_declaration/1, 'single EU declaration of conformity must be drawn up for all applicable Union law', 'celex:32024R1689/oj#art_47').
declared(must_assume_responsibility_for_compliance/2, 'provider assumes responsibility for compliance by drawing up EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_up_to_date/2, 'provider must keep EU declaration of conformity up-to-date', 'celex:32024R1689/oj#art_47').
declared(commission_empowered_to_amend_annex_5/1, 'Commission empowered to adopt delegated acts to amend Annex V', 'celex:32024R1689/oj#art_47').
must_draw_up_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
must_keep_declaration_at_disposal(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_submit_declaration_copy_on_request(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_state_conformity_with_requirements(Declaration) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System).
must_contain_annex_5_information(Declaration) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System).
must_translate_declaration(Declaration, MemberState) :-
    must_draw_up_eu_declaration_of_conformity(_, System),
    Declaration = declaration(System),
    made_available_on_union_market(System, MemberState).
must_draw_up_single_declaration(System) :-
    high_risk_ai_system(System),
    subject_to_other_union_harmonisation_legislation(System).
must_assume_responsibility_for_compliance(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
must_keep_declaration_up_to_date(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    must_draw_up_eu_declaration_of_conformity(Provider, System).
commission_empowered_to_amend_annex_5(Commission) :-
    ai_office(Commission).
subject_to_other_union_harmonisation_legislation(System) :-
    high_risk_ai_system(System).
provenance(must_draw_up_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_at_disposal/2, 'celex:32024R1689/oj#art_47').
provenance(must_submit_declaration_copy_on_request/2, 'celex:32024R1689/oj#art_47').
provenance(must_state_conformity_with_requirements/1, 'celex:32024R1689/oj#art_47').
provenance(must_contain_annex_5_information/1, 'celex:32024R1689/oj#art_47').
provenance(must_translate_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(must_draw_up_single_declaration/1, 'celex:32024R1689/oj#art_47').
provenance(must_assume_responsibility_for_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_5/1, 'celex:32024R1689/oj#art_47').
provenance(subject_to_other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(ce_marking_subject_to_general_principles/1, 'CE marking subject to general principles of Regulation 765/2008', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking_accessible/1, 'digital CE marking easily accessible via interface or machine-readable code', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_visibly_legibly_indelibly/1, 'CE marking affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(ce_marking_affixed_to_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation', 'celex:32024R1689/oj#art_48').
declared(ce_marking_followed_by_notified_body_number/1, 'CE marking followed by identification number of notified body', 'celex:32024R1689/oj#art_48').
declared(notified_body_number_affixed_by_body_or_under_instructions/1, 'notified body number affixed by body itself or under its instructions', 'celex:32024R1689/oj#art_48').
declared(notified_body_number_in_promotional_material/1, 'notified body number indicated in promotional material mentioning CE marking', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_compliance_with_other_union_law/1, 'CE marking indicates compliance with other Union law also requiring CE marking', 'celex:32024R1689/oj#art_48').
ce_marking_subject_to_general_principles(M) :-
    ce_marking(M).
digital_ce_marking_accessible(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    (   accessible_via_interface(S)
    ;   accessible_via_machine_readable_code(S)
    ;   accessible_via_electronic_means(S)
    ).
ce_marking_affixed_visibly_legibly_indelibly(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    affixed_visibly_legibly_indelibly(M, S).
ce_marking_affixed_to_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    \+ ce_marking_affixed_visibly_legibly_indelibly(S),
    (   affixed_to_packaging(M, S)
    ;   affixed_to_accompanying_documentation(M, S)
    ).
ce_marking_followed_by_notified_body_number(S) :-
    high_risk_ai_system(S),
    ce_marking(M),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    followed_by(M, identification_number(B)).
notified_body_number_affixed_by_body_or_under_instructions(S) :-
    high_risk_ai_system(S),
    notified_body(B),
    identification_number(N, B),
    (   affixed_by(N, B, S)
    ;   affixed_under_instructions(N, B, S, provider)
    ;   affixed_under_instructions(N, B, S, authorised_representative)
    ).
notified_body_number_in_promotional_material(S) :-
    high_risk_ai_system(S),
    notified_body(B),
    identification_number(N, B),
    promotional_material(P, S),
    mentions_ce_marking_fulfilment(P),
    indicated_in(N, P).
ce_marking_indicates_compliance_with_other_union_law(S) :-
    high_risk_ai_system(S),
    subject_to_other_union_law_requiring_ce_marking(S, Law),
    ce_marking(M),
    indicates_fulfilment(M, S, Law).
provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_accessible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_visibly_legibly_indelibly/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed_to_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_number/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_affixed_by_body_or_under_instructions/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_union_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register_in_eu_database/2, 'entity must register themselves and system in EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_use_in_eu_database/2, 'deployer must register use of system in EU database', 'celex:32024R1689/oj#art_49').
declared(registration_in_secure_non_public_section/1, 'registration must be in secure non-public section of EU database', 'celex:32024R1689/oj#art_49').
declared(registration_includes_only_annex_info/1, 'registration includes only specified Annex VIII and IX information', 'celex:32024R1689/oj#art_49').
declared(access_restricted_to_commission_and_national_authorities/1, 'access to restricted sections limited to Commission and national authorities', 'celex:32024R1689/oj#art_49').
declared(must_register_at_national_level/1, 'system must be registered at national level', 'celex:32024R1689/oj#art_49').
must_register_in_eu_database(Entity, System) :-
    ( provider(Entity) ; authorised_representative(Entity) ),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register_in_eu_database(Entity, System) :-
    ( provider(Entity) ; authorised_representative(Entity) ),
    ai_system(System),
    \+ high_risk_ai_system(System),
    evaluation_finds_high_risk(_, System),
    ( placing_on_market(System) ; putting_into_service(System) ).
must_register_use_in_eu_database(Deployer, System) :-
    deployer(Deployer),
    ( public_authority(Deployer) ; union_institution_body_office_or_agency(Deployer) ; acting_on_behalf_of(Deployer, _) ),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    putting_into_service(System).
registration_in_secure_non_public_section(Registration) :-
    registration(Registration),
    ( annex_3_point_1_a_system(Registration) ; annex_3_point_6_system(Registration) ; annex_3_point_7_system(Registration) ),
    law_enforcement_migration_asylum_border(Registration).
registration_includes_only_annex_info(Registration) :-
    registration_in_secure_non_public_section(Registration).
access_restricted_to_commission_and_national_authorities(Section) :-
    restricted_section_of_eu_database(Section),
    registration_in_secure_non_public_section(Section).
must_register_at_national_level(System) :-
    annex_3_point_2_system(System).
declared(public_authority/1, 'entity that is a public authority', 'celex:32024R1689/oj#art_49').
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_49').
declared(acting_on_behalf_of/2, 'person acting on behalf of another entity', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_6_system/1, 'high-risk AI system referred to in Annex III point 6', 'celex:32024R1689/oj#art_49').
declared(annex_3_point_7_system/1, 'high-risk AI system referred to in Annex III point 7', 'celex:32024R1689/oj#art_49').
declared(registration/1, 'registration in the EU database', 'celex:32024R1689/oj#art_49').
declared(restricted_section_of_eu_database/1, 'restricted section of the EU database', 'celex:32024R1689/oj#art_49').
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_includes_only_annex_info/1, 'celex:32024R1689/oj#art_49').
provenance(access_restricted_to_commission_and_national_authorities/1, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/1, 'celex:32024R1689/oj#art_49').
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
declared(must_inform_interaction/2, 'provider must ensure natural persons are informed they are interacting with an AI system', 'celex:32024R1689/oj#art_50/par_1').
declared(must_mark_outputs/2, 'provider must ensure synthetic outputs are marked as artificially generated', 'celex:32024R1689/oj#art_50/par_2').
declared(must_inform_operation/2, 'deployer must inform natural persons of the operation of an emotion recognition or biometric categorisation system', 'celex:32024R1689/oj#art_50/par_3').
declared(must_disclose_deep_fake/2, 'deployer must disclose that content is a deep fake', 'celex:32024R1689/oj#art_50/par_4').
declared(must_disclose_generated_text/2, 'deployer must disclose that published text is artificially generated', 'celex:32024R1689/oj#art_50/par_4').
declared(must_provide_information_clearly/2, 'information must be provided clearly and distinguishably at first interaction or exposure', 'celex:32024R1689/oj#art_50/par_5').
declared(must_encourage_codes_of_practice/1, 'AI Office must encourage codes of practice for detection and labelling', 'celex:32024R1689/oj#art_50/par_7').
declared(interaction_obvious/1, 'interaction with AI system is obvious to a reasonably well-informed person', 'celex:32024R1689/oj#art_50/par_1').
declared(authorised_for_criminal_offences/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50/par_1').
declared(available_for_public_reporting/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50/par_1').
declared(assistive_editing_function/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50/par_2').
declared(does_not_substantially_alter_input/1, 'AI system does not substantially alter input data or semantics', 'celex:32024R1689/oj#art_50/par_2').
declared(deep_fake_content/1, 'content constituting a deep fake', 'celex:32024R1689/oj#art_50/par_4').
declared(artistic_or_analogous_work/1, 'content forms part of an artistic, creative, satirical, fictional or analogous work', 'celex:32024R1689/oj#art_50/par_4').
declared(published_for_public_interest/1, 'text published with the purpose of informing the public on matters of public interest', 'celex:32024R1689/oj#art_50/par_4').
declared(human_review_or_editorial_control/1, 'content has undergone human review or editorial control with editorial responsibility', 'celex:32024R1689/oj#art_50/par_4').
must_inform_interaction(Provider, S) :-
    provider(Provider),
    ai_system(S),
    intended_purpose(interact_directly_with_natural_persons(S)),
    \+ interaction_obvious(S),
    \+ (authorised_for_criminal_offences(S), \+ available_for_public_reporting(S)).
must_mark_outputs(Provider, S) :-
    provider(Provider),
    ai_system(S),
    generates_synthetic_content(S),
    \+ assistive_editing_function(S),
    \+ does_not_substantially_alter_input(S),
    \+ authorised_for_criminal_offences(S).
must_inform_operation(Deployer, S) :-
    deployer(Deployer),
    (emotion_recognition_system(S); biometric_categorisation_system(S)),
    \+ (authorised_for_criminal_offences(S), biometric_categorisation_or_emotion_recognition(S)).
must_disclose_deep_fake(Deployer, Content) :-
    deployer(Deployer),
    deep_fake_content(Content),
    \+ authorised_for_criminal_offences(Content).
must_disclose_generated_text(Deployer, Text) :-
    deployer(Deployer),
    generated_or_manipulated_text(Text),
    published_for_public_interest(Text),
    \+ authorised_for_criminal_offences(Text),
    \+ human_review_or_editorial_control(Text).
must_provide_information_clearly(_Entity, Info) :-
    information_referred_to_in_paras_1_to_4(Info).
must_encourage_codes_of_practice(AI_Office) :-
    ai_office(AI_Office).
interaction_obvious(S) :-
    ai_system(S),
    obvious_to_reasonably_well_informed_person(S).
authorised_for_criminal_offences(S) :-
    ai_system(S),
    authorised_by_law(S, detect_prevent_investigate_prosecute_criminal_offences).
available_for_public_reporting(S) :-
    ai_system(S),
    available_for_public(S, report_criminal_offence).
assistive_editing_function(S) :-
    ai_system(S),
    performs_assistive_function(S, standard_editing).
does_not_substantially_alter_input(S) :-
    ai_system(S),
    does_not_substantially_alter(S, input_data_or_semantics).
deep_fake_content(Content) :-
    deep_fake(Content).
artistic_or_analogous_work(Content) :-
    deep_fake_content(Content),
    forms_part_of_work(Content, artistic_creative_satirical_fictional_analogous).
published_for_public_interest(Text) :-
    generated_or_manipulated_text(Text),
    published_with_purpose(Text, inform_public_on_matters_of_public_interest).
human_review_or_editorial_control(Text) :-
    generated_or_manipulated_text(Text),
    undergone_human_review_or_editorial_control(Text),
    editorial_responsibility_held(Text).
generates_synthetic_content(S) :-
    ai_system(S),
    generates(S, synthetic_audio_image_video_text).
generated_or_manipulated_text(Text) :-
    ai_system(_S),
    generates_or_manipulates(Text, text).
biometric_categorisation_or_emotion_recognition(S) :-
    biometric_categorisation_system(S); emotion_recognition_system(S).
information_referred_to_in_paras_1_to_4(Info) :-
    (must_inform_interaction(_, Info);
     must_mark_outputs(_, Info);
     must_inform_operation(_, Info);
     must_disclose_deep_fake(_, Info);
     must_disclose_generated_text(_, Info)).
provenance(must_inform_interaction/2, 'celex:32024R1689/oj#art_50/par_1').
provenance(must_mark_outputs/2, 'celex:32024R1689/oj#art_50/par_2').
provenance(must_inform_operation/2, 'celex:32024R1689/oj#art_50/par_3').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_disclose_generated_text/2, 'celex:32024R1689/oj#art_50/par_4').
provenance(must_provide_information_clearly/2, 'celex:32024R1689/oj#art_50/par_5').
provenance(must_encourage_codes_of_practice/1, 'celex:32024R1689/oj#art_50/par_7').
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
declared(high_impact_capabilities_evaluated/1, 'high impact capabilities evaluated on the basis of appropriate technical tools and methodologies', 'celex:32024R1689/oj#art_51').
declared(commission_decision_equivalent_capabilities/1, 'Commission decision that model has capabilities or impact equivalent to point (a)', 'celex:32024R1689/oj#art_51').
declared(cumulative_computation_exceeds_threshold/1, 'cumulative amount of computation used for training measured in floating point operations exceeds 10^25', 'celex:32024R1689/oj#art_51').
systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).
systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).
high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    cumulative_computation_exceeds_threshold(M).
provenance(systemic_risk_classification_applies/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(must_notify_commission/2, 'provider must notify Commission that model meets systemic risk condition', 'celex:32024R1689/oj#art_52').
declared(may_present_arguments_against_classification/2, 'provider may present arguments that model does not present systemic risks', 'celex:32024R1689/oj#art_52').
declared(must_reject_arguments/2, 'Commission must reject insufficiently substantiated arguments', 'celex:32024R1689/oj#art_52').
declared(may_designate_systemic_risk/2, 'Commission may designate model as presenting systemic risk', 'celex:32024R1689/oj#art_52').
declared(may_reassess_designation/2, 'Commission may reassess whether model still presents systemic risks', 'celex:32024R1689/oj#art_52').
declared(must_publish_systemic_risk_list/1, 'Commission must publish and update list of systemic risk models', 'celex:32024R1689/oj#art_52').
must_notify_commission(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    notification_includes_necessary_information(notification(Model)).
may_present_arguments_against_classification(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    arguments_substantiated(arguments(Model)).
must_reject_arguments(commission, Model) :-
    general_purpose_ai_model(Model),
    \+ arguments_substantiated(arguments(Model)),
    \+ demonstrated_no_systemic_risk(Model).
may_designate_systemic_risk(commission, Model) :-
    general_purpose_ai_model(Model),
    (   ex_officio_designation(Model)
    ;   qualified_alert_from_scientific_panel(Model)
    ),
    criteria_in_annex_13_satisfied(Model).
may_reassess_designation(commission, Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    reasoned_request_from_provider(Model),
    new_reasons_since_designation(Model),
    minimum_six_months_since_designation(Model).
must_publish_systemic_risk_list(commission) :-
    ai_office(commission).
notification_includes_necessary_information(notification(Model)) :-
    general_purpose_ai_model(Model).
arguments_substantiated(arguments(Model)) :-
    general_purpose_ai_model(Model).
demonstrated_no_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    \+ systemic_risk_classification_applies(Model).
ex_officio_designation(Model) :-
    general_purpose_ai_model(Model).
qualified_alert_from_scientific_panel(Model) :-
    general_purpose_ai_model(Model).
criteria_in_annex_13_satisfied(Model) :-
    general_purpose_ai_model(Model).
reasoned_request_from_provider(Model) :-
    general_purpose_ai_model(Model).
new_reasons_since_designation(Model) :-
    general_purpose_ai_model(Model).
minimum_six_months_since_designation(Model) :-
    general_purpose_ai_model(Model).
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(may_present_arguments_against_classification/2, 'celex:32024R1689/oj#art_52').
provenance(must_reject_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(may_designate_systemic_risk/2, 'celex:32024R1689/oj#art_52').
provenance(may_reassess_designation/2, 'celex:32024R1689/oj#art_52').
provenance(must_publish_systemic_risk_list/1, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(must_draw_up_technical_documentation/2, 'provider must draw up and keep up-to-date technical documentation of the model', 'celex:32024R1689/oj#art_53').
declared(must_make_available_information_to_integrators/2, 'provider must make available information and documentation to AI system providers who intend to integrate the model', 'celex:32024R1689/oj#art_53').
declared(must_put_in_place_copyright_policy/1, 'provider must put in place a policy to comply with Union copyright law', 'celex:32024R1689/oj#art_53').
declared(must_publish_training_content_summary/1, 'provider must draw up and make publicly available a sufficiently detailed summary about the content used for training', 'celex:32024R1689/oj#art_53').
declared(must_cooperate_with_authorities/2, 'provider must cooperate with the Commission and national competent authorities', 'celex:32024R1689/oj#art_53').
declared(may_rely_on_code_of_practice/2, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_53').
declared(must_demonstrate_alternative_compliance/2, 'provider who does not adhere to approved code of practice or harmonised standard must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_53').
declared(open_source_exception_applies_to_obligations/1, 'exception for free and open-source models applies to obligations in paragraphs 1(a) and 1(b)', 'celex:32024R1689/oj#art_53').
declared(systemic_risk_model/1, 'general-purpose AI model with systemic risks', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ open_source_exception_applies_to_obligations(Model).
must_make_available_information_to_integrators(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ open_source_exception_applies_to_obligations(Model).
must_put_in_place_copyright_policy(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_).
must_publish_training_content_summary(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_).
must_cooperate_with_authorities(Provider, Authority) :-
    provider(Provider),
    general_purpose_ai_model(_),
    ( Authority = ai_office ; national_competent_authority(Authority) ).
may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_rely_on_code_of_practice(Provider, Model),
    \+ presumed_conformity(Model).
open_source_exception_applies_to_obligations(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk_model(Model).
systemic_risk_model(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information_to_integrators/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(open_source_exception_applies_to_obligations/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_53').
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
declared(must_enable_representative/2, 'provider must enable authorised representative to perform tasks', 'celex:32024R1689/oj#art_54').
declared(must_perform_mandate_tasks/1, 'authorised representative must perform tasks in mandate', 'celex:32024R1689/oj#art_54').
declared(must_provide_mandate_copy/2, 'authorised representative must provide mandate copy upon request', 'celex:32024R1689/oj#art_54').
declared(must_verify_documentation/2, 'authorised representative must verify technical documentation and obligations', 'celex:32024R1689/oj#art_54').
declared(must_keep_documentation/2, 'authorised representative must keep documentation and contact details', 'celex:32024R1689/oj#art_54').
declared(must_provide_information/2, 'authorised representative must provide information upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(must_cooperate/2, 'authorised representative must cooperate with authorities', 'celex:32024R1689/oj#art_54').
declared(must_accept_address/1, 'authorised representative must accept being addressed by authorities', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary', 'celex:32024R1689/oj#art_54').
declared(must_inform_termination/2, 'authorised representative must inform AI Office of termination', 'celex:32024R1689/oj#art_54').
declared(open_source_exception_art_54_applies/1, 'exception for open-source models without systemic risk', 'celex:32024R1689/oj#art_54').
must_appoint_authorised_representative(Provider, Representative) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    established_in_third_country(Provider),
    authorised_representative(Representative),
    placing_on_market(Model).
must_enable_representative(Provider, Representative) :-
    provider(Provider),
    authorised_representative(Representative),
    must_appoint_authorised_representative(Provider, Representative).
must_perform_mandate_tasks(Representative) :-
    authorised_representative(Representative).
must_provide_mandate_copy(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).
must_verify_documentation(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).
must_keep_documentation(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    placing_on_market(Model).
must_provide_information(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).
must_cooperate(Representative, Authority) :-
    authorised_representative(Representative),
    (ai_office(Authority); national_competent_authority(Authority)).
must_accept_address(Representative) :-
    authorised_representative(Representative).
must_terminate_mandate(Representative, Provider) :-
    authorised_representative(Representative),
    provider(Provider).
must_inform_termination(Representative, ai_office) :-
    authorised_representative(Representative),
    ai_office(AO).
open_source_exception_art_54_applies(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk_classification_applies(Model).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_mandate_tasks/1, 'celex:32024R1689/oj#art_54').
provenance(must_provide_mandate_copy/2, 'celex:32024R1689/oj#art_54').
provenance(must_verify_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_54').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_54').
provenance(must_accept_address/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_inform_termination/2, 'celex:32024R1689/oj#art_54').
provenance(open_source_exception_art_54_applies/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').

% ==== celex:32024R1689/oj#art_55 ====
declared(must_perform_model_evaluation/2, 'provider must perform model evaluation including adversarial testing', 'celex:32024R1689/oj#art_55/par_1').
declared(must_assess_and_mitigate_systemic_risks/2, 'provider must assess and mitigate possible systemic risks at Union level', 'celex:32024R1689/oj#art_55/par_1').
declared(must_track_document_and_report_serious_incidents/2, 'provider must track, document and report serious incidents to AI Office', 'celex:32024R1689/oj#art_55/par_1').
declared(must_ensure_adequate_cybersecurity/2, 'provider must ensure adequate cybersecurity protection for model and infrastructure', 'celex:32024R1689/oj#art_55/par_1').
declared(may_rely_on_code_of_practice/2, 'provider may rely on code of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55/par_2').
declared(presumed_conformity_through_harmonised_standard/2, 'compliance with harmonised standard grants presumption of conformity', 'celex:32024R1689/oj#art_55/par_2').
declared(must_demonstrate_alternative_compliance/2, 'provider not adhering to code or standard must demonstrate alternative compliance', 'celex:32024R1689/oj#art_55/par_2').
declared(confidentiality_obligations_apply/1, 'information obtained under this article treated per confidentiality obligations', 'celex:32024R1689/oj#art_55/par_3').
must_perform_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
must_assess_and_mitigate_systemic_risks(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
must_track_document_and_report_serious_incidents(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
must_ensure_adequate_cybersecurity(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
presumed_conformity_through_harmonised_standard(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).
must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    \+ may_rely_on_code_of_practice(Provider, Model),
    \+ presumed_conformity_through_harmonised_standard(Provider, Model).
confidentiality_obligations_apply(Info) :-
    nonvar(Info).
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_track_document_and_report_serious_incidents/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_ensure_adequate_cybersecurity/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(presumed_conformity_through_harmonised_standard/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_55/par_3').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage_and_facilitate_drawing_up/2, 'AI Office must encourage and facilitate drawing up of codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_cover_obligations/2, 'codes of practice must cover obligations from specified articles', 'celex:32024R1689/oj#art_56').
declared(may_invite_to_participate/2, 'AI Office may invite entities to participate in drawing up codes of practice', 'celex:32024R1689/oj#art_56').
declared(may_support_process/1, 'entity may support the drawing-up process', 'celex:32024R1689/oj#art_56').
declared(must_set_out_objectives/1, 'codes of practice must clearly set out specific objectives', 'celex:32024R1689/oj#art_56').
declared(must_contain_commitments_or_measures/1, 'codes of practice must contain commitments or measures', 'celex:32024R1689/oj#art_56').
declared(must_take_account_of_interests/1, 'codes of practice must take due account of needs and interests of all interested parties', 'celex:32024R1689/oj#art_56').
declared(must_report_regularly/2, 'participants must report regularly on implementation', 'celex:32024R1689/oj#art_56').
declared(must_reflect_differences_in_size_and_capacity/1, 'KPIs and reporting commitments must reflect differences in size and capacity', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate_achievement/2, 'AI Office and Board must regularly monitor and evaluate achievement of objectives', 'celex:32024R1689/oj#art_56').
declared(must_assess_coverage/2, 'AI Office and Board must assess whether codes cover obligations', 'celex:32024R1689/oj#art_56').
declared(must_publish_assessment/1, 'AI Office and Board must publish assessment of adequacy', 'celex:32024R1689/oj#art_56').
declared(may_approve_code_of_practice/1, 'Commission may approve a code of practice by implementing act', 'celex:32024R1689/oj#art_56').
declared(may_invite_to_adhere/2, 'AI Office may invite providers to adhere to codes of practice', 'celex:32024R1689/oj#art_56').
declared(adherence_may_be_limited/2, 'adherence may be limited to obligations in Article 53', 'celex:32024R1689/oj#art_56').
declared(must_encourage_review_and_adaptation/1, 'AI Office must encourage and facilitate review and adaptation of codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_assist_in_assessment_of_standards/1, 'AI Office must assist in assessment of available standards', 'celex:32024R1689/oj#art_56').
declared(must_be_ready_by/2, 'codes of practice must be ready by a specified date', 'celex:32024R1689/oj#art_56').
declared(must_take_necessary_steps/1, 'AI Office must take necessary steps including inviting providers', 'celex:32024R1689/oj#art_56').
declared(may_provide_common_rules/1, 'Commission may provide common rules by implementing acts', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_drawing_up(ai_office, codes_of_practice) :-
    ai_office(ai_office).
must_cover_obligations(codes_of_practice, obligations(art_53, art_55)) :-
    true.
may_invite_to_participate(ai_office, providers_of_general_purpose_ai_models) :-
    ai_office(ai_office).
may_invite_to_participate(ai_office, national_competent_authorities) :-
    ai_office(ai_office).
may_support_process(Entity) :-
    (   civil_society_organisation(Entity)
    ;   industry(Entity)
    ;   academia(Entity)
    ;   downstream_provider(Entity)
    ;   independent_expert(Entity)
    ).
must_set_out_objectives(codes_of_practice).
must_contain_commitments_or_measures(codes_of_practice).
must_take_account_of_interests(codes_of_practice).
must_report_regularly(Participant, implementation_report) :-
    participant_to_codes_of_practice(Participant).
must_reflect_differences_in_size_and_capacity(codes_of_practice).
must_monitor_and_evaluate_achievement(ai_office_and_board, objectives_of_codes_of_practice).
must_assess_coverage(ai_office_and_board, obligations(art_53, art_55)).
must_publish_assessment(assessment_of_adequacy).
may_approve_code_of_practice(commission) :-
    true.
may_invite_to_adhere(ai_office, providers_of_general_purpose_ai_models) :-
    ai_office(ai_office).
adherence_may_be_limited(Provider, obligations(art_53)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ systemic_risk_classification_applies(Model).
must_encourage_review_and_adaptation(ai_office) :-
    ai_office(ai_office).
must_assist_in_assessment_of_standards(ai_office) :-
    ai_office(ai_office).
must_be_ready_by(codes_of_practice, date(2025, 5, 2)).
must_take_necessary_steps(ai_office) :-
    ai_office(ai_office).
may_provide_common_rules(commission) :-
    \+ codes_of_practice_finalised_by(date(2025, 8, 2)),
    \+ codes_of_practice_adequate.
provenance(must_encourage_and_facilitate_drawing_up/2, 'celex:32024R1689/oj#art_56').
provenance(must_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_participate/2, 'celex:32024R1689/oj#art_56').
provenance(may_support_process/1, 'celex:32024R1689/oj#art_56').
provenance(must_set_out_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(must_contain_commitments_or_measures/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_account_of_interests/1, 'celex:32024R1689/oj#art_56').
provenance(must_report_regularly/2, 'celex:32024R1689/oj#art_56').
provenance(must_reflect_differences_in_size_and_capacity/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_achievement/2, 'celex:32024R1689/oj#art_56').
provenance(must_assess_coverage/2, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_to_adhere/2, 'celex:32024R1689/oj#art_56').
provenance(adherence_may_be_limited/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_and_adaptation/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_in_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(must_be_ready_by/2, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps/1, 'celex:32024R1689/oj#art_56').
provenance(may_provide_common_rules/1, 'celex:32024R1689/oj#art_56').
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
declared(must_establish_sandbox/2, 'Member State must ensure competent authorities establish at least one AI regulatory sandbox', 'celex:32024R1689/oj#art_57/par_1').
declared(sandbox_operational_by/2, 'sandbox must be operational by a given date', 'celex:32024R1689/oj#art_57/par_1').
declared(sandbox_established_jointly/1, 'sandbox established jointly with competent authorities of other Member States', 'celex:32024R1689/oj#art_57/par_1').
declared(commission_may_provide_support/1, 'Commission may provide technical support, advice and tools for sandbox', 'celex:32024R1689/oj#art_57/par_1').
declared(obligation_fulfilled_by_participation/2, 'obligation fulfilled by participating in existing sandbox with equivalent national coverage', 'celex:32024R1689/oj#art_57/par_1/unp_1').
declared(additional_sandbox_permitted/1, 'additional sandbox at regional, local or joint level permitted', 'celex:32024R1689/oj#art_57/par_2').
declared(edps_may_establish_sandbox/1, 'European Data Protection Supervisor may establish sandbox for Union institutions', 'celex:32024R1689/oj#art_57/par_3').
declared(must_allocate_sufficient_resources/2, 'Member State must ensure competent authorities allocate sufficient resources', 'celex:32024R1689/oj#art_57/par_4').
declared(must_cooperate_with_other_authorities/1, 'national competent authorities shall cooperate with other relevant authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(may_involve_other_actors/1, 'may allow involvement of other actors within the AI ecosystem', 'celex:32024R1689/oj#art_57/par_4').
declared(sandbox_not_affect_other_sandboxes/1, 'Article 57 shall not affect other regulatory sandboxes', 'celex:32024R1689/oj#art_57/par_4').
declared(must_ensure_cooperation_between_sandbox_authorities/1, 'Member States shall ensure appropriate level of cooperation between sandbox authorities', 'celex:32024R1689/oj#art_57/par_4').
declared(sandbox_provides_controlled_environment/1, 'sandbox provides controlled environment fostering innovation', 'celex:32024R1689/oj#art_57/par_5').
declared(sandbox_facilitates_development/1, 'sandbox facilitates development, training, testing and validation of innovative AI systems', 'celex:32024R1689/oj#art_57/par_5').
declared(sandbox_limited_time/1, 'sandbox operates for a limited time before placing on market or putting into service', 'celex:32024R1689/oj#art_57/par_5').
declared(sandbox_plan_agreed/2, 'sandbox plan agreed between providers or prospective providers and competent authority', 'celex:32024R1689/oj#art_57/par_5').
declared(must_provide_guidance_supervision_support/2, 'competent authorities shall provide guidance, supervision and support within sandbox', 'celex:32024R1689/oj#art_57/par_6').
declared(must_identify_risks_within_sandbox/1, 'guidance aims to identify risks, mitigation measures and effectiveness', 'celex:32024R1689/oj#art_57/par_6').
declared(must_provide_regulatory_guidance/2, 'competent authorities shall provide guidance on regulatory expectations', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_written_proof/2, 'upon request, competent authority shall provide written proof of activities', 'celex:32024R1689/oj#art_57/par_7').
declared(must_provide_exit_report/2, 'competent authority shall provide exit report detailing activities and results', 'celex:32024R1689/oj#art_57/par_7').
declared(may_use_documentation_for_compliance/1, 'providers may use documentation to demonstrate compliance', 'celex:32024R1689/oj#art_57/par_7').
declared(exit_report_taken_positively/1, 'exit reports and written proof taken positively by market surveillance authorities and notified bodies', 'celex:32024R1689/oj#art_57/par_7').
declared(commission_and_board_may_access_exit_reports/1, 'Commission and Board authorised to access exit reports subject to confidentiality', 'celex:32024R1689/oj#art_57/par_8').
declared(exit_report_may_be_made_public/1, 'exit report may be made publicly available with explicit agreement', 'celex:32024R1689/oj#art_57/par_8').
declared(sandbox_objective_legal_certainty/1, 'sandbox aims to improve legal certainty', 'celex:32024R1689/oj#art_57/par_9/pnt_a').
declared(sandbox_objective_best_practices/1, 'sandbox aims to support sharing of best practices', 'celex:32024R1689/oj#art_57/par_9/pnt_b').
declared(sandbox_objective_innovation/1, 'sandbox aims to foster innovation and competitiveness', 'celex:32024R1689/oj#art_57/par_9/pnt_c').
declared(sandbox_objective_regulatory_learning/1, 'sandbox aims to contribute to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57/par_9/pnt_d').
declared(sandbox_objective_market_access/1, 'sandbox aims to facilitate and accelerate access to Union market', 'celex:32024R1689/oj#art_57/par_9/pnt_e').
declared(must_associate_data_protection_authorities/1, 'national data protection authorities shall be associated with sandbox operation', 'celex:32024R1689/oj#art_57/par_10').
declared(sandbox_not_affect_supervisory_powers/1, 'sandboxes shall not affect supervisory or corrective powers', 'celex:32024R1689/oj#art_57/par_11').
declared(must_mitigate_significant_risks/1, 'significant risks identified shall result in adequate mitigation', 'celex:32024R1689/oj#art_57/par_11').
declared(may_suspend_testing/2, 'national competent authorities may temporarily or permanently suspend testing', 'celex:32024R1689/oj#art_57/par_11').
declared(must_inform_ai_office_of_suspension/2, 'national competent authority shall inform AI Office of suspension decision', 'celex:32024R1689/oj#art_57/par_11').
declared(providers_remain_liable/1, 'providers and prospective providers remain liable for damage', 'celex:32024R1689/oj#art_57/par_12').
declared(no_administrative_fines_if_good_faith/1, 'no administrative fines if prospective providers follow plan and guidance in good faith', 'celex:32024R1689/oj#art_57/par_12').
declared(no_fines_if_other_authorities_involved/1, 'no administrative fines where other competent authorities actively involved and provided guidance', 'celex:32024R1689/oj#art_57/par_12').
declared(sandbox_facilitates_cross_border_cooperation/1, 'sandboxes designed to facilitate cross-border cooperation', 'celex:32024R1689/oj#art_57/par_13').
declared(must_coordinate_within_board/1, 'national competent authorities shall coordinate activities within Board framework', 'celex:32024R1689/oj#art_57/par_14').
declared(must_inform_ai_office_of_establishment/2, 'national competent authorities shall inform AI Office and Board of sandbox establishment', 'celex:32024R1689/oj#art_57/par_15').
declared(ai_office_must_publish_sandbox_list/1, 'AI Office shall make publicly available list of planned and existing sandboxes', 'celex:32024R1689/oj#art_57/par_15').
declared(must_submit_annual_reports/2, 'national competent authorities shall submit annual reports to AI Office and Board', 'celex:32024R1689/oj#art_57/par_16').
declared(must_submit_final_report/2, 'national competent authorities shall submit final report', 'celex:32024R1689/oj#art_57/par_16').
declared(must_make_reports_publicly_available/1, 'national competent authorities shall make annual reports or abstracts publicly available online', 'celex:32024R1689/oj#art_57/par_16').
declared(commission_must_develop_single_interface/1, 'Commission shall develop single dedicated interface for sandbox information', 'celex:32024R1689/oj#art_57/par_17').
declared(commission_must_coordinate_with_authorities/1, 'Commission shall proactively coordinate with national competent authorities', 'celex:32024R1689/oj#art_57/par_17').
must_establish_sandbox(MemberState, sandbox(national)) :-
    member_state(MemberState).
sandbox_operational_by(Sandbox, date(2026, 8, 2)) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_established_jointly(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    sandbox_established_by(Sandbox, authorities(joint, _)).
commission_may_provide_support(Support) :-
    ai_office(Commission),
    support_type(Support, technical_support_advice_tools).
obligation_fulfilled_by_participation(MemberState, existing_sandbox(Sandbox)) :-
    member_state(MemberState),
    ai_regulatory_sandbox(Sandbox),
    participation_provides_equivalent_coverage(Sandbox, MemberState).
additional_sandbox_permitted(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    (   sandbox_level(Sandbox, regional)
    ;   sandbox_level(Sandbox, local)
    ;   sandbox_established_jointly(Sandbox)
    ).
edps_may_establish_sandbox(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_by(Sandbox, european_data_protection_supervisor),
    for_union_institutions(Sandbox).
must_allocate_sufficient_resources(MemberState, authorities(competent)) :-
    member_state(MemberState).
must_cooperate_with_other_authorities(Authority) :-
    national_competent_authority(Authority).
may_involve_other_actors(Authority) :-
    national_competent_authority(Authority).
sandbox_not_affect_other_sandboxes(Article57) :-
    article(Article57, 57).
must_ensure_cooperation_between_sandbox_authorities(MemberState) :-
    member_state(MemberState).
sandbox_provides_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_facilitates_development(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_limited_time(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_plan_agreed(Provider, Authority) :-
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ),
    national_competent_authority(Authority).
sandbox_may_include_real_world_testing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_provide_guidance_supervision_support(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
must_identify_risks_within_sandbox(Authority) :-
    national_competent_authority(Authority).
must_provide_regulatory_guidance(Authority, Provider) :-
    national_competent_authority(Authority),
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ).
must_provide_written_proof(Authority, Provider) :-
    national_competent_authority(Authority),
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ),
    requests_written_proof(Provider).
must_provide_exit_report(Authority, Provider) :-
    national_competent_authority(Authority),
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ).
may_use_documentation_for_compliance(Provider) :-
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ).
exit_report_taken_positively(Report) :-
    exit_report(Report).
commission_and_board_may_access_exit_reports(Report) :-
    exit_report(Report),
    subject_to_confidentiality(Report),
    agreement_of_provider(Report).
exit_report_may_be_made_public(Report) :-
    exit_report(Report),
    explicit_agreement(Report, provider),
    explicit_agreement(Report, national_competent_authority).
sandbox_objective_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_objective_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_objective_innovation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_objective_regulatory_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_objective_market_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_associate_data_protection_authorities(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    involves_processing_of_personal_data(Sandbox).
sandbox_not_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_mitigate_significant_risks(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    significant_risks_identified(Sandbox).
may_suspend_testing(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    no_effective_mitigation_possible(Sandbox).
must_inform_ai_office_of_suspension(Authority, Decision) :-
    national_competent_authority(Authority),
    suspension_decision(Decision).
providers_remain_liable(Provider) :-
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ).
no_administrative_fines_if_good_faith(Provider) :-
    prospective_provider(Provider),
    observes_sandbox_plan(Provider),
    follows_guidance_in_good_faith(Provider).
no_fines_if_other_authorities_involved(Provider) :-
    (   provider(Provider)
    ;   prospective_provider(Provider)
    ),
    other_competent_authorities_involved(Provider),
    provided_guidance_for_compliance(Provider).
sandbox_facilitates_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_coordinate_within_board(Authority) :-
    national_competent_authority(Authority).
must_inform_ai_office_of_establishment(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
ai_office_must_publish_sandbox_list(AiOffice) :-
    ai_office(AiOffice).
must_submit_annual_reports(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
must_submit_final_report(Authority, Sandbox) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox).
must_make_reports_publicly_available(Authority) :-
    national_competent_authority(Authority).
commission_must_develop_single_interface(Commission) :-
    ai_office(Commission).
commission_must_coordinate_with_authorities(Commission) :-
    ai_office(Commission).
provenance(must_establish_sandbox/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(sandbox_operational_by/2, 'celex:32024R1689/oj#art_57/par_1').
provenance(sandbox_established_jointly/1, 'celex:32024R1689/oj#art_57/par_1').
provenance(commission_may_provide_support/1, 'celex:32024R1689/oj#art_57/par_1').
provenance(obligation_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57/par_1/unp_1').
provenance(additional_sandbox_permitted/1, 'celex:32024R1689/oj#art_57/par_2').
provenance(edps_may_establish_sandbox/1, 'celex:32024R1689/oj#art_57/par_3').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_cooperate_with_other_authorities/1, 'celex:32024R1689/oj#art_57/par_4').
provenance(may_involve_other_actors/1, 'celex:32024R1689/oj#art_57/par_4').
provenance(sandbox_not_affect_other_sandboxes/1, 'celex:32024R1689/oj#art_57/par_4').
provenance(must_ensure_cooperation_between_sandbox_authorities/1, 'celex:32024R1689/oj#art_57/par_4').
provenance(sandbox_provides_controlled_environment/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_facilitates_development/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_limited_time/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_plan_agreed/2, 'celex:32024R1689/oj#art_57/par_5').
provenance(sandbox_may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57/par_5').
provenance(must_provide_guidance_supervision_support/2, 'celex:32024R1689/oj#art_57/par_6').
provenance(must_identify_risks_within_sandbox/1, 'celex:32024R1689/oj#art_57/par_6').
provenance(must_provide_regulatory_guidance/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57/par_7').
provenance(may_use_documentation_for_compliance/1, 'celex:32024R1689/oj#art_57/par_7').
provenance(exit_report_taken_positively/1, 'celex:32024R1689/oj#art_57/par_7').
provenance(commission_and_board_may_access_exit_reports/1, 'celex:32024R1689/oj#art_57/par_8').
provenance(exit_report_may_be_made_public/1, 'celex:32024R1689/oj#art_57/par_8').
provenance(sandbox_objective_legal_certainty/1, 'celex:32024R1689/oj#art_57/par_9/pnt_a').
provenance(sandbox_objective_best_practices/1, 'celex:32024R1689/oj#art_57/par_9/pnt_b').
provenance(sandbox_objective_innovation/1, 'celex:32024R1689/oj#art_57/par_9/pnt_c').
provenance(sandbox_objective_regulatory_learning/1, 'celex:32024R1689/oj#art_57/par_9/pnt_d').
provenance(sandbox_objective_market_access/1, 'celex:32024R1689/oj#art_57/par_9/pnt_e').
provenance(must_associate_data_protection_authorities/1, 'celex:32024R1689/oj#art_57/par_10').
provenance(sandbox_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_mitigate_significant_risks/1, 'celex:32024R1689/oj#art_57/par_11').
provenance(may_suspend_testing/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57/par_11').
provenance(providers_remain_liable/1, 'celex:32024R1689/oj#art_57/par_12').
provenance(no_administrative_fines_if_good_faith/1, 'celex:32024R1689/oj#art_57/par_12').
provenance(no_fines_if_other_authorities_involved/1, 'celex:32024R1689/oj#art_57/par_12').
provenance(sandbox_facilitates_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57/par_13').
provenance(must_coordinate_within_board/1, 'celex:32024R1689/oj#art_57/par_14').
provenance(must_inform_ai_office_of_establishment/2, 'celex:32024R1689/oj#art_57/par_15').
provenance(ai_office_must_publish_sandbox_list/1, 'celex:32024R1689/oj#art_57/par_15').
provenance(must_submit_annual_reports/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_submit_final_report/2, 'celex:32024R1689/oj#art_57/par_16').
provenance(must_make_reports_publicly_available/1, 'celex:32024R1689/oj#art_57/par_16').
provenance(commission_must_develop_single_interface/1, 'celex:32024R1689/oj#art_57/par_17').
provenance(commission_must_coordinate_with_authorities/1, 'celex:32024R1689/oj#art_57/par_17').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/1, 'Commission must adopt implementing acts for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(must_include_common_principles/1, 'implementing acts must include common principles on specified issues', 'celex:32024R1689/oj#art_58').
declared(must_ensure_open_access/1, 'implementing acts must ensure sandboxes are open to qualifying applicants', 'celex:32024R1689/oj#art_58').
declared(must_ensure_broad_access/1, 'implementing acts must ensure broad and equal access to sandboxes', 'celex:32024R1689/oj#art_58').
declared(must_support_flexibility/1, 'implementing acts must support flexibility for national authorities', 'celex:32024R1689/oj#art_58').
declared(must_ensure_free_access_for_smes/1, 'implementing acts must ensure free access for SMEs and start-ups', 'celex:32024R1689/oj#art_58').
declared(must_facilitate_compliance/1, 'implementing acts must facilitate compliance with conformity assessment', 'celex:32024R1689/oj#art_58').
declared(must_facilitate_involvement/1, 'implementing acts must facilitate involvement of relevant actors', 'celex:32024R1689/oj#art_58').
declared(must_ensure_simple_procedures/1, 'implementing acts must ensure simple and streamlined procedures', 'celex:32024R1689/oj#art_58').
declared(must_limit_participation_period/1, 'implementing acts must limit participation period appropriately', 'celex:32024R1689/oj#art_58').
declared(must_facilitate_tools_development/1, 'implementing acts must facilitate development of testing tools', 'celex:32024R1689/oj#art_58').
declared(must_direct_to_pre_deployment_services/2, 'prospective providers must be directed to pre-deployment services', 'celex:32024R1689/oj#art_58').
declared(must_agree_terms_for_real_world_testing/2, 'national competent authorities must agree terms for real-world testing in sandbox', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts(Commission) :-
    ai_office(Commission).
must_include_common_principles(Acts) :-
    must_adopt_implementing_acts(_),
    implementing_acts(Acts).
must_ensure_open_access(Acts) :-
    must_include_common_principles(Acts).
must_ensure_broad_access(Acts) :-
    must_include_common_principles(Acts).
must_support_flexibility(Acts) :-
    must_include_common_principles(Acts).
must_ensure_free_access_for_smes(Acts) :-
    must_include_common_principles(Acts).
must_facilitate_compliance(Acts) :-
    must_include_common_principles(Acts).
must_facilitate_involvement(Acts) :-
    must_include_common_principles(Acts).
must_ensure_simple_procedures(Acts) :-
    must_include_common_principles(Acts).
must_limit_participation_period(Acts) :-
    must_include_common_principles(Acts).
must_facilitate_tools_development(Acts) :-
    must_include_common_principles(Acts).
must_direct_to_pre_deployment_services(ProspectiveProvider, Services) :-
    provider(ProspectiveProvider),
    ai_regulatory_sandbox(Sandbox),
    pre_deployment_services(Services).
must_agree_terms_for_real_world_testing(Authority, testing_in_real_world_conditions(Testing)) :-
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    supervised_within(Testing, Sandbox),
    testing_in_real_world_conditions(Testing).
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_58').
provenance(must_include_common_principles/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_open_access/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_broad_access/1, 'celex:32024R1689/oj#art_58').
provenance(must_support_flexibility/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_free_access_for_smes/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(must_ensure_simple_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(must_limit_participation_period/1, 'celex:32024R1689/oj#art_58').
provenance(must_facilitate_tools_development/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_real_world_testing/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(further_processing_personal_data_permitted/1, 'further processing of personal data in AI regulatory sandbox permitted', 'celex:32024R1689/oj#art_59').
declared(developed_for_substantial_public_interest/1, 'AI system developed for safeguarding substantial public interest', 'celex:32024R1689/oj#art_59').
declared(developed_in_specified_area/1, 'AI system developed in one of the specified public interest areas', 'celex:32024R1689/oj#art_59').
declared(data_necessary_for_compliance/1, 'personal data necessary for compliance with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_59').
declared(cannot_fulfill_with_non_personal_data/1, 'requirements cannot effectively be fulfilled by processing anonymised, synthetic or other non-personal data', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms/1, 'effective monitoring mechanisms to identify high risks to data subjects', 'celex:32024R1689/oj#art_59').
declared(response_mechanisms_to_mitigate_risks/1, 'response mechanisms to promptly mitigate risks and stop processing', 'celex:32024R1689/oj#art_59').
declared(functionally_separate_processing_environment/1, 'personal data processed in functionally separate, isolated and protected environment', 'celex:32024R1689/oj#art_59').
declared(only_authorised_persons_access_personal_data/1, 'only authorised persons have access to personal data in sandbox', 'celex:32024R1689/oj#art_59').
declared(originally_collected_data_shared_permitted/1, 'originally collected data shared only in accordance with Union data protection law', 'celex:32024R1689/oj#art_59').
declared(sandbox_created_data_not_shared/1, 'personal data created in sandbox not shared outside sandbox', 'celex:32024R1689/oj#art_59').
declared(processing_no_measures_or_decisions_affecting_data_subjects/1, 'processing does not lead to measures or decisions affecting data subjects', 'celex:32024R1689/oj#art_59').
declared(processing_no_affect_on_data_subject_rights/1, 'processing does not affect application of data subject rights under Union law', 'celex:32024R1689/oj#art_59').
declared(personal_data_protected_and_deleted/1, 'personal data protected by appropriate measures and deleted after sandbox participation or retention period', 'celex:32024R1689/oj#art_59').
declared(processing_logs_kept/1, 'logs of processing of personal data kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(description_of_training_and_testing_kept/1, 'complete description of training, testing and validation process kept with results', 'celex:32024R1689/oj#art_59').
declared(summary_published_on_website/1, 'short summary of AI project published on competent authorities website', 'celex:32024R1689/oj#art_59').
declared(sensitive_operational_data_excluded_from_publication/1, 'sensitive operational data excluded from publication obligation', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_sandbox_processing_permitted/1, 'processing of personal data in sandbox for law enforcement purposes permitted', 'celex:32024R1689/oj#art_59').
declared(based_on_specific_union_or_national_law/1, 'processing based on specific Union or national law', 'celex:32024R1689/oj#art_59').
further_processing_personal_data_permitted(Processing) :-
    ai_regulatory_sandbox(Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    processed_for_developing_training_testing(Processing, Data, Sandbox),
    developed_for_substantial_public_interest(Processing),
    developed_in_specified_area(Processing),
    data_necessary_for_compliance(Processing),
    cannot_fulfill_with_non_personal_data(Processing),
    effective_monitoring_mechanisms(Processing),
    response_mechanisms_to_mitigate_risks(Processing),
    functionally_separate_processing_environment(Processing),
    only_authorised_persons_access_personal_data(Processing),
    originally_collected_data_shared_permitted(Processing),
    sandbox_created_data_not_shared(Processing),
    processing_no_measures_or_decisions_affecting_data_subjects(Processing),
    processing_no_affect_on_data_subject_rights(Processing),
    personal_data_protected_and_deleted(Processing),
    processing_logs_kept(Processing),
    description_of_training_and_testing_kept(Processing),
    summary_published_on_website(Processing),
    \+ sensitive_operational_data_excluded_from_publication(Processing).
developed_for_substantial_public_interest(Processing) :-
    developed_by_public_authority_or_legal_person(Processing),
    for_substantial_public_interest(Processing).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, public_safety_and_public_health).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, environment_and_biodiversity).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, energy_sustainability).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, transport_and_critical_infrastructure).
developed_in_specified_area(Processing) :-
    developed_in_area(Processing, public_administration_and_services).
data_necessary_for_compliance(Processing) :-
    data_necessary_for_chapter_3_section_2_requirements(Processing).
cannot_fulfill_with_non_personal_data(Processing) :-
    \+ requirements_fulfilled_by_anonymised_synthetic_or_non_personal_data(Processing).
law_enforcement_sandbox_processing_permitted(Processing) :-
    law_enforcement_authority(Authority),
    under_control_and_responsibility_of(Processing, Authority),
    based_on_specific_union_or_national_law(Processing),
    further_processing_personal_data_permitted(Processing).
provenance(further_processing_personal_data_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(developed_for_substantial_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(developed_in_specified_area/1, 'celex:32024R1689/oj#art_59').
provenance(data_necessary_for_compliance/1, 'celex:32024R1689/oj#art_59').
provenance(cannot_fulfill_with_non_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms_to_mitigate_risks/1, 'celex:32024R1689/oj#art_59').
provenance(functionally_separate_processing_environment/1, 'celex:32024R1689/oj#art_59').
provenance(only_authorised_persons_access_personal_data/1, 'celex:32024R1689/oj#art_59').
provenance(originally_collected_data_shared_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(sandbox_created_data_not_shared/1, 'celex:32024R1689/oj#art_59').
provenance(processing_no_measures_or_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(processing_no_affect_on_data_subject_rights/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_protected_and_deleted/1, 'celex:32024R1689/oj#art_59').
provenance(processing_logs_kept/1, 'celex:32024R1689/oj#art_59').
provenance(description_of_training_and_testing_kept/1, 'celex:32024R1689/oj#art_59').
provenance(summary_published_on_website/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_excluded_from_publication/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_sandbox_processing_permitted/1, 'celex:32024R1689/oj#art_59').
provenance(based_on_specific_union_or_national_law/1, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(testing_in_real_world_conditions_outside_sandbox/1, 'testing of high-risk AI systems in real world conditions outside AI regulatory sandboxes', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_plan_submitted/2, 'provider submitted real-world testing plan to market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_approved/2, 'market surveillance authority approved real-world testing and plan', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_registered/2, 'provider registered real-world testing with unique identification number', 'celex:32024R1689/oj#art_60').
declared(legal_representative_in_union/1, 'provider has appointed a legal representative established in the Union', 'celex:32024R1689/oj#art_60').
declared(data_transfer_safeguards_implemented/1, 'appropriate and applicable safeguards under Union law are implemented for data transfer', 'celex:32024R1689/oj#art_60').
declared(testing_duration_within_limit/1, 'testing duration does not exceed six months or extended period with notification', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployer_informed_and_agreement_concluded/2, 'deployer informed of all relevant aspects and agreement concluded', 'celex:32024R1689/oj#art_60').
declared(subjects_gave_informed_consent/1, 'subjects gave informed consent or law enforcement exception applies', 'celex:32024R1689/oj#art_60').
declared(testing_effectively_overseen/1, 'testing effectively overseen by suitably qualified persons', 'celex:32024R1689/oj#art_60').
declared(system_output_reversible/1, 'predictions, recommendations or decisions can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60').
declared(serious_incident_reported/2, 'serious incident reported to national market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(mitigation_measures_adopted/1, 'immediate mitigation measures adopted or testing suspended', 'celex:32024R1689/oj#art_60').
declared(recall_procedure_established/1, 'procedure for prompt recall of AI system upon termination established', 'celex:32024R1689/oj#art_60').
declared(suspension_or_termination_notified/2, 'suspension or termination and final outcomes notified to market surveillance authority', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    \+ prohibited_testing_in_real_world_conditions_outside_sandbox(P, S).
prohibited_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(S),
    prohibited_ai_practice(S).
permitted_testing_timing(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    \+ placing_on_market(S),
    \+ putting_into_service(S).
permitted_testing_in_real_world_conditions_outside_sandbox(P, S) :-
    (provider(P); prospective_provider(P)),
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(S),
    real_world_testing_plan_submitted(P, S),
    real_world_testing_approved(Authority, S),
    market_surveillance_authority(Authority),
    real_world_testing_registered(P, S),
    (established_in_union(P); legal_representative_in_union(P)),
    data_transfer_safeguards_implemented(S),
    testing_duration_within_limit(S),
    vulnerable_subjects_protected(S),
    deployer_informed_and_agreement_concluded(P, S),
    subjects_gave_informed_consent(S),
    testing_effectively_overseen(S),
    system_output_reversible(S).
established_in_union(P) :-
    provider(P),
    \+ established_in_third_country(P).
real_world_testing_registered(P, S) :-
    annex_3_point_1_a_system(S),
    law_enforcement_migration_asylum_border(S),
    registered_in_secure_non_public_database(P, S).
real_world_testing_registered(P, S) :-
    annex_3_point_2_system(S),
    registered_in_accordance_with_art_49_par_5(P, S).
real_world_testing_registered(P, S) :-
    high_risk_ai_system(S),
    \+ annex_3_point_1_a_system(S),
    \+ annex_3_point_2_system(S),
    \+ (law_enforcement_migration_asylum_border(S), (annex_3_point_1_a_system(S); annex_3_point_6_system(S); annex_3_point_7_system(S))),
    registered_in_accordance_with_art_71_par_4(P, S).
testing_duration_within_limit(S) :-
    testing_duration(S, months(M)),
    M =< 6.
testing_duration_within_limit(S) :-
    testing_duration(S, months(M)),
    M =< 12,
    extension_notified(P, S),
    extension_explanation_provided(P, S).
subjects_gave_informed_consent(S) :-
    informed_consent(subjects(S)).
subjects_gave_informed_consent(S) :-
    law_enforcement(S),
    \+ informed_consent(subjects(S)),
    no_negative_effect_on_subjects(S),
    personal_data_deleted_after_test(S).
must_permit_withdrawal(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    subjects_gave_informed_consent(S).
must_delete_personal_data_on_request(P, S) :-
    must_permit_withdrawal(P, S),
    withdrawal_requested(subjects(S)).
must_report_serious_incident(P, Authority, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    serious_incident(Incident),
    identified_in_testing(Incident, S),
    market_surveillance_authority(Authority).
must_adopt_mitigation_or_suspend(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    serious_incident(Incident),
    identified_in_testing(Incident, S).
must_establish_recall_procedure(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S).
must_notify_suspension_or_termination(P, Authority, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    market_surveillance_authority(Authority).
liable_for_damage(P, S) :-
    permitted_testing_in_real_world_conditions_outside_sandbox(P, S),
    damage_caused_in_testing(P, S).
provenance(testing_in_real_world_conditions_outside_sandbox/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(prohibited_testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_timing/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_approved/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_registered/2, 'celex:32024R1689/oj#art_60').
provenance(legal_representative_in_union/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_safeguards_implemented/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_within_limit/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployer_informed_and_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(subjects_gave_informed_consent/1, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(system_output_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(must_permit_withdrawal/2, 'celex:32024R1689/oj#art_60').
provenance(must_delete_personal_data_on_request/2, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/3, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/3, 'celex:32024R1689/oj#art_60').
provenance(liable_for_damage/2, 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_60', 'celex:32024R1689/oj#anx_3').
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
declared(must_obtain_informed_consent/2, 'provider must obtain informed consent from subjects before real-world testing', 'celex:32024R1689/oj#art_61').
declared(informed_consent_documented/1, 'informed consent is dated, documented and a copy given to the subject', 'celex:32024R1689/oj#art_61').
declared(informed_consent_information/1, 'information provided to subjects before consent', 'celex:32024R1689/oj#art_61').
must_obtain_informed_consent(Provider, Subject) :-
    provider(Provider),
    subject(Subject),
    testing_in_real_world_conditions(Testing),
    informed_consent(Consent),
    informed_consent_information(Information),
    obtained_before_participation(Consent, Subject, Testing),
    duly_informed(Subject, Information).
informed_consent_information(Information) :-
    information_regarding(Information, nature_and_objectives),
    information_regarding(Information, conditions_and_duration),
    information_regarding(Information, rights_and_guarantees),
    information_regarding(Information, reversal_arrangements),
    information_regarding(Information, identification_and_contact).
informed_consent_documented(Consent) :-
    informed_consent(Consent),
    dated(Consent),
    documented(Consent),
    copy_given_to_subject(Consent).
provenance(must_obtain_informed_consent/2, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_information/1, 'celex:32024R1689/oj#art_61').
provenance(informed_consent_documented/1, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(sme/1, 'small or medium-sized enterprise', 'celex:32024R1689/oj#art_62').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_62').
declared(registered_office_or_branch_in_union/1, 'has a registered office or a branch in the Union', 'celex:32024R1689/oj#art_62').
declared(fulfils_eligibility_conditions/1, 'fulfils the eligibility conditions for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(fulfils_selection_criteria/1, 'fulfils the selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_sandbox/1, 'has priority access to AI regulatory sandboxes', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_activities/1, 'awareness raising and training activities on the application of the regulation', 'celex:32024R1689/oj#art_62').
declared(dedicated_communication_channels/1, 'dedicated channels for communication about the implementation of the regulation', 'celex:32024R1689/oj#art_62').
declared(participation_in_standardisation/1, 'participation in the standardisation development process', 'celex:32024R1689/oj#art_62').
declared(conformity_assessment_fees/1, 'fees for conformity assessment under Article 43', 'celex:32024R1689/oj#art_62').
declared(standardised_templates/1, 'standardised templates for areas covered by the regulation', 'celex:32024R1689/oj#art_62').
declared(single_information_platform/1, 'single information platform providing easy to use information', 'celex:32024R1689/oj#art_62').
declared(communication_campaigns/1, 'communication campaigns to raise awareness about obligations', 'celex:32024R1689/oj#art_62').
declared(best_practices_in_public_procurement/1, 'convergence of best practices in public procurement procedures', 'celex:32024R1689/oj#art_62').
must_provide_priority_access(MemberState, E) :-
    sme(E),
    start_up(E),
    registered_office_or_branch_in_union(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).
priority_access_to_sandbox(E) :-
    sme(E),
    start_up(E),
    registered_office_or_branch_in_union(E),
    fulfils_eligibility_conditions(E),
    fulfils_selection_criteria(E).
must_organise_awareness_activities(MemberState, activities(application_of_regulation)) :-
    true.
awareness_raising_activities(activities(application_of_regulation)).
must_utilise_communication_channels(MemberState, channels(implementation_of_regulation)) :-
    true.
dedicated_communication_channels(channels(implementation_of_regulation)).
must_facilitate_standardisation_participation(MemberState, participation(sme_and_stakeholders)) :-
    true.
participation_in_standardisation(participation(sme_and_stakeholders)).
must_take_into_account_sme_interests(conformity_assessment_body, fees(conformity_assessment)) :-
    true.
conformity_assessment_fees(fees(conformity_assessment)).
must_provide_standardised_templates(ai_office, templates(areas_covered_by_regulation)) :-
    true.
standardised_templates(templates(areas_covered_by_regulation)).
must_develop_information_platform(ai_office, platform(information_for_operators)) :-
    true.
single_information_platform(platform(information_for_operators)).
must_organise_communication_campaigns(ai_office, campaigns(obligations_awareness)) :-
    true.
communication_campaigns(campaigns(obligations_awareness)).
must_evaluate_best_practices(ai_office, procurement(ai_systems)) :-
    true.
best_practices_in_public_procurement(procurement(ai_systems)).
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_activities/2, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_activities/1, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_communication_channels/2, 'celex:32024R1689/oj#art_62').
provenance(dedicated_communication_channels/1, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_standardisation_participation/2, 'celex:32024R1689/oj#art_62').
provenance(participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_62').
provenance(conformity_assessment_fees/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/2, 'celex:32024R1689/oj#art_62').
provenance(standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(must_develop_information_platform/2, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/2, 'celex:32024R1689/oj#art_62').
provenance(communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_best_practices/2, 'celex:32024R1689/oj#art_62').
provenance(best_practices_in_public_procurement/1, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(has_partner_or_linked_enterprise/1, 'has partner enterprises or linked enterprises within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(simplified_quality_management_permitted/1, 'may comply with quality management system elements in a simplified manner', 'celex:32024R1689/oj#art_63').
declared(must_develop_guidelines/2, 'Commission shall develop guidelines on simplified quality management elements', 'celex:32024R1689/oj#art_63').
simplified_quality_management_permitted(M) :-
    microenterprise(M),
    \+ has_partner_or_linked_enterprise(M).
must_develop_guidelines(Commission, simplified_quality_management) :-
    ai_office(Commission).
provenance(simplified_quality_management_permitted/1, 'celex:32024R1689/oj#art_63').
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
declared(must_develop_union_expertise/2, 'entity must develop Union expertise and capabilities in AI through the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_facilitate_tasks/2, 'Member State must facilitate tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
must_develop_union_expertise(Commission, ai_office) :-
    ai_office(AI_Office).
must_facilitate_tasks(Member_State, ai_office) :-
    ai_office(AI_Office).
provenance(must_develop_union_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(board_established/1, 'European Artificial Intelligence Board is established', 'celex:32024R1689/oj#art_65').
declared(board_representative/1, 'representative of a Member State on the Board', 'celex:32024R1689/oj#art_65').
declared(board_observer/1, 'observer participating in Board meetings', 'celex:32024R1689/oj#art_65').
declared(board_attendee/1, 'entity attending Board meetings without voting', 'celex:32024R1689/oj#art_65').
declared(board_invitee/1, 'entity invited to Board meetings on a case-by-case basis', 'celex:32024R1689/oj#art_65').
declared(board_standing_subgroup/1, 'standing sub-group of the Board', 'celex:32024R1689/oj#art_65').
declared(board_temporary_subgroup/1, 'temporary sub-group of the Board', 'celex:32024R1689/oj#art_65').
declared(board_chair/1, 'Chair of the Board', 'celex:32024R1689/oj#art_65').
declared(board_secretariat/1, 'secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(board_rules_of_procedure/1, 'rules of procedure of the Board', 'celex:32024R1689/oj#art_65').
declared(designated_for_period/2, 'representative designated for a period', 'celex:32024R1689/oj#art_65').
declared(single_contact_point/1, 'designated as single contact point vis-à-vis the Board', 'celex:32024R1689/oj#art_65').
declared(empowered_for_coordination/1, 'empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(market_surveillance_subgroup/1, 'standing sub-group for market surveillance', 'celex:32024R1689/oj#art_65').
declared(notifying_authorities_subgroup/1, 'standing sub-group for notifying authorities', 'celex:32024R1689/oj#art_65').
board_established(board).
board_observer(european_data_protection_supervisor).
board_attendee(ai_office).
board_secretariat(ai_office).
board_representative(R) :-
    designated_for_period(R, years(3)).
must_designate_representative(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState).
must_ensure_competences(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    has_relevant_competences(R).
must_ensure_single_contact_point(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    single_contact_point(R).
must_ensure_empowered_for_coordination(MemberState, R) :-
    board_representative(R),
    designated_by(R, MemberState),
    empowered_for_coordination(R).
must_adopt_rules_of_procedure(Representatives, Rules) :-
    board_rules_of_procedure(Rules),
    adopted_by_majority(Representatives, Rules, two_thirds).
must_establish_standing_subgroups(Board, Subgroup) :-
    board_standing_subgroup(Subgroup),
    (   market_surveillance_subgroup(Subgroup)
    ;   notifying_authorities_subgroup(Subgroup)
    ).
may_establish_other_subgroups(Board, Subgroup) :-
    (   board_standing_subgroup(Subgroup)
    ;   board_temporary_subgroup(Subgroup)
    ),
    \+ market_surveillance_subgroup(Subgroup),
    \+ notifying_authorities_subgroup(Subgroup).
must_safeguard_objectivity_impartiality(Board) :-
    board_established(Board).
must_be_chaired_by_representative(Board, Chair) :-
    board_chair(Chair),
    board_representative(Chair).
must_convene_meetings(Secretariat, Chair) :-
    board_secretariat(Secretariat),
    board_chair(Chair).
must_prepare_agenda(Secretariat, Board) :-
    board_secretariat(Secretariat),
    board_established(Board).
provenance(board_established/1, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_attendee/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/1, 'celex:32024R1689/oj#art_65').
provenance(must_designate_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_competences/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_single_contact_point/2, 'celex:32024R1689/oj#art_65').
provenance(must_ensure_empowered_for_coordination/2, 'celex:32024R1689/oj#art_65').
provenance(must_adopt_rules_of_procedure/2, 'celex:32024R1689/oj#art_65').
provenance(must_establish_standing_subgroups/2, 'celex:32024R1689/oj#art_65').
provenance(may_establish_other_subgroups/2, 'celex:32024R1689/oj#art_65').
provenance(must_safeguard_objectivity_impartiality/1, 'celex:32024R1689/oj#art_65').
provenance(must_be_chaired_by_representative/2, 'celex:32024R1689/oj#art_65').
provenance(must_convene_meetings/2, 'celex:32024R1689/oj#art_65').
provenance(must_prepare_agenda/2, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'European Artificial Intelligence Board', 'celex:32024R1689/oj#art_66').
declared(must_advise_and_assist/2, 'Board must advise and assist Commission and Member States', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_coordination/1, 'Board may contribute to coordination among national competent authorities', 'celex:32024R1689/oj#art_66').
declared(may_support_joint_activities/1, 'Board may support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
declared(may_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise', 'celex:32024R1689/oj#art_66').
declared(may_provide_implementation_advice/1, 'Board may provide advice on implementation of the regulation', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation/1, 'Board may contribute to harmonisation of administrative practices', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations/1, 'Board may issue recommendations and written opinions', 'celex:32024R1689/oj#art_66').
declared(may_support_promotion_of_ai_literacy/1, 'Board may support Commission in promoting AI literacy', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria/1, 'Board may facilitate development of common criteria and shared understanding', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_union_bodies/1, 'Board may cooperate with other Union institutions and bodies', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_international_cooperation/1, 'Board may contribute to effective cooperation with third countries', 'celex:32024R1689/oj#art_66').
declared(may_assist_in_developing_expertise/1, 'Board may assist in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(may_assist_ai_office/1, 'Board may assist AI Office in supporting sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_guidance_documents/1, 'Board may contribute to development of guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_on_international_matters/1, 'Board may advise Commission on international matters on AI', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_qualified_alerts/1, 'Board may provide opinions on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_opinions_from_member_states/1, 'Board may receive opinions from Member States on qualified alerts', 'celex:32024R1689/oj#art_66').
board(B) :-
    ai_office(_),
    B = board.
must_advise_and_assist(Board, commission_and_member_states) :-
    board(Board).
may_contribute_to_coordination(Board) :-
    board(Board).
may_support_joint_activities(Board) :-
    board(Board).
may_collect_and_share_expertise(Board) :-
    board(Board).
may_provide_implementation_advice(Board) :-
    board(Board).
may_contribute_to_harmonisation(Board) :-
    board(Board).
may_issue_recommendations(Board) :-
    board(Board).
may_support_promotion_of_ai_literacy(Board) :-
    board(Board).
may_facilitate_common_criteria(Board) :-
    board(Board).
may_cooperate_with_union_bodies(Board) :-
    board(Board).
may_contribute_to_international_cooperation(Board) :-
    board(Board).
may_assist_in_developing_expertise(Board) :-
    board(Board).
may_assist_ai_office(Board) :-
    board(Board).
may_contribute_to_guidance_documents(Board) :-
    board(Board).
may_advise_on_international_matters(Board) :-
    board(Board).
may_provide_opinions_on_qualified_alerts(Board) :-
    board(Board).
may_receive_opinions_from_member_states(Board) :-
    board(Board).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/2, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_joint_activities/1, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_implementation_advice/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_promotion_of_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_international_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_in_developing_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_guidance_documents/1, 'celex:32024R1689/oj#art_66').
provenance(may_advise_on_international_matters/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_opinions_on_qualified_alerts/1, 'celex:32024R1689/oj#art_66').
provenance(may_receive_opinions_from_member_states/1, 'celex:32024R1689/oj#art_66').
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
declared(board/1, 'AI Board', 'celex:32024R1689/oj#art_67').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_67').
declared(member_of_advisory_forum/1, 'member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(co_chair_of_advisory_forum/1, 'co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permanent_member_of_advisory_forum/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(stakeholder_with_recognised_expertise_in_ai/1, 'stakeholder with recognised expertise in the field of AI', 'celex:32024R1689/oj#art_67').
declared(balanced_selection_of_stakeholders/1, 'balanced selection of stakeholders', 'celex:32024R1689/oj#art_67').
declared(balanced_commercial_non_commercial_interests/1, 'balanced with regard to commercial and non-commercial interests', 'celex:32024R1689/oj#art_67').
declared(balanced_smes_and_other_undertakings/1, 'balanced with regard to SMEs and other undertakings', 'celex:32024R1689/oj#art_67').
declared(rules_of_procedure/1, 'rules of procedure of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(annual_report_on_activities/1, 'annual report on the activities of the advisory forum', 'celex:32024R1689/oj#art_67').
must_establish(Commission, advisory_forum).
must_provide_technical_expertise_and_advise(advisory_forum, board).
must_provide_technical_expertise_and_advise(advisory_forum, commission).
must_contribute_to_tasks(advisory_forum, board).
must_contribute_to_tasks(advisory_forum, commission).
balanced_selection_of_stakeholders(Membership) :-
    membership_of_advisory_forum(Membership),
    includes_industry(Membership),
    includes_start_ups(Membership),
    includes_smes(Membership),
    includes_civil_society(Membership),
    includes_academia(Membership).
balanced_commercial_non_commercial_interests(Membership) :-
    membership_of_advisory_forum(Membership).
balanced_smes_and_other_undertakings(Membership) :-
    membership_of_advisory_forum(Membership).
must_appoint_members(Commission, advisory_forum) :-
    stakeholder_with_recognised_expertise_in_ai(Stakeholder),
    balanced_selection_of_stakeholders(Stakeholder).
term_of_office(member_of_advisory_forum, years(2)).
may_extend_term_of_office(member_of_advisory_forum, extension(years(2), maximum(years(4)))).
permanent_member_of_advisory_forum(fundamental_rights_agency).
permanent_member_of_advisory_forum(enisa).
permanent_member_of_advisory_forum(cen).
permanent_member_of_advisory_forum(cenelec).
permanent_member_of_advisory_forum(etsi).
must_draw_up_rules_of_procedure(advisory_forum).
must_elect_co_chairs(advisory_forum, co_chair_of_advisory_forum) :-
    balanced_selection_of_stakeholders(co_chair_of_advisory_forum).
term_of_office(co_chair_of_advisory_forum, years(2)).
may_renew_term_of_office(co_chair_of_advisory_forum, once).
must_hold_meetings(advisory_forum, at_least(twice_per_year)).
may_invite_experts_and_stakeholders(advisory_forum).
may_prepare_opinions(advisory_forum) :-
    requested_by(board).
may_prepare_opinions(advisory_forum) :-
    requested_by(commission).
may_prepare_recommendations(advisory_forum) :-
    requested_by(board).
may_prepare_recommendations(advisory_forum) :-
    requested_by(commission).
may_prepare_written_contributions(advisory_forum) :-
    requested_by(board).
may_prepare_written_contributions(advisory_forum) :-
    requested_by(commission).
may_establish_sub_groups(advisory_forum, standing).
may_establish_sub_groups(advisory_forum, temporary) :-
    for_purpose_of_examining_specific_questions(advisory_forum).
must_prepare_annual_report(advisory_forum).
must_make_publicly_available(annual_report_on_activities).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(board/1, 'celex:32024R1689/oj#art_67').
provenance(commission/1, 'celex:32024R1689/oj#art_67').
provenance(member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(co_chair_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_member_of_advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(stakeholder_with_recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_selection_of_stakeholders/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_non_commercial_interests/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_smes_and_other_undertakings/1, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_on_activities/1, 'celex:32024R1689/oj#art_67').
provenance(must_establish/2, 'celex:32024R1689/oj#art_67').
provenance(must_provide_technical_expertise_and_advise/2, 'celex:32024R1689/oj#art_67').
provenance(must_contribute_to_tasks/2, 'celex:32024R1689/oj#art_67').
provenance(must_appoint_members/2, 'celex:32024R1689/oj#art_67').
provenance(term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(may_extend_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(must_draw_up_rules_of_procedure/1, 'celex:32024R1689/oj#art_67').
provenance(must_elect_co_chairs/2, 'celex:32024R1689/oj#art_67').
provenance(may_renew_term_of_office/2, 'celex:32024R1689/oj#art_67').
provenance(must_hold_meetings/2, 'celex:32024R1689/oj#art_67').
provenance(may_invite_experts_and_stakeholders/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_recommendations/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_written_contributions/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/2, 'celex:32024R1689/oj#art_67').
provenance(must_prepare_annual_report/1, 'celex:32024R1689/oj#art_67').
provenance(must_make_publicly_available/1, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_68').
declared(must_establish_scientific_panel/1, 'Commission must establish scientific panel', 'celex:32024R1689/oj#art_68').
declared(must_select_experts/2, 'Commission must select experts for scientific panel', 'celex:32024R1689/oj#art_68').
declared(must_determine_panel_size/2, 'Commission must determine number of experts on panel', 'celex:32024R1689/oj#art_68').
declared(must_ensure_representation/1, 'Commission must ensure fair gender and geographical representation', 'celex:32024R1689/oj#art_68').
declared(must_advise_ai_office/2, 'scientific panel must advise and support AI Office', 'celex:32024R1689/oj#art_68').
declared(must_alert_systemic_risks/2, 'scientific panel must alert AI Office of systemic risks', 'celex:32024R1689/oj#art_68').
declared(must_contribute_tools_methodologies/2, 'scientific panel must contribute to tools and methodologies', 'celex:32024R1689/oj#art_68').
declared(must_advise_classification_systemic_risk/2, 'scientific panel must advise on classification of systemic risk models', 'celex:32024R1689/oj#art_68').
declared(must_advise_classification_models/2, 'scientific panel must advise on classification of general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(must_contribute_tools_templates/2, 'scientific panel must contribute to tools and templates', 'celex:32024R1689/oj#art_68').
declared(must_support_market_surveillance/2, 'scientific panel must support market surveillance authorities', 'celex:32024R1689/oj#art_68').
declared(must_support_cross_border_activities/2, 'scientific panel must support cross-border market surveillance', 'celex:32024R1689/oj#art_68').
declared(must_support_safeguard_procedure/2, 'scientific panel must support AI Office in safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(must_perform_tasks_impartially/1, 'experts must perform tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(must_ensure_confidentiality/1, 'experts must ensure confidentiality of information', 'celex:32024R1689/oj#art_68').
declared(must_not_seek_instructions/1, 'experts must not seek or take instructions', 'celex:32024R1689/oj#art_68').
declared(must_draw_up_declaration_of_interests/1, 'each expert must draw up declaration of interests', 'celex:32024R1689/oj#art_68').
declared(must_make_declaration_public/1, 'declaration of interests must be made publicly available', 'celex:32024R1689/oj#art_68').
declared(must_manage_conflicts_of_interest/1, 'AI Office must manage and prevent conflicts of interest', 'celex:32024R1689/oj#art_68').
declared(must_include_provisions_on_alerts/1, 'implementing act must include provisions on alerts', 'celex:32024R1689/oj#art_68').
declared(must_include_provisions_on_assistance/1, 'implementing act must include provisions on requesting assistance', 'celex:32024R1689/oj#art_68').
declared(expert/1, 'member of the scientific panel', 'celex:32024R1689/oj#art_68').
declared(particular_expertise_in_ai/1, 'has particular expertise and competence in AI', 'celex:32024R1689/oj#art_68').
declared(independent_from_providers/1, 'independent from any provider of AI systems or models', 'celex:32024R1689/oj#art_68').
declared(ability_to_act_diligently/1, 'ability to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
must_establish_scientific_panel(Commission) :-
    ai_office(_).
must_select_experts(Commission, Panel) :-
    scientific_panel(Panel),
    expert(E),
    particular_expertise_in_ai(E),
    independent_from_providers(E),
    ability_to_act_diligently(E).
must_determine_panel_size(Commission, Panel) :-
    scientific_panel(Panel),
    must_ensure_representation(Panel).
must_ensure_representation(Panel) :-
    scientific_panel(Panel).
must_advise_ai_office(Panel, ai_office) :-
    scientific_panel(Panel).
must_alert_systemic_risks(Panel, ai_office) :-
    scientific_panel(Panel),
    systemic_risk_classification_applies(_).
must_contribute_tools_methodologies(Panel, ai_office) :-
    scientific_panel(Panel).
must_advise_classification_systemic_risk(Panel, ai_office) :-
    scientific_panel(Panel),
    systemic_risk_classification_applies(_).
must_advise_classification_models(Panel, ai_office) :-
    scientific_panel(Panel),
    general_purpose_ai_model(_).
must_contribute_tools_templates(Panel, ai_office) :-
    scientific_panel(Panel).
must_support_market_surveillance(Panel, Authority) :-
    scientific_panel(Panel),
    market_surveillance_authority(Authority).
must_support_cross_border_activities(Panel, _) :-
    scientific_panel(Panel).
must_support_safeguard_procedure(Panel, ai_office) :-
    scientific_panel(Panel).
must_perform_tasks_impartially(E) :-
    expert(E).
must_ensure_confidentiality(E) :-
    expert(E).
must_not_seek_instructions(E) :-
    expert(E).
must_draw_up_declaration_of_interests(E) :-
    expert(E).
must_make_declaration_public(Declaration) :-
    must_draw_up_declaration_of_interests(_).
must_manage_conflicts_of_interest(ai_office).
must_include_provisions_on_alerts(ImplementingAct) :-
    must_establish_scientific_panel(_).
must_include_provisions_on_assistance(ImplementingAct) :-
    must_establish_scientific_panel(_).
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_select_experts/2, 'celex:32024R1689/oj#art_68').
provenance(must_determine_panel_size/2, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_representation/1, 'celex:32024R1689/oj#art_68').
provenance(must_advise_ai_office/2, 'celex:32024R1689/oj#art_68').
provenance(must_alert_systemic_risks/2, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_tools_methodologies/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_classification_systemic_risk/2, 'celex:32024R1689/oj#art_68').
provenance(must_advise_classification_models/2, 'celex:32024R1689/oj#art_68').
provenance(must_contribute_tools_templates/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_market_surveillance/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_cross_border_activities/2, 'celex:32024R1689/oj#art_68').
provenance(must_support_safeguard_procedure/2, 'celex:32024R1689/oj#art_68').
provenance(must_perform_tasks_impartially/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality/1, 'celex:32024R1689/oj#art_68').
provenance(must_not_seek_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(must_draw_up_declaration_of_interests/1, 'celex:32024R1689/oj#art_68').
provenance(must_make_declaration_public/1, 'celex:32024R1689/oj#art_68').
provenance(must_manage_conflicts_of_interest/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_alerts/1, 'celex:32024R1689/oj#art_68').
provenance(must_include_provisions_on_assistance/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(expert/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_providers/1, 'celex:32024R1689/oj#art_68').
provenance(ability_to_act_diligently/1, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(may_call_on_experts/2, 'Member State may call upon experts of the scientific panel for enforcement support', 'celex:32024R1689/oj#art_69').
declared(may_be_required_to_pay_fees/2, 'Member State may be required to pay fees for expert advice and support', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_timely_access/2, 'Commission must facilitate timely access to experts for Member States', 'celex:32024R1689/oj#art_69').
declared(must_ensure_efficient_organisation/2, 'Commission must ensure support activities are efficiently organised', 'celex:32024R1689/oj#art_69').
may_call_on_experts(MemberState, enforcement_support) :-
    experts_designated_by_member_states(Experts),
    involved_in_application(MemberState).
may_be_required_to_pay_fees(MemberState, advice_and_support) :-
    may_call_on_experts(MemberState, enforcement_support).
must_facilitate_timely_access(Commission, MemberState) :-
    may_call_on_experts(MemberState, enforcement_support).
must_ensure_efficient_organisation(Commission, support_activities) :-
    must_facilitate_timely_access(Commission, _MemberState).
provenance(may_call_on_experts/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_establish_or_designate/2, 'Member State must establish or designate national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_communicate_identity/2, 'Member State must communicate identity of notifying and market surveillance authorities to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_publicly_available/2, 'Member State must make publicly available contact information for competent authorities and single points of contact', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/2, 'Member State must designate a market surveillance authority as single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_notify_identity_of_single_point_of_contact/2, 'Member State must notify Commission of identity of single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_make_list_publicly_available/1, 'Commission must make list of single points of contact publicly available', 'celex:32024R1689/oj#art_70').
declared(must_ensure_adequate_resources/2, 'Member State must ensure national competent authorities have adequate technical, financial and human resources and infrastructure', 'celex:32024R1689/oj#art_70').
declared(must_have_sufficient_personnel/1, 'national competent authority must have sufficient number of permanently available personnel with required expertise', 'celex:32024R1689/oj#art_70').
declared(must_assess_and_update_requirements/1, 'Member State must assess and if necessary update competence and resource requirements annually', 'celex:32024R1689/oj#art_70').
declared(must_ensure_adequate_cybersecurity/1, 'national competent authority must take appropriate measures to ensure adequate level of cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act_in_accordance_with_confidentiality/1, 'national competent authority must act in accordance with confidentiality obligations of Article 78', 'celex:32024R1689/oj#art_70').
declared(must_report_on_resources/2, 'Member State must report to Commission on status of financial and human resources of national competent authorities', 'celex:32024R1689/oj#art_70').
declared(must_transmit_information_to_board/1, 'Commission must transmit resource information to Board for discussion and possible recommendations', 'celex:32024R1689/oj#art_70').
declared(must_facilitate_exchange_of_experience/1, 'Commission must facilitate exchange of experience between national competent authorities', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance_and_advice/2, 'national competent authority may provide guidance and advice on implementation, in particular to SMEs', 'celex:32024R1689/oj#art_70').
declared(must_consult_other_authorities/2, 'national competent authority must consult other Union law authorities when providing guidance on AI system in areas covered by other Union law', 'celex:32024R1689/oj#art_70').
declared(acts_as_competent_authority/2, 'European Data Protection Supervisor acts as competent authority for supervision of Union institutions', 'celex:32024R1689/oj#art_70').
must_establish_or_designate(MemberState, authorities(notifying_authority, market_surveillance_authority)) :-
    member_state(MemberState).
must_exercise_powers_independently(Authority) :-
    national_competent_authority(Authority).
must_refrain_from_incompatible_action(Member) :-
    member_of_authority(Member),
    national_competent_authority(Authority),
    member_of(Member, Authority).
must_communicate_identity(MemberState, identity(notifying_authorities, market_surveillance_authorities, tasks)) :-
    member_state(MemberState).
must_make_publicly_available(MemberState, contact_information(competent_authorities, single_points_of_contact)) :-
    member_state(MemberState).
must_designate_single_point_of_contact(MemberState, market_surveillance_authority) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    designated_as_single_point_of_contact(Authority).
must_notify_identity_of_single_point_of_contact(MemberState, single_point_of_contact) :-
    member_state(MemberState),
    designated_as_single_point_of_contact(Authority),
    single_point_of_contact(Authority).
must_make_list_publicly_available(Commission) :-
    ai_office(Commission).
must_ensure_adequate_resources(MemberState, resources(technical, financial, human, infrastructure)) :-
    member_state(MemberState).
must_have_sufficient_personnel(Authority) :-
    national_competent_authority(Authority).
must_assess_and_update_requirements(MemberState) :-
    member_state(MemberState).
must_ensure_adequate_cybersecurity(Authority) :-
    national_competent_authority(Authority).
must_act_in_accordance_with_confidentiality(Authority) :-
    national_competent_authority(Authority).
must_report_on_resources(MemberState, status(financial_resources, human_resources, adequacy_assessment)) :-
    member_state(MemberState).
must_transmit_information_to_board(Commission) :-
    ai_office(Commission).
must_facilitate_exchange_of_experience(Commission) :-
    ai_office(Commission).
may_provide_guidance_and_advice(Authority, smes_including_startups) :-
    national_competent_authority(Authority).
must_consult_other_authorities(Authority, ai_system_in_other_union_law_area) :-
    national_competent_authority(Authority),
    intends_to_provide_guidance(Authority, ai_system_in_other_union_law_area).
acts_as_competent_authority(european_data_protection_supervisor, union_institutions_bodies_offices_agencies) :-
    within_scope_of_regulation(union_institutions_bodies_offices_agencies).
provenance(must_establish_or_designate/2, 'celex:32024R1689/oj#art_70').
provenance(must_exercise_powers_independently/1, 'celex:32024R1689/oj#art_70').
provenance(must_refrain_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_publicly_available/2, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_notify_identity_of_single_point_of_contact/2, 'celex:32024R1689/oj#art_70').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_have_sufficient_personnel/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_requirements/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_on_resources/2, 'celex:32024R1689/oj#art_70').
provenance(must_transmit_information_to_board/1, 'celex:32024R1689/oj#art_70').
provenance(must_facilitate_exchange_of_experience/1, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/2, 'celex:32024R1689/oj#art_70').
provenance(must_consult_other_authorities/2, 'celex:32024R1689/oj#art_70').
provenance(acts_as_competent_authority/2, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(must_set_up_and_maintain_eu_database/2, 'Commission must set up and maintain EU database in collaboration with Member States', 'celex:32024R1689/oj#art_71').
declared(must_enter_data_into_eu_database/2, 'entity must enter specified data into the EU database', 'celex:32024R1689/oj#art_71').
declared(must_consult_experts_on_functional_specifications/1, 'Commission must consult relevant experts when setting functional specifications', 'celex:32024R1689/oj#art_71').
declared(must_consult_board_on_updating_specifications/1, 'Commission must consult the Board when updating functional specifications', 'celex:32024R1689/oj#art_71').
declared(eu_database_publicly_accessible/1, 'information in the EU database is publicly accessible', 'celex:32024R1689/oj#art_71').
declared(eu_database_restricted_access/1, 'information in the EU database is accessible only to market surveillance authorities and the Commission', 'celex:32024R1689/oj#art_71').
declared(eu_database_contains_personal_data/1, 'EU database contains personal data only as necessary', 'celex:32024R1689/oj#art_71').
declared(commission_is_controller_of_eu_database/1, 'Commission is the controller of the EU database', 'celex:32024R1689/oj#art_71').
declared(must_provide_technical_and_administrative_support/2, 'Commission must provide adequate technical and administrative support', 'celex:32024R1689/oj#art_71').
declared(eu_database_complies_with_accessibility_requirements/1, 'EU database complies with applicable accessibility requirements', 'celex:32024R1689/oj#art_71').
must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)) :-
    ai_office(Commission),
    experts_designated_by_member_states(_Experts).
must_consult_experts_on_functional_specifications(Commission) :-
    ai_office(Commission),
    must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)).
must_consult_board_on_updating_specifications(Commission) :-
    ai_office(Commission),
    must_set_up_and_maintain_eu_database(Commission, database(high_risk_ai_systems)).
must_enter_data_into_eu_database(Provider, data(annex_8_sections_1_and_2)) :-
    provider(Provider),
    high_risk_ai_system(_S).
must_enter_data_into_eu_database(Representative, data(annex_8_sections_1_and_2)) :-
    authorised_representative(Representative),
    high_risk_ai_system(_S).
must_enter_data_into_eu_database(Deployer, data(annex_8_section_3)) :-
    deployer(Deployer),
    (   deployer_is_public_authority(Deployer)
    ;   acts_on_behalf_of_public_authority(Deployer)
    ).
deployer_is_public_authority(Deployer) :-
    deployer(Deployer).
acts_on_behalf_of_public_authority(Deployer) :-
    deployer(Deployer).
eu_database_publicly_accessible(information_registered_under_art_49) :-
    \+ eu_database_restricted_access(information_registered_under_art_49).
eu_database_restricted_access(information_registered_under_art_60) :-
    \+ consent_given_for_public_access(information_registered_under_art_60).
consent_given_for_public_access(information_registered_under_art_60) :-
    provider(_P).
eu_database_contains_personal_data(Database) :-
    must_set_up_and_maintain_eu_database(_Commission, Database),
    personal_data_necessary_for_collecting_and_processing(Database).
personal_data_necessary_for_collecting_and_processing(Database) :-
    eu_database_contains_personal_data(Database).
commission_is_controller_of_eu_database(Commission) :-
    ai_office(Commission).
must_provide_technical_and_administrative_support(Commission, support(providers_prospective_providers_deployers)) :-
    ai_office(Commission).
eu_database_complies_with_accessibility_requirements(Database) :-
    must_set_up_and_maintain_eu_database(_Commission, Database).
provenance(must_set_up_and_maintain_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_experts_on_functional_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board_on_updating_specifications/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_restricted_access/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_personal_data/1, 'celex:32024R1689/oj#art_71').
provenance(commission_is_controller_of_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_provide_technical_and_administrative_support/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_complies_with_accessibility_requirements/1, 'celex:32024R1689/oj#art_71').
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
declared(must_establish_post_market_monitoring_system/2, 'provider must establish and document a post-market monitoring system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_system_applies/1, 'post-market monitoring system is established and documented', 'celex:32024R1689/oj#art_72').
declared(must_collect_and_analyse_data/2, 'post-market monitoring system must actively collect, document and analyse relevant data', 'celex:32024R1689/oj#art_72').
declared(sensitive_operational_data_of_law_enforcement/1, 'sensitive operational data of deployers which are law-enforcement authorities', 'celex:32024R1689/oj#art_72').
declared(must_base_on_post_market_monitoring_plan/2, 'post-market monitoring system must be based on a post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan_in_technical_documentation/1, 'post-market monitoring plan is part of the technical documentation', 'celex:32024R1689/oj#art_72').
declared(commission_must_adopt_implementing_act/1, 'Commission must adopt an implementing act for the post-market monitoring plan template', 'celex:32024R1689/oj#art_72').
declared(covered_by_union_harmonisation_legislation/1, 'high-risk AI system covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_72').
declared(existing_post_market_monitoring_system/1, 'post-market monitoring system and plan already established under other Union harmonisation legislation', 'celex:32024R1689/oj#art_72').
declared(may_integrate_elements/2, 'provider may integrate necessary elements into existing systems and plans', 'celex:32024R1689/oj#art_72').
declared(achieves_equivalent_level_of_protection/1, 'integration achieves an equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(financial_institution_subject_to_union_financial_services_law/1, 'financial institution subject to requirements under Union financial services law', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).
post_market_monitoring_system_applies(System) :-
    high_risk_ai_system(System).
must_collect_and_analyse_data(System, Data) :-
    post_market_monitoring_system_applies(System),
    relevant_performance_data(Data, System),
    \+ sensitive_operational_data_of_law_enforcement(Data).
relevant_performance_data(Data, System) :-
    high_risk_ai_system(System),
    (   provided_by_deployer(Data)
    ;   collected_from_other_sources(Data)
    ),
    allows_evaluation_of_continuous_compliance(Data, System).
provided_by_deployer(Data) :-
    deployer(_).
collected_from_other_sources(_Data).
allows_evaluation_of_continuous_compliance(Data, System) :-
    high_risk_ai_system(System).
sensitive_operational_data_of_law_enforcement(Data) :-
    sensitive_operational_data(Data),
    deployer(Deployer),
    law_enforcement_authority(Deployer).
must_base_on_post_market_monitoring_plan(System, Plan) :-
    post_market_monitoring_system_applies(System),
    post_market_monitoring_plan(Plan).
post_market_monitoring_plan_in_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan).
commission_must_adopt_implementing_act(template(post_market_monitoring_plan)).
may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    covered_by_union_harmonisation_legislation(System),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).
may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    placing_on_market(System),
    financial_institution_subject_to_union_financial_services_law(Provider),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).
may_integrate_elements(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_point_5_system(System),
    putting_into_service(System),
    financial_institution_subject_to_union_financial_services_law(Provider),
    existing_post_market_monitoring_system(System),
    achieves_equivalent_level_of_protection(System).
provenance(must_establish_post_market_monitoring_system/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_applies/1, 'celex:32024R1689/oj#art_72').
provenance(must_collect_and_analyse_data/2, 'celex:32024R1689/oj#art_72').
provenance(sensitive_operational_data_of_law_enforcement/1, 'celex:32024R1689/oj#art_72').
provenance(must_base_on_post_market_monitoring_plan/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_in_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(commission_must_adopt_implementing_act/1, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_elements/2, 'celex:32024R1689/oj#art_72').
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
declared(must_report_serious_incident_death/2, 'provider must report serious incident involving death', 'celex:32024R1689/oj#art_73').
declared(must_report_widespread_infringement/2, 'provider must report widespread infringement or serious incident under point 49(b)', 'celex:32024R1689/oj#art_73').
declared(must_investigate_serious_incident/2, 'provider must investigate serious incident and take corrective action', 'celex:32024R1689/oj#art_73').
declared(must_cooperate_in_investigation/2, 'provider must cooperate with competent authorities during investigation', 'celex:32024R1689/oj#art_73').
declared(must_notify_commission_of_serious_incident/1, 'national competent authority must notify Commission of serious incident', 'celex:32024R1689/oj#art_73').
declared(must_inform_national_authorities/2, 'market surveillance authority must inform national public authorities', 'celex:32024R1689/oj#art_73').
declared(must_take_appropriate_measures/2, 'market surveillance authority must take appropriate measures within seven days', 'celex:32024R1689/oj#art_73').
declared(serious_incident_reporting_limited/1, 'notification of serious incidents limited to point 49(c)', 'celex:32024R1689/oj#art_73').
declared(serious_incident_reporting_limited_medical/1, 'notification of serious incidents limited to point 49(c) for medical devices', 'celex:32024R1689/oj#art_73').
declared(may_submit_incomplete_report/2, 'provider or deployer may submit incomplete initial report', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority).
must_report_serious_incident(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    causal_link_established(Provider, System, incident(System)),
    within_days_of_awareness(Provider, incident(System), days(15)).
must_report_widespread_infringement(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    (   widespread_infringement(incident(System))
    ;   serious_incident_point_49_b(incident(System))
    ),
    within_days_of_awareness(Provider, incident(System), days(2)).
must_report_serious_incident_death(Provider, incident(System, Authority)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority),
    incident_involves_death(incident(System)),
    causal_link_suspected(Provider, System, incident(System)),
    within_days_of_awareness(Provider, incident(System), days(10)).
may_submit_incomplete_report(Reporter, incident(System, Authority)) :-
    (   provider(Reporter)
    ;   deployer(Reporter)
    ),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    market_surveillance_authority(Authority),
    incident_occurred_in(incident(System), Authority).
must_investigate_serious_incident(Provider, incident(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    reported_incident(incident(System)).
must_cooperate_in_investigation(Provider, incident(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    serious_incident(incident(System)),
    must_investigate_serious_incident(Provider, incident(System)).
must_inform_national_authorities(Authority, incident(System)) :-
    market_surveillance_authority(Authority),
    serious_incident(incident(System)),
    serious_incident_point_49_c(incident(System)).
must_take_appropriate_measures(Authority, incident(System)) :-
    market_surveillance_authority(Authority),
    serious_incident(incident(System)),
    reported_incident(incident(System)),
    within_days_of_receipt(Authority, incident(System), days(7)).
serious_incident_reporting_limited(incident(System)) :-
    high_risk_ai_system(System),
    placing_on_market(System),
    provider_subject_to_equivalent_reporting(Provider),
    provider(Provider),
    serious_incident_point_49_c(incident(System)).
serious_incident_reporting_limited(incident(System)) :-
    high_risk_ai_system(System),
    putting_into_service(System),
    provider_subject_to_equivalent_reporting(Provider),
    provider(Provider),
    serious_incident_point_49_c(incident(System)).
serious_incident_reporting_limited_medical(incident(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    covered_by_regulation(System, regulation('32017R0745')),
    serious_incident_point_49_c(incident(System)).
serious_incident_reporting_limited_medical(incident(System)) :-
    high_risk_ai_system(System),
    safety_component(System),
    covered_by_regulation(System, regulation('32017R0746')),
    serious_incident_point_49_c(incident(System)).
must_notify_commission_of_serious_incident(incident(System)) :-
    national_competent_authority(Authority),
    serious_incident(incident(System)).
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_widespread_infringement/2, 'celex:32024R1689/oj#art_73').
provenance(must_report_serious_incident_death/2, 'celex:32024R1689/oj#art_73').
provenance(may_submit_incomplete_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_in_investigation/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_national_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_reporting_limited/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_reporting_limited_medical/1, 'celex:32024R1689/oj#art_73').
provenance(must_notify_commission_of_serious_incident/1, 'celex:32024R1689/oj#art_73').
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
declared(must_report_annually/2, 'market surveillance authority must report annually to Commission and national competition authorities', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/1, 'market surveillance authority must report annually on prohibited practices and measures taken', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for_product_related_system/2, 'authority responsible for market surveillance of high-risk AI systems related to products under Annex I Section A', 'celex:32024R1689/oj#art_74').
declared(may_designate_alternative_authority/2, 'Member State may designate alternative market surveillance authority with coordination', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'sectoral procedures apply instead of Articles 79-83 for Annex I Section A systems', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/1, 'market surveillance authority may exercise Article 14(4)(d) and (j) powers remotely', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for_financial_system/2, 'authority responsible for market surveillance of high-risk AI systems used by financial institutions', 'celex:32024R1689/oj#art_74').
declared(may_designate_alternative_financial_authority/2, 'Member State may designate alternative authority for financial AI systems with coordination', 'celex:32024R1689/oj#art_74').
declared(must_report_to_ecb/2, 'national authority supervising credit institutions must report to ECB without delay', 'celex:32024R1689/oj#art_74').
declared(market_surveillance_authority_for_annex_3_systems/2, 'authority designated for Annex III points 1,6,7,8 systems for law enforcement, border, justice', 'celex:32024R1689/oj#art_74').
declared(edps_acts_as_market_surveillance_authority/1, 'EDPS acts as market surveillance authority for Union institutions', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/1, 'Member States must facilitate coordination between market surveillance authorities and other relevant bodies', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_activities/2, 'market surveillance authority or Commission may propose joint activities for serious risk systems', 'celex:32024R1689/oj#art_74').
declared(must_grant_full_access_to_documentation/2, 'market surveillance authority must be granted full access to documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(must_grant_source_code_access/2, 'market surveillance authority must be granted source code access on reasoned request', 'celex:32024R1689/oj#art_74').
declared(source_code_access_conditions_met/1, 'conditions for source code access are fulfilled', 'celex:32024R1689/oj#art_74').
declared(must_treat_information_confidentially/1, 'information obtained by market surveillance authorities must be treated confidentially', 'celex:32024R1689/oj#art_74').
must_report_annually(Authority, Commission) :-
    market_surveillance_authority(Authority),
    ai_office(Commission).
must_report_prohibited_practices(Authority) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for_product_related_system(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).
may_designate_alternative_authority(MemberState, Authority) :-
    market_surveillance_authority(Authority).
sectoral_procedures_apply(System) :-
    high_risk_ai_system(System).
may_exercise_powers_remotely(Authority) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for_financial_system(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).
may_designate_alternative_financial_authority(MemberState, Authority) :-
    market_surveillance_authority(Authority).
must_report_to_ecb(Authority, ecb) :-
    market_surveillance_authority(Authority).
market_surveillance_authority_for_annex_3_systems(Authority, System) :-
    high_risk_ai_system(System),
    market_surveillance_authority(Authority).
edps_acts_as_market_surveillance_authority(edps).
must_facilitate_coordination(MemberState) :-
    market_surveillance_authority(_).
may_propose_joint_activities(Actor, Commission) :-
    ( market_surveillance_authority(Actor) ; ai_office(Commission) ).
must_grant_full_access_to_documentation(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).
must_grant_source_code_access(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    source_code_access_conditions_met(System).
source_code_access_conditions_met(System) :-
    high_risk_ai_system(System).
must_treat_information_confidentially(Authority) :-
    market_surveillance_authority(Authority).
provenance(must_report_annually/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_product_related_system/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/1, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_financial_system/2, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_financial_authority/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(market_surveillance_authority_for_annex_3_systems/2, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/1, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(must_grant_source_code_access/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_conditions_met/1, 'celex:32024R1689/oj#art_74').
provenance(must_treat_information_confidentially/1, 'celex:32024R1689/oj#art_74').
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
declared(general_purpose_ai_system/1, 'AI system based on a general-purpose AI model', '66').
declared(must_cooperate_with_ai_office/2, 'market surveillance authority must cooperate with AI Office for compliance evaluations', 'celex:32024R1689/oj#art_75').
declared(must_inform_board_and_authorities/2, 'market surveillance authority must inform Board and other market surveillance authorities', 'celex:32024R1689/oj#art_75').
declared(may_request_information_from_ai_office/2, 'market surveillance authority may submit reasoned request to AI Office to enforce access to information', 'celex:32024R1689/oj#art_75').
declared(must_supply_information_within_deadline/2, 'AI Office must supply relevant information to applicant authority within 30 days', 'celex:32024R1689/oj#art_75').
declared(must_safeguard_confidentiality/2, 'market surveillance authority must safeguard confidentiality of obtained information', 'celex:32024R1689/oj#art_75').
declared(same_provider_develops_model_and_system/2, 'provider develops both the general-purpose AI model and the AI system', 'celex:32024R1689/oj#art_75').
declared(ai_office_has_supervisory_powers/2, 'AI Office has powers to monitor and supervise compliance of an AI system', 'celex:32024R1689/oj#art_75').
declared(non_compliant_general_purpose_ai_system/1, 'general-purpose AI system suspected non-compliant with requirements', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'market surveillance authority unable to conclude investigation due to lack of access to information', 'celex:32024R1689/oj#art_75').
ai_office_has_supervisory_powers(AI_Office, System) :-
    ai_office(AI_Office),
    ai_system(System),
    general_purpose_ai_model(Model),
    provider(Provider),
    same_provider_develops_model_and_system(Provider, System),
    based_on(System, Model).
same_provider_develops_model_and_system(Provider, System) :-
    provider(Provider),
    ai_system(System),
    general_purpose_ai_model(Model),
    develops(Provider, Model),
    develops(Provider, System).
must_cooperate_with_ai_office(Authority, System) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    non_compliant_general_purpose_ai_system(System),
    deployer_can_use_for_high_risk_purpose(System).
must_inform_board_and_authorities(Authority, System) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    non_compliant_general_purpose_ai_system(System),
    deployer_can_use_for_high_risk_purpose(System).
deployer_can_use_for_high_risk_purpose(System) :-
    general_purpose_ai_system(System),
    deployer(_Deployer),
    high_risk_ai_system(System).
may_request_information_from_ai_office(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    unable_to_conclude_investigation(Authority, System).
must_supply_information_within_deadline(AI_Office, Request) :-
    ai_office(AI_Office),
    may_request_information_from_ai_office(Authority, System),
    Request = request(Authority, System),
    
    true.
must_safeguard_confidentiality(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Information).
provenance(ai_office_has_supervisory_powers/2, 'celex:32024R1689/oj#art_75').
provenance(same_provider_develops_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(deployer_can_use_for_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_from_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within_deadline/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(must_verify_compliance/2, 'market surveillance authority must verify compliance with Article 60', 'celex:32024R1689/oj#art_76').
declared(may_allow_testing_in_derogation/2, 'market surveillance authority may allow testing in derogation from conditions', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/2, 'market surveillance authority may suspend or terminate testing', 'celex:32024R1689/oj#art_76').
declared(may_require_modification_of_testing/2, 'market surveillance authority may require modification of testing', 'celex:32024R1689/oj#art_76').
declared(must_indicate_grounds_and_challenge/2, 'decision or objection must indicate grounds and how to challenge', 'celex:32024R1689/oj#art_76').
declared(must_communicate_grounds_to_other_authorities/2, 'market surveillance authority must communicate grounds to other Member State authorities', 'celex:32024R1689/oj#art_76').
must_verify_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    
    
    true.
must_verify_compliance(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox),
    
    true.
may_allow_testing_in_derogation(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    supervised_within(Testing, ai_regulatory_sandbox),
    
    true.
may_suspend_or_terminate_testing(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    (   informed_of_serious_incident(Authority, Testing)
    ;   grounds_to_consider_conditions_not_met(Authority, Testing)
    ).
may_require_modification_of_testing(Authority, testing_in_real_world_conditions) :-
    market_surveillance_authority(Authority),
    testing_in_real_world_conditions(Testing),
    (   informed_of_serious_incident(Authority, Testing)
    ;   grounds_to_consider_conditions_not_met(Authority, Testing)
    ).
must_indicate_grounds_and_challenge(Authority, Decision) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, _)
    ;   may_require_modification_of_testing(Authority, _)
    ;   issued_objection_under_art_60_4_b(Authority, _)
    ),
    Decision = decision(Authority, _).
must_communicate_grounds_to_other_authorities(Authority, Decision) :-
    market_surveillance_authority(Authority),
    (   may_suspend_or_terminate_testing(Authority, _)
    ;   may_require_modification_of_testing(Authority, _)
    ),
    Decision = decision(Authority, _),
    tested_in_other_member_states(Decision).
informed_of_serious_incident(Authority, Testing) :-
    serious_incident(Incident),
    
    true.
grounds_to_consider_conditions_not_met(Authority, Testing) :-
    
    true.
issued_objection_under_art_60_4_b(Authority, Testing) :-
    
    true.
tested_in_other_member_states(Decision) :-
    
    true.
provenance(must_verify_compliance/2, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/2, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/2, 'celex:32024R1689/oj#art_76').
provenance(must_indicate_grounds_and_challenge/2, 'celex:32024R1689/oj#art_76').
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
declared(must_identify_fundamental_rights_authorities/1, 'Member State must identify authorities under Article 77(1)', 'celex:32024R1689/oj#art_77').
declared(must_notify_list_of_authorities/2, 'Member State must notify list to Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(must_keep_list_up_to_date/1, 'Member State must keep list of authorities up to date', 'celex:32024R1689/oj#art_77').
declared(must_inform_market_surveillance_authority/2, 'authority must inform market surveillance authority of documentation request', 'celex:32024R1689/oj#art_77').
declared(may_request_documentation/2, 'authority may request documentation created under the Regulation', 'celex:32024R1689/oj#art_77').
declared(may_request_testing/2, 'authority may request market surveillance authority to organise testing', 'celex:32024R1689/oj#art_77').
declared(must_organise_testing/2, 'market surveillance authority must organise testing with involvement of requesting authority', 'celex:32024R1689/oj#art_77').
declared(must_treat_as_confidential/1, 'information obtained must be treated in accordance with Article 78', 'celex:32024R1689/oj#art_77').
fundamental_rights_authority(A) :-
    national_competent_authority(A),
    supervises_fundamental_rights_obligations(A).
supervises_fundamental_rights_obligations(A) :-
    national_competent_authority(A),
    high_risk_ai_system(S),
    relates_to_fundamental_rights(S).
may_request_documentation(A, documentation(S)) :-
    fundamental_rights_authority(A),
    high_risk_ai_system(S),
    documentation_created_under_regulation(S),
    access_necessary_for_mandate(A, S).
must_inform_market_surveillance_authority(A, request(A, documentation(S))) :-
    may_request_documentation(A, documentation(S)),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).
must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).
must_notify_list_of_authorities(MS, list_of_authorities(MS)) :-
    must_identify_fundamental_rights_authorities(MS).
must_keep_list_up_to_date(MS) :-
    must_identify_fundamental_rights_authorities(MS).
may_request_testing(A, reasoned_request(A, S)) :-
    fundamental_rights_authority(A),
    high_risk_ai_system(S),
    documentation_insufficient_for_infringement_determination(A, S),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).
must_organise_testing(MSA, testing(S, A)) :-
    may_request_testing(A, reasoned_request(A, S)),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).
must_treat_as_confidential(information_obtained(A)) :-
    fundamental_rights_authority(A).
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_of_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_as_confidential/1, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'entity must respect confidentiality of information and data obtained in carrying out tasks', 'celex:32024R1689/oj#art_78').
declared(must_request_only_strictly_necessary_data/1, 'authority must request only data strictly necessary for risk assessment and exercise of powers', 'celex:32024R1689/oj#art_78').
declared(must_implement_cybersecurity_measures/1, 'authority must put in place adequate and effective cybersecurity measures', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/1, 'authority must delete collected data when no longer needed for purpose obtained', 'celex:32024R1689/oj#art_78').
declared(confidential_information_exchange_restriction_applies/2, 'restriction on disclosure of confidential information exchanged applies', 'celex:32024R1689/oj#art_78').
declared(must_obtain_prior_consultation_before_disclosure/2, 'entity must obtain prior consultation before disclosing confidential information', 'celex:32024R1689/oj#art_78').
declared(must_retain_technical_documentation_on_premises/1, 'law enforcement, immigration or asylum authority provider must retain technical documentation on premises', 'celex:32024R1689/oj#art_78').
declared(must_ensure_immediate_access_to_documentation/2, 'authority must ensure market surveillance authority can immediately access documentation', 'celex:32024R1689/oj#art_78').
declared(must_have_security_clearance_to_access_documentation/1, 'staff must hold appropriate level of security clearance to access documentation', 'celex:32024R1689/oj#art_78').
declared(may_exchange_confidential_information_with_third_countries/2, 'Commission and Member States may exchange confidential information with third-country regulatory authorities', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Entity, information_and_data) :-
    involved_in_application(Entity),
    (   Entity = commission
    ;   market_surveillance_authority(Entity)
    ;   notified_body(Entity)
    ;   true  
    ).
must_request_only_strictly_necessary_data(Authority) :-
    involved_in_application(Authority).
must_implement_cybersecurity_measures(Authority) :-
    involved_in_application(Authority).
must_delete_data_when_no_longer_needed(Authority) :-
    involved_in_application(Authority).
confidential_information_exchange_restriction_applies(Information, disclosure) :-
    exchanged_on_confidential_basis(Information, national_competent_authorities),
    high_risk_ai_system(System),
    (   annex_3_point_1_a_system(System)
    ;   annex_3_point_2_system(System)  
    ),
    used_by(System, law_enforcement_border_control_immigration_asylum_authority),
    disclosure_jeopardises_public_national_security(disclosure).
must_obtain_prior_consultation_before_disclosure(Entity, disclosure(Information)) :-
    confidential_information_exchange_restriction_applies(Information, disclosure),
    (   Entity = national_competent_authority
    ;   Entity = commission
    ).
must_retain_technical_documentation_on_premises(Authority) :-
    (   law_enforcement_authority(Authority)
    ;   true  
    ),
    provider(Authority),
    high_risk_ai_system(System),
    (   annex_3_point_1_a_system(System)
    ;   annex_3_point_2_system(System)
    ),
    provides(Authority, System).
must_ensure_immediate_access_to_documentation(Authority, market_surveillance_authority) :-
    must_retain_technical_documentation_on_premises(Authority).
must_have_security_clearance_to_access_documentation(Staff) :-
    market_surveillance_authority(MSA),
    staff_of(Staff, MSA).
may_exchange_confidential_information_with_third_countries(Entity, third_country_regulatory_authority) :-
    (   Entity = commission
    ;   Entity = member_state
    ),
    concluded_confidentiality_arrangement(Entity, third_country_regulatory_authority).
declared(exchanged_on_confidential_basis/2, 'information exchanged on confidential basis between entities', 'celex:32024R1689/oj#art_78').
declared(used_by/2, 'system used by authority', 'celex:32024R1689/oj#art_78').
declared(disclosure_jeopardises_public_national_security/1, 'disclosure would jeopardise public and national security interests', 'celex:32024R1689/oj#art_78').
declared(provides/2, 'provider provides system', 'celex:32024R1689/oj#art_78').
declared(staff_of/2, 'staff member of an authority', 'celex:32024R1689/oj#art_78').
declared(concluded_confidentiality_arrangement/2, 'entity concluded bilateral or multilateral confidentiality arrangement with third country', 'celex:32024R1689/oj#art_78').
declared(law_enforcement_border_control_immigration_asylum_authority/1, 'authority for law enforcement, border control, immigration or asylum', 'celex:32024R1689/oj#art_78').
declared(member_state/1, 'Member State of the European Union', 'celex:32024R1689/oj#art_78').
declared(commission/1, 'European Commission', 'celex:32024R1689/oj#art_78').
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/1, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_exchange_restriction_applies/2, 'celex:32024R1689/oj#art_78').
provenance(must_obtain_prior_consultation_before_disclosure/2, 'celex:32024R1689/oj#art_78').
provenance(must_retain_technical_documentation_on_premises/1, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(must_have_security_clearance_to_access_documentation/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').
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
declared(risk_presenting_system/1, 'AI system presenting a risk under Article 79(1)', 'celex:32024R1689/oj#art_79').
declared(must_carry_out_evaluation/2, 'market surveillance authority must carry out evaluation of AI system', 'celex:32024R1689/oj#art_79').
declared(must_inform_and_cooperate/2, 'market surveillance authority must inform and cooperate with relevant national public authorities', 'celex:32024R1689/oj#art_79').
declared(must_require_corrective_action/2, 'market surveillance authority must require operator to take corrective action', 'celex:32024R1689/oj#art_79').
declared(must_inform_notified_body/2, 'market surveillance authority must inform relevant notified body', 'celex:32024R1689/oj#art_79').
declared(must_inform_commission_and_member_states/2, 'market surveillance authority must inform Commission and other Member States', 'celex:32024R1689/oj#art_79').
declared(must_ensure_corrective_action/2, 'operator must ensure corrective action for all AI systems made available on Union market', 'celex:32024R1689/oj#art_79').
declared(must_take_provisional_measures/2, 'market surveillance authority must take provisional measures when operator fails to act', 'celex:32024R1689/oj#art_79').
declared(must_notify_provisional_measures/2, 'market surveillance authority must notify Commission and Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(notification_must_include_details/1, 'notification must include all available details', 'celex:32024R1689/oj#art_79').
declared(must_inform_of_measures_and_objections/2, 'other market surveillance authorities must inform of measures and objections', 'celex:32024R1689/oj#art_79').
declared(provisional_measure_deemed_justified/1, 'provisional measure deemed justified after three months without objection', 'celex:32024R1689/oj#art_79').
declared(must_ensure_restrictive_measures/1, 'market surveillance authorities must ensure appropriate restrictive measures', 'celex:32024R1689/oj#art_79').
declared(non_compliance_not_restricted_to_national_territory/1, 'non-compliance is not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(operator_fails_corrective_action/2, 'operator fails to take adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_79').
declared(no_objection_raised/1, 'no objection raised within three months of notification', 'celex:32024R1689/oj#art_79').
declared(non_compliance_with_art_5/1, 'non-compliance with prohibition of AI practices in Article 5', 'celex:32024R1689/oj#art_79').
risk_presenting_system(S) :-
    ai_system(S),
    ( risk_to_health_or_safety(S)
    ; risk_to_fundamental_rights(S)
    ).
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    sufficient_reason_to_consider_risk(Authority, S).
must_inform_and_cooperate(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    risks_to_fundamental_rights_identified(S).
must_require_corrective_action(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    evaluation_finds_non_compliance(Authority, S).
must_inform_notified_body(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    must_require_corrective_action(Authority, S).
must_inform_commission_and_member_states(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    non_compliance_not_restricted_to_national_territory(S).
must_ensure_corrective_action(Operator, S) :-
    operator(Operator),
    risk_presenting_system(S),
    made_available_on_union_market(Operator, S).
must_take_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    operator_fails_corrective_action(_Operator, S).
must_notify_provisional_measures(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    must_take_provisional_measures(Authority, S).
notification_must_include_details(Notification) :-
    must_notify_provisional_measures(_Authority, _S).
must_inform_of_measures_and_objections(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S),
    \+ initiating_authority(Authority, S).
provisional_measure_deemed_justified(Measure) :-
    no_objection_raised(Measure).
provisional_measure_deemed_justified(Measure) :-
    non_compliance_with_art_5(Measure),
    no_objection_raised_within_days(Measure, 30).
must_ensure_restrictive_measures(Authority) :-
    market_surveillance_authority(Authority).
risk_to_health_or_safety(S) :-
    risk_presenting_system(S).
risk_to_fundamental_rights(S) :-
    risk_presenting_system(S).
risks_to_fundamental_rights_identified(S) :-
    risk_presenting_system(S).
evaluation_finds_non_compliance(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).
non_compliance_not_restricted_to_national_territory(S) :-
    risk_presenting_system(S).
operator_fails_corrective_action(Operator, S) :-
    operator(Operator),
    risk_presenting_system(S).
no_objection_raised(Measure) :-
    provisional_measure_deemed_justified(Measure).
no_objection_raised_within_days(Measure, 30) :-
    non_compliance_with_art_5(Measure).
non_compliance_with_art_5(S) :-
    risk_presenting_system(S).
initiating_authority(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).
sufficient_reason_to_consider_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    risk_presenting_system(S).
provenance(risk_presenting_system/1, 'celex:32024R1689/oj#art_79').
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').
provenance(must_require_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(notification_must_include_details/1, 'celex:32024R1689/oj#art_79').
provenance(must_inform_of_measures_and_objections/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(must_ensure_restrictive_measures/1, 'celex:32024R1689/oj#art_79').
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
declared(must_carry_out_evaluation/2, 'market surveillance authority must evaluate AI system classified as non-high-risk', 'celex:32024R1689/oj#art_80/par_1').
declared(must_require_compliance_and_corrective_action/3, 'authority must require provider to bring system into compliance and take corrective action', 'celex:32024R1689/oj#art_80/par_2').
declared(must_inform_commission_and_member_states_of_evaluation/3, 'authority must inform Commission and Member States of evaluation results and required actions', 'celex:32024R1689/oj#art_80/par_3').
declared(must_ensure_compliance/2, 'provider must ensure all necessary action to bring system into compliance', 'celex:32024R1689/oj#art_80/par_4').
declared(must_ensure_corrective_action/2, 'provider must ensure corrective action for all systems made available on Union market', 'celex:32024R1689/oj#art_80/par_5').
declared(must_apply_article_79_procedures/1, 'Article 79(5)-(9) procedures apply when provider fails to take adequate corrective action', 'celex:32024R1689/oj#art_80/par_6').
declared(misclassified_to_circumvent/1, 'AI system misclassified as non-high-risk to circumvent requirements', 'celex:32024R1689/oj#art_80/par_7').
declared(may_perform_checks/1, 'market surveillance authority may perform appropriate checks', 'celex:32024R1689/oj#art_80/par_8').
must_carry_out_evaluation(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    provider(P),
    classified_as_non_high_risk(P, S),
    sufficient_reason_to_consider_high_risk(Authority, S).
sufficient_reason_to_consider_high_risk(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).
must_require_compliance_and_corrective_action(Authority, Provider, S) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S).
must_inform_commission_and_member_states_of_evaluation(Authority, S, Actions) :-
    market_surveillance_authority(Authority),
    ai_system(S),
    evaluation_finds_high_risk(Authority, S),
    use_not_restricted_to_national_territory(Authority, S),
    must_require_compliance_and_corrective_action(Authority, _, S).
use_not_restricted_to_national_territory(Authority, S) :-
    market_surveillance_authority(Authority),
    ai_system(S).
must_ensure_compliance(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(_, S).
must_ensure_corrective_action(Provider, S) :-
    provider(Provider),
    ai_system(S),
    evaluation_finds_high_risk(_, S),
    made_available_on_union_market(Provider, S).
must_apply_article_79_procedures(S) :-
    ai_system(S),
    provider(Provider),
    evaluation_finds_high_risk(_, S),
    \+ adequate_corrective_action_taken(Provider, S).
adequate_corrective_action_taken(Provider, S) :-
    provider(Provider),
    ai_system(S),
    must_ensure_corrective_action(Provider, S).
misclassified_to_circumvent(S) :-
    ai_system(S),
    provider(Provider),
    classified_as_non_high_risk(Provider, S),
    evaluation_finds_high_risk(_, S),
    circumvention_intent(Provider, S).
circumvention_intent(Provider, S) :-
    provider(Provider),
    ai_system(S).
may_perform_checks(Authority) :-
    market_surveillance_authority(Authority).
classified_as_non_high_risk(Provider, S) :-
    provider(Provider),
    ai_system(S),
    \+ high_risk_ai_system(S).
provenance(must_carry_out_evaluation/2, 'celex:32024R1689/oj#art_80/par_1').
provenance(must_require_compliance_and_corrective_action/3, 'celex:32024R1689/oj#art_80/par_2').
provenance(must_inform_commission_and_member_states_of_evaluation/3, 'celex:32024R1689/oj#art_80/par_3').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_80/par_4').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_80/par_5').
provenance(must_apply_article_79_procedures/1, 'celex:32024R1689/oj#art_80/par_6').
provenance(misclassified_to_circumvent/1, 'celex:32024R1689/oj#art_80/par_7').
provenance(may_perform_checks/1, 'celex:32024R1689/oj#art_80/par_8').
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80/par_1').
provenance(use_not_restricted_to_national_territory/2, 'celex:32024R1689/oj#art_80/par_3').
provenance(adequate_corrective_action_taken/2, 'celex:32024R1689/oj#art_80/par_6').
provenance(circumvention_intent/2, 'celex:32024R1689/oj#art_80/par_7').
provenance(classified_as_non_high_risk/2, 'celex:32024R1689/oj#art_80').
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
declared(must_enter_consultation/2, 'Commission must enter into consultation with market surveillance authority and operator', 'celex:32024R1689/oj#art_81').
declared(must_evaluate_national_measure/1, 'Commission must evaluate the national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_justification/1, 'Commission must decide whether the national measure is justified', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision/2, 'Commission must notify its decision to the market surveillance authority', 'celex:32024R1689/oj#art_81').
declared(must_inform_all_authorities/1, 'Commission must inform all other market surveillance authorities of its decision', 'celex:32024R1689/oj#art_81').
declared(must_ensure_restrictive_measures/1, 'Member States must ensure appropriate restrictive measures are taken', 'celex:32024R1689/oj#art_81').
declared(must_inform_commission_of_measures/1, 'Member State must inform the Commission of measures taken', 'celex:32024R1689/oj#art_81').
declared(must_withdraw_measure/1, 'Member State must withdraw the unjustified measure', 'celex:32024R1689/oj#art_81').
declared(must_inform_commission_of_withdrawal/1, 'Member State must inform the Commission of withdrawal', 'celex:32024R1689/oj#art_81').
declared(must_apply_article_11_procedure/1, 'Commission must apply the procedure in Article 11 of Regulation 1025/2012', 'celex:32024R1689/oj#art_81').
declared(objection_raised/1, 'objection raised by a market surveillance authority to a measure', 'celex:32024R1689/oj#art_81').
declared(commission_considers_measure_contrary/1, 'Commission considers the measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(national_measure_justified/1, 'national measure is considered justified', 'celex:32024R1689/oj#art_81').
declared(national_measure_unjustified/1, 'national measure is considered unjustified', 'celex:32024R1689/oj#art_81').
declared(non_compliance_attributed_to_shortcomings/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
declared(within_three_months_of_notification/1, 'within three months of notification under Article 79(5)', 'celex:32024R1689/oj#art_81').
declared(within_30_days_for_art_5/1, 'within 30 days for non-compliance with Article 5 prohibitions', 'celex:32024R1689/oj#art_81').
declared(within_six_months_of_notification/1, 'within six months of notification under Article 79(5)', 'celex:32024R1689/oj#art_81').
declared(within_60_days_for_art_5/1, 'within 60 days for non-compliance with Article 5 prohibitions', 'celex:32024R1689/oj#art_81').
must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    objection_raised(Authority),
    within_three_months_of_notification(Authority).
must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    objection_raised(Authority),
    within_30_days_for_art_5(Authority).
must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    commission_considers_measure_contrary(Authority).
must_evaluate_national_measure(Commission) :-
    must_enter_consultation(Commission, consultation(_, _)).
must_decide_justification(Commission) :-
    must_evaluate_national_measure(Commission),
    within_six_months_of_notification(Commission).
must_decide_justification(Commission) :-
    must_evaluate_national_measure(Commission),
    within_60_days_for_art_5(Commission).
must_notify_decision(Commission, Authority) :-
    must_decide_justification(Commission),
    market_surveillance_authority(Authority).
must_inform_all_authorities(Commission) :-
    must_notify_decision(Commission, _).
must_ensure_restrictive_measures(MemberState) :-
    national_measure_justified(Measure),
    must_inform_commission_of_measures(MemberState).
must_inform_commission_of_measures(MemberState) :-
    must_ensure_restrictive_measures(MemberState).
must_withdraw_measure(MemberState) :-
    national_measure_unjustified(Measure),
    must_inform_commission_of_withdrawal(MemberState).
must_inform_commission_of_withdrawal(MemberState) :-
    must_withdraw_measure(MemberState).
must_apply_article_11_procedure(Commission) :-
    national_measure_justified(Measure),
    non_compliance_attributed_to_shortcomings(Measure).
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/1, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/1, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/1, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_of_measures/1, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_of_withdrawal/1, 'celex:32024R1689/oj#art_81').
provenance(must_apply_article_11_procedure/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_attributed_to_shortcomings/1, 'celex:32024R1689/oj#art_81').
provenance(within_three_months_of_notification/1, 'celex:32024R1689/oj#art_81').
provenance(within_30_days_for_art_5/1, 'celex:32024R1689/oj#art_81').
provenance(within_six_months_of_notification/1, 'celex:32024R1689/oj#art_81').
provenance(within_60_days_for_art_5/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(must_require_corrective_measures/3, 'market surveillance authority must require operator to take measures', 'celex:32024R1689/oj#art_82').
declared(must_ensure_corrective_action/3, 'provider or operator must ensure corrective action on all systems', 'celex:32024R1689/oj#art_82').
declared(must_inform_commission_and_member_states_of_finding/1, 'Member State must inform Commission and other Member States of finding', 'celex:32024R1689/oj#art_82').
declared(must_consult_and_evaluate/2, 'Commission must consult and evaluate national measures', 'celex:32024R1689/oj#art_82').
declared(must_communicate_decision/2, 'Commission must communicate decision to Member States and operators', 'celex:32024R1689/oj#art_82').
must_require_corrective_measures(Authority, Operator, System) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    high_risk_ai_system(System),
    evaluation_finds_high_risk(Authority, System),
    risk_presenting_system(System),
    \+ risk_eliminated(System, Operator).
risk_eliminated(System, Operator) :-
    must_ensure_corrective_action(Operator, System, _Timeline).
must_ensure_corrective_action(Operator, System, Timeline) :-
    operator(Operator),
    high_risk_ai_system(System),
    made_available_on_union_market(Operator, System),
    risk_presenting_system(System),
    prescribed_timeline(Timeline).
must_inform_commission_and_member_states_of_finding(Finding) :-
    finding_under_paragraph_1(Finding).
finding_under_paragraph_1(Finding) :-
    must_require_corrective_measures(_, _, _).
must_consult_and_evaluate(Commission, Measures) :-
    ai_office(Commission),
    national_measures(Measures).
must_communicate_decision(Commission, Decision) :-
    ai_office(Commission),
    decision_on_measures(Decision).
provenance(must_require_corrective_measures/3, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/3, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission_and_member_states_of_finding/1, 'celex:32024R1689/oj#art_82').
provenance(must_consult_and_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(must_end_noncompliance/3, 'market surveillance authority shall require provider to end non-compliance within prescribed period', 'celex:32024R1689/oj#art_83').
declared(formal_noncompliance_finding/1, 'finding of formal non-compliance under Article 83(1)', 'celex:32024R1689/oj#art_83').
declared(noncompliance_persists/1, 'formal non-compliance persists after Article 83(1) requirement', 'celex:32024R1689/oj#art_83').
declared(must_restrict_or_prohibit_or_recall/2, 'market surveillance authority shall restrict, prohibit, recall or withdraw high-risk AI system', 'celex:32024R1689/oj#art_83').
formal_noncompliance_finding(ce_marking_affixed_in_violation) :-
    ce_marking(_).
formal_noncompliance_finding(ce_marking_not_affixed).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up).
formal_noncompliance_finding(eu_declaration_of_conformity_not_drawn_up_correctly).
formal_noncompliance_finding(registration_not_carried_out).
formal_noncompliance_finding(no_authorised_representative_appointed).
formal_noncompliance_finding(technical_documentation_not_available).
must_end_noncompliance(Authority, Provider, Finding) :-
    market_surveillance_authority(Authority),
    provider(Provider),
    formal_noncompliance_finding(Finding).
noncompliance_persists(Finding) :-
    formal_noncompliance_finding(Finding).
must_restrict_or_prohibit_or_recall(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    noncompliance_persists(_).
provenance(must_end_noncompliance/3, 'celex:32024R1689/oj#art_83').
provenance(formal_noncompliance_finding/1, 'celex:32024R1689/oj#art_83').
provenance(noncompliance_persists/1, 'celex:32024R1689/oj#art_83').
provenance(must_restrict_or_prohibit_or_recall/2, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(must_designate_union_ai_testing_support_structure/2, 'Commission must designate Union AI testing support structures', 'celex:32024R1689/oj#art_84').
declared(must_provide_independent_advice/2, 'Union AI testing support structure must provide independent technical or scientific advice', 'celex:32024R1689/oj#art_84').
must_designate_union_ai_testing_support_structure(Commission, Structure) :-
    ai_office(Commission),
    union_ai_testing_support_structure(Structure).
must_provide_independent_advice(Structure, advice(technical_or_scientific, Request)) :-
    union_ai_testing_support_structure(Structure),
    (   request_from_board(Request)
    ;   request_from_commission(Request)
    ;   request_from_market_surveillance_authority(Request)
    ).
provenance(must_designate_union_ai_testing_support_structure/2, 'celex:32024R1689/oj#art_84').
provenance(must_provide_independent_advice/2, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(may_submit_complaint/2, 'natural or legal person may submit complaint to market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(complaint_grounds/1, 'grounds to consider infringement of the regulation', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_for_market_surveillance/1, 'complaint taken into account and handled for market surveillance', 'celex:32024R1689/oj#art_85').
may_submit_complaint(Person, Authority) :-
    (   natural_person(Person)
    ;   legal_person(Person)
    ),
    complaint_grounds(Person),
    market_surveillance_authority(Authority).
complaint_grounds(Person) :-
    has_grounds_to_consider_infringement(Person, 'celex:32024R1689/oj').
complaint_handled_for_market_surveillance(Complaint) :-
    complaint_taken_into_account(Complaint),
    complaint_handled_according_to_procedures(Complaint).
declared(natural_person/1, 'natural person', 'celex:32024R1689/oj#art_85').
declared(legal_person/1, 'legal person', 'celex:32024R1689/oj#art_85').
declared(has_grounds_to_consider_infringement/2, 'person has grounds to consider infringement of regulation', 'celex:32024R1689/oj#art_85').
declared(complaint_taken_into_account/1, 'complaint taken into account for market surveillance', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_according_to_procedures/1, 'complaint handled in line with dedicated procedures', 'celex:32024R1689/oj#art_85').
provenance(may_submit_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/1, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_for_market_surveillance/1, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(right_to_explanation_applies/1, 'affected person has right to explanation of individual decision-making', 'celex:32024R1689/oj#art_86').
declared(exception_from_explanation_applies/1, 'exception or restriction from explanation obligation applies', 'celex:32024R1689/oj#art_86/par_2').
declared(explanation_right_otherwise_provided/1, 'right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86/par_3').
right_to_explanation_applies(Person) :-
    affected_person(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    produces_legal_effects_or_similarly_significantly_affects(Decision, Person),
    person_considers_adverse_impact(Decision, Person),
    \+ exception_from_explanation_applies(Person),
    \+ explanation_right_otherwise_provided(Person).
must_obtain_explanation(Person, explanation(role_of_system(System), main_elements(Decision))) :-
    right_to_explanation_applies(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System).
exception_from_explanation_applies(Person) :-
    affected_person(Person),
    decision_taken_by_deployer(Decision, Person),
    decision_based_on_output(Decision, System),
    use_of_system_excepted_or_restricted(System).
explanation_right_otherwise_provided(Person) :-
    affected_person(Person),
    right_to_explanation_provided_under_union_law(Person).
provenance(right_to_explanation_applies/1, 'celex:32024R1689/oj#art_86').
provenance(must_obtain_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(exception_from_explanation_applies/1, 'celex:32024R1689/oj#art_86/par_2').
provenance(explanation_right_otherwise_provided/1, 'celex:32024R1689/oj#art_86/par_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(must_apply_directive/2, 'directive applies to reporting and protection', 'celex:32024R1689/oj#art_87').
must_apply_directive(directive('celex:32019L1937/oj'), reporting_of_infringements(regulation('celex:32024R1689/oj'))).
must_apply_directive(directive('celex:32019L1937/oj'), protection_of_reporting_persons(regulation('celex:32024R1689/oj'))).
provenance(must_apply_directive/2, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(must_supervise_and_enforce/2, 'entity must supervise and enforce obligations', 'celex:32024R1689/oj#art_88').
declared(may_request_exercise_of_powers/2, 'entity may request Commission to exercise powers', 'celex:32024R1689/oj#art_88').
must_supervise_and_enforce(Commission, obligations_of_providers_of_general_purpose_ai_models) :-
    taking_into_account(procedural_guarantees(art_94)).
must_entrust_implementation(Commission, ai_office, tasks(supervision_and_enforcement)) :-
    must_supervise_and_enforce(Commission, obligations_of_providers_of_general_purpose_ai_models).
may_request_exercise_of_powers(market_surveillance_authority, Commission) :-
    necessary_and_proportionate_to_assist(tasks_under_regulation).
provenance(must_supervise_and_enforce/2, 'celex:32024R1689/oj#art_88').
provenance(must_entrust_implementation/3, 'celex:32024R1689/oj#art_88').
provenance(may_request_exercise_of_powers/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(must_monitor_compliance/2, 'AI Office must monitor compliance of general-purpose AI model providers', 'celex:32024R1689/oj#art_89').
declared(may_take_necessary_actions/2, 'AI Office may take necessary actions to monitor compliance', 'celex:32024R1689/oj#art_89').
declared(must_lodge_complaint/2, 'downstream provider must lodge a complaint alleging infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_duly_reasoned/1, 'complaint is duly reasoned', 'celex:32024R1689/oj#art_89').
declared(complaint_contains_contact_point/1, 'complaint indicates point of contact of the provider', 'celex:32024R1689/oj#art_89').
declared(complaint_contains_facts/1, 'complaint describes relevant facts and provisions', 'celex:32024R1689/oj#art_89').
declared(complaint_contains_reason/1, 'complaint indicates reason for alleged infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_may_contain_other_information/1, 'complaint may contain other relevant information', 'celex:32024R1689/oj#art_89').
must_monitor_compliance(ai_office, general_purpose_ai_model) :-
    ai_office(ai_office),
    general_purpose_ai_model(general_purpose_ai_model).
may_take_necessary_actions(ai_office, monitor(compliance(general_purpose_ai_model))) :-
    ai_office(ai_office),
    general_purpose_ai_model(general_purpose_ai_model).
must_lodge_complaint(DownstreamProvider, complaint(infringement(regulation))) :-
    downstream_provider(DownstreamProvider),
    complaint_duly_reasoned(complaint(infringement(regulation))).
complaint_duly_reasoned(Complaint) :-
    complaint_contains_contact_point(Complaint),
    complaint_contains_facts(Complaint),
    complaint_contains_reason(Complaint).
complaint_contains_contact_point(Complaint) :-
    Complaint = complaint(_),
    
    true.
complaint_contains_facts(Complaint) :-
    Complaint = complaint(_),
    
    true.
complaint_contains_reason(Complaint) :-
    Complaint = complaint(_),
    
    true.
complaint_may_contain_other_information(Complaint) :-
    Complaint = complaint(_),
    
    true.
provenance(must_monitor_compliance/2, 'celex:32024R1689/oj#art_89').
provenance(may_take_necessary_actions/2, 'celex:32024R1689/oj#art_89').
provenance(must_lodge_complaint/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_contact_point/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_contains_reason/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_may_contain_other_information/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel of independent experts', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/1, 'duly reasoned alert from the scientific panel', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_of_article_51/1, 'meets the conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(board/1, 'the AI Board', 'celex:32024R1689/oj#art_90').
may_provide_qualified_alert(Panel, Model) :-
    scientific_panel(Panel),
    general_purpose_ai_model(Model),
    reason_to_suspect(Panel, Model).
reason_to_suspect(Panel, Model) :-
    concrete_identifiable_risk_at_union_level(Model).
reason_to_suspect(Panel, Model) :-
    meets_conditions_of_article_51(Model).
qualified_alert(Alert) :-
    duly_reasoned(Alert),
    indicates_point_of_contact(Alert),
    indicates_description_of_facts_and_reasons(Alert),
    indicates_other_relevant_information(Alert).
duly_reasoned(Alert) :-
    qualified_alert(Alert).
indicates_point_of_contact(Alert) :-
    qualified_alert(Alert),
    point_of_contact(Alert, _Provider).
indicates_description_of_facts_and_reasons(Alert) :-
    qualified_alert(Alert),
    description_of_facts_and_reasons(Alert, _Facts, _Reasons).
indicates_other_relevant_information(Alert) :-
    qualified_alert(Alert),
    other_relevant_information(Alert, _Info).
must_inform_board_of_measure(Commission, Measure) :-
    ai_office(Commission),
    board(Board),
    measure_according_to_articles(Measure).
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_91').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_92').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_93').
measure_according_to_articles(Measure) :-
    measure_under(Measure, 'celex:32024R1689/oj#art_94').
provenance(may_provide_qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/1, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_description_of_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board_of_measure/2, 'celex:32024R1689/oj#art_90').
provenance(measure_according_to_articles/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(must_supply_requested_information/2, 'entity must supply information requested by Commission', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_91').
declared(may_request_information_from_provider/2, 'Commission may request information from provider', 'celex:32024R1689/oj#art_91').
declared(may_request_information_for_scientific_panel/2, 'Commission may request information for scientific panel', 'celex:32024R1689/oj#art_91').
declared(request_for_information/1, 'request for information under Article 91', 'celex:32024R1689/oj#art_91').
declared(request_states_legal_basis/1, 'request states legal basis and purpose', 'celex:32024R1689/oj#art_91').
declared(request_specifies_information_required/1, 'request specifies what information is required', 'celex:32024R1689/oj#art_91').
declared(request_sets_period/1, 'request sets period for providing information', 'celex:32024R1689/oj#art_91').
declared(request_indicates_fines/1, 'request indicates fines for incorrect or misleading information', 'celex:32024R1689/oj#art_91').
declared(authorised_to_represent/2, 'person authorised to represent legal person', 'celex:32024R1689/oj#art_91').
declared(lawyer_duly_authorised/1, 'lawyer duly authorised to act', 'celex:32024R1689/oj#art_91').
may_request_information_from_provider(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request),
    (   documentation_drawn_up_under(Request, 'celex:32024R1689/oj#art_53')
    ;   documentation_drawn_up_under(Request, 'celex:32024R1689/oj#art_55')
    ;   additional_information_necessary_for_compliance_assessment(Request, 'celex:32024R1689/oj')
    ).
may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Provider).
may_request_information_for_scientific_panel(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_from_scientific_panel(Request),
    access_necessary_and_proportionate(Request, 'celex:32024R1689/oj#art_68/par_2').
request_states_legal_basis(Request) :-
    request_for_information(Request).
request_specifies_information_required(Request) :-
    request_for_information(Request).
request_sets_period(Request) :-
    request_for_information(Request).
request_indicates_fines(Request) :-
    request_for_information(Request),
    fines_provided_for_in('celex:32024R1689/oj#art_101').
must_supply_requested_information(Provider, Request) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request).
must_supply_requested_information(Representative, Request) :-
    authorised_representative(Representative),
    request_for_information(Request).
must_supply_requested_information(Person, Request) :-
    authorised_to_represent(Person, Provider),
    provider(Provider),
    general_purpose_ai_model(Provider),
    request_for_information(Request).
must_supply_requested_information(Lawyer, Request) :-
    lawyer_duly_authorised(Lawyer),
    request_for_information(Request).
provenance(may_request_information_from_provider/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information_for_scientific_panel/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(may_appoint_independent_experts/1, 'Commission may appoint independent experts for evaluations', 'celex:32024R1689/oj#art_92').
declared(may_request_access/2, 'Commission may request access to general-purpose AI model', 'celex:32024R1689/oj#art_92').
declared(must_supply_information/2, 'provider must supply information requested', 'celex:32024R1689/oj#art_92').
declared(must_adopt_implementing_acts/1, 'Commission must adopt implementing acts for evaluation arrangements', 'celex:32024R1689/oj#art_92').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(AI_Office, Model) :-
    ai_office(AI_Office),
    general_purpose_ai_model(Model),
    evaluation_purpose(Model, Purpose),
    Purpose = assess_compliance ; Purpose = investigate_systemic_risks.
evaluation_purpose(Model, assess_compliance) :-
    general_purpose_ai_model(Model),
    provider(Provider),
    \+ information_sufficient(Provider, Model).
evaluation_purpose(Model, investigate_systemic_risks) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    qualified_alert_from_scientific_panel(Model).
may_appoint_independent_experts(Commission) :-
    ai_office(Commission),
    independent_experts(Experts),
    experts_designated_by_member_states(Experts).
may_request_access(Commission, Model) :-
    ai_office(Commission),
    general_purpose_ai_model(Model),
    may_conduct_evaluation(Commission, Model),
    access_request_legal_basis_stated(Model),
    access_request_purpose_stated(Model),
    access_request_period_set(Model),
    access_request_fines_stated(Model).
must_supply_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    may_request_access(_, Model).
must_supply_information(Representative, Model) :-
    authorised_representative(Representative),
    general_purpose_ai_model(Model),
    may_request_access(_, Model).
must_adopt_implementing_acts(Commission) :-
    ai_office(Commission),
    implementing_acts(Acts),
    examination_procedure_applies(Acts).
may_initiate_structured_dialogue(AI_Office, Provider) :-
    ai_office(AI_Office),
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_request_access(_, Model).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(may_appoint_independent_experts/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_92').
provenance(must_adopt_implementing_acts/1, 'celex:32024R1689/oj#art_92').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(must_comply_with_obligations/2, 'provider must comply with obligations', 'celex:32024R1689/oj#art_93').
declared(must_implement_mitigation_measures/2, 'provider must implement mitigation measures', 'celex:32024R1689/oj#art_93').
declared(must_restrict_withdraw_or_recall/2, 'provider must restrict, withdraw or recall model', 'celex:32024R1689/oj#art_93').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue', 'celex:32024R1689/oj#art_93').
declared(may_make_commitments_binding/2, 'Commission may make commitments binding', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_concern/1, 'serious and substantiated concern of systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(offers_mitigation_commitments/2, 'provider offers commitments to implement mitigation measures', 'celex:32024R1689/oj#art_93').
must_comply_with_obligations(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
must_implement_mitigation_measures(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    systemic_risk_concern(Provider).
must_restrict_withdraw_or_recall(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
may_make_commitments_binding(Commission, Provider) :-
    provider(Provider),
    systemic_risk_classification_applies(Provider),
    offers_mitigation_commitments(Provider, systemic_risk),
    systemic_risk_concern(Provider).
systemic_risk_concern(Provider) :-
    provider(Provider),
    general_purpose_ai_model(Provider),
    systemic_risk_classification_applies(Provider).
offers_mitigation_commitments(Provider, systemic_risk) :-
    provider(Provider),
    general_purpose_ai_model(Provider).
provenance(must_comply_with_obligations/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_or_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
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
provides_model(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).
provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
provenance(provides_model/2, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_encourage_facilitate_codes_of_conduct/2, 'entity must encourage and facilitate drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_of_requirements/1, 'voluntary application of some or all requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_95').
declared(voluntary_application_of_specific_requirements/1, 'voluntary application of specific requirements to all AI systems', 'celex:32024R1689/oj#art_95').
declared(code_of_conduct_covers/2, 'code of conduct covers one or more AI systems', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account_sme_interests/2, 'entity must take into account specific interests and needs of SMEs', 'celex:32024R1689/oj#art_95').
must_encourage_facilitate_codes_of_conduct(ai_office, voluntary_application_of_requirements) :-
    ai_office(_).
must_encourage_facilitate_codes_of_conduct(MemberState, voluntary_application_of_requirements) :-
    member_state(MemberState).
must_encourage_facilitate_codes_of_conduct(ai_office, voluntary_application_of_specific_requirements) :-
    ai_office(_).
must_encourage_facilitate_codes_of_conduct(MemberState, voluntary_application_of_specific_requirements) :-
    member_state(MemberState).
voluntary_application_of_requirements(S) :-
    ai_system(S),
    \+ high_risk_ai_system(S).
voluntary_application_of_specific_requirements(S) :-
    ai_system(S).
code_of_conduct_covers(Code, S) :-
    ai_system(S).
must_take_into_account_sme_interests(ai_office, sme_interests) :-
    ai_office(_).
must_take_into_account_sme_interests(MemberState, sme_interests) :-
    member_state(MemberState).
provenance(must_encourage_facilitate_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(voluntary_application_of_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(code_of_conduct_covers/2, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission must develop guidelines on practical implementation', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/1, 'Commission must update previously adopted guidelines', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_requirements_and_obligations/1, 'guidelines cover application of requirements and obligations in Articles 8-15 and 25', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_prohibited_practices/1, 'guidelines cover prohibited practices in Article 5', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_substantial_modification/1, 'guidelines cover practical implementation of substantial modification provisions', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_transparency_obligations/1, 'guidelines cover practical implementation of transparency obligations in Article 50', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_relationship_with_union_law/1, 'guidelines cover relationship with Union harmonisation legislation and other relevant Union law', 'celex:32024R1689/oj#art_96').
declared(guidelines_cover_definition_of_ai_system/1, 'guidelines cover application of the definition of an AI system in Article 3(1)', 'celex:32024R1689/oj#art_96').
declared(guidelines_pay_attention_to_smes/1, 'guidelines pay particular attention to needs of SMEs, start-ups, local public authorities and most affected sectors', 'celex:32024R1689/oj#art_96').
declared(guidelines_take_account_of_state_of_art/1, 'guidelines take due account of generally acknowledged state of the art on AI, harmonised standards and common specifications', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(Commission, guidelines(G)) :-
    guidelines_cover_requirements_and_obligations(G),
    guidelines_cover_prohibited_practices(G),
    guidelines_cover_substantial_modification(G),
    guidelines_cover_transparency_obligations(G),
    guidelines_cover_relationship_with_union_law(G),
    guidelines_cover_definition_of_ai_system(G),
    guidelines_pay_attention_to_smes(G),
    guidelines_take_account_of_state_of_art(G).
must_update_guidelines(Commission) :-
    (   request_from_member_states
    ;   request_from_ai_office
    ;   own_initiative
    ),
    deemed_necessary(update).
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_requirements_and_obligations/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_prohibited_practices/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_substantial_modification/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_transparency_obligations/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_relationship_with_union_law/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_cover_definition_of_ai_system/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_pay_attention_to_smes/1, 'celex:32024R1689/oj#art_96').
provenance(guidelines_take_account_of_state_of_art/1, 'celex:32024R1689/oj#art_96').
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

% ==== celex:32024R1689/oj#art_97 ====
declared(delegation_of_power_conferred/1, 'power to adopt delegated acts is conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power_period/2, 'delegation of power conferred for a period', 'celex:32024R1689/oj#art_97').
declared(delegation_of_power_revocable/1, 'delegation of power may be revoked', 'celex:32024R1689/oj#art_97').
declared(must_consult_experts/2, 'Commission must consult experts before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(must_notify_delegated_act/2, 'Commission must notify delegated act to Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(delegated_act_enters_into_force/1, 'delegated act enters into force if no objection', 'celex:32024R1689/oj#art_97').
declared(objection_period/2, 'period for objection to delegated act', 'celex:32024R1689/oj#art_97').
declared(must_draw_up_report/2, 'Commission must draw up report on delegation of power', 'celex:32024R1689/oj#art_97').
declared(tacit_extension_applies/1, 'delegation of power tacitly extended', 'celex:32024R1689/oj#art_97').
declared(extension_opposed/2, 'extension of delegation opposed by institution', 'celex:32024R1689/oj#art_97').
delegation_of_power_conferred(Commission) :-
    ai_office(Commission).
delegation_of_power_period(Commission, period(years(5), from(date(2024,8,1)))) :-
    delegation_of_power_conferred(Commission).
must_draw_up_report(Commission, report(delegation_of_power, deadline(months(9), before_end_of(period(years(5)))))) :-
    delegation_of_power_period(Commission, period(years(5), _)).
tacit_extension_applies(period(years(5))) :-
    delegation_of_power_period(_, period(years(5), _)),
    \+ extension_opposed(_, period(years(5))).
extension_opposed(Institution, period(years(5))) :-
    (   Institution = european_parliament
    ;   Institution = council
    ),
    opposes_extension(Institution, period(years(5)), deadline(months(3), before_end_of(period(years(5))))).
delegation_of_power_revocable(Commission) :-
    delegation_of_power_conferred(Commission).
must_consult_experts(Commission, experts_designated_by_member_states) :-
    delegation_of_power_conferred(Commission).
must_notify_delegated_act(Commission, notification(european_parliament, council)) :-
    delegation_of_power_conferred(Commission).
delegated_act_enters_into_force(Act) :-
    must_notify_delegated_act(_, notification(Parliament, Council)),
    objection_period(Act, period(months(3))),
    \+ objection_expressed(Parliament, Act, period(months(3))),
    \+ objection_expressed(Council, Act, period(months(3))).
delegated_act_enters_into_force(Act) :-
    must_notify_delegated_act(_, notification(Parliament, Council)),
    objection_period(Act, period(months(3))),
    before_expiry(period(months(3))),
    informed_no_objection(Parliament, Act),
    informed_no_objection(Council, Act).
objection_period(Act, period(months(3))) :-
    delegated_act_enters_into_force(Act).
objection_period(Act, period(months(6))) :-
    objection_period(Act, period(months(3))),
    extension_initiated(_, period(months(3))).
provenance(delegation_of_power_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power_period/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension_applies/1, 'celex:32024R1689/oj#art_97').
provenance(extension_opposed/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_of_power_revocable/1, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(objection_period/2, 'celex:32024R1689/oj#art_97').
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
declared(must_be_assisted_by_committee/2, 'Commission must be assisted by a committee', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation/1, 'committee within the meaning of Regulation (EU) No 182/2011', 'celex:32024R1689/oj#art_98').
declared(reference_to_committee_procedure/1, 'reference is made to this committee procedure', 'celex:32024R1689/oj#art_98').
declared(regulation_182_2011_art_5_applies/1, 'Article 5 of Regulation (EU) No 182/2011 applies', 'celex:32024R1689/oj#art_98').
must_be_assisted_by_committee(Commission, Committee) :-
    committee_within_meaning_of_regulation(Committee).
committee_within_meaning_of_regulation(Committee) :-
    true.
regulation_182_2011_art_5_applies(Procedure) :-
    reference_to_committee_procedure(Procedure).
provenance(must_be_assisted_by_committee/2, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation/1, 'celex:32024R1689/oj#art_98').
provenance(regulation_182_2011_art_5_applies/1, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(must_lay_down_penalty_rules/2, 'Member State must lay down rules on penalties and enforcement measures', 'celex:32024R1689/oj#art_99/par_1').
declared(must_notify_penalty_rules/2, 'Member State must notify Commission of penalty rules', 'celex:32024R1689/oj#art_99/par_2').
declared(must_notify_amendment/2, 'Member State must notify Commission of any amendment to penalty rules', 'celex:32024R1689/oj#art_99/par_2').
declared(prohibited_practice_infringement/1, 'infringement of prohibited AI practices under Article 5', 'celex:32024R1689/oj#art_99/par_3').
declared(operator_notified_body_infringement/1, 'infringement of operator or notified body obligations under Article 99(4)', 'celex:32024R1689/oj#art_99/par_4').
declared(incorrect_information_supply/1, 'supply of incorrect, incomplete or misleading information to notified bodies or national competent authorities', 'celex:32024R1689/oj#art_99/par_5').
declared(sme_startup/1, 'SME including start-up', 'celex:32024R1689/oj#art_99/par_6').
declared(must_report_annual_fines/2, 'Member State must report annually to Commission on administrative fines issued', 'celex:32024R1689/oj#art_99/par_11').
must_lay_down_penalty_rules(MemberState, infringement_of_regulation) :-
    member_state(MemberState),
    operator(_).
must_notify_penalty_rules(MemberState, penalty_rules) :-
    member_state(MemberState),
    must_lay_down_penalty_rules(MemberState, _).
must_notify_amendment(MemberState, amendment(penalty_rules)) :-
    member_state(MemberState),
    must_lay_down_penalty_rules(MemberState, _).
fine_cap(prohibited_practice_infringement, cap(eur(35000000), percent_of_turnover(7))) :-
    prohibited_practice_infringement(_).
prohibited_practice_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_5').
fine_cap(operator_notified_body_infringement, cap(eur(15000000), percent_of_turnover(3))) :-
    operator_notified_body_infringement(_).
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_16').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_22').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_23').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_24').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_26').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_31').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_1').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_3').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_33/par_4').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_34').
operator_notified_body_infringement(I) :-
    infringement(I),
    concerns_provision(I, 'celex:32024R1689/oj#art_50').
fine_cap(incorrect_information_supply, cap(eur(7500000), percent_of_turnover(1))) :-
    incorrect_information_supply(_).
incorrect_information_supply(S) :-
    supply_of_information(S),
    ( incorrect(S) ; incomplete(S) ; misleading(S) ),
    recipient(S, R),
    ( notified_body(R) ; national_competent_authority(R) ).
fine_cap(sme_startup_infringement, cap(Amount, Percent)) :-
    sme_startup(Offender),
    infringement(Offender, I),
    ( fine_cap(prohibited_practice_infringement, cap(Amount1, Percent1)),
      I = prohibited_practice_infringement(_)
    ; fine_cap(operator_notified_body_infringement, cap(Amount2, Percent2)),
      I = operator_notified_body_infringement(_)
    ; fine_cap(incorrect_information_supply, cap(Amount3, Percent3)),
      I = incorrect_information_supply(_)
    ),
    lower_of(Amount, Percent, Amount1, Percent1, Amount2, Percent2, Amount3, Percent3).
must_report_annual_fines(MemberState, annual_report(fines)) :-
    member_state(MemberState).
provenance(must_lay_down_penalty_rules/2, 'celex:32024R1689/oj#art_99/par_1').
provenance(must_notify_penalty_rules/2, 'celex:32024R1689/oj#art_99/par_2').
provenance(must_notify_amendment/2, 'celex:32024R1689/oj#art_99/par_2').
provenance(fine_cap/2, 'celex:32024R1689/oj#art_99').
provenance(prohibited_practice_infringement/1, 'celex:32024R1689/oj#art_99/par_3').
provenance(operator_notified_body_infringement/1, 'celex:32024R1689/oj#art_99/par_4').
provenance(incorrect_information_supply/1, 'celex:32024R1689/oj#art_99/par_5').
provenance(sme_startup/1, 'celex:32024R1689/oj#art_99/par_6').
provenance(must_report_annual_fines/2, 'celex:32024R1689/oj#art_99/par_11').
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
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency falling within scope of the Regulation', 'celex:32024R1689/oj#art_100').
declared(european_data_protection_supervisor/1, 'European Data Protection Supervisor', 'celex:32024R1689/oj#art_100').
declared(may_impose_fine/2, 'EDPS may impose administrative fine on Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(fine_imposed/2, 'administrative fine imposed on entity', 'celex:32024R1689/oj#art_100').
declared(fine_cap_art_5/2, 'maximum fine for non-compliance with Article 5 prohibitions', 'celex:32024R1689/oj#art_100').
declared(fine_cap_other/2, 'maximum fine for non-compliance with requirements other than Article 5', 'celex:32024R1689/oj#art_100').
declared(must_give_opportunity_to_be_heard/2, 'EDPS must give entity opportunity to be heard before decision', 'celex:32024R1689/oj#art_100').
declared(must_base_decision_on_commentable_elements/1, 'EDPS must base decision only on elements parties could comment on', 'celex:32024R1689/oj#art_100').
declared(must_associate_complainants/1, 'complainants must be closely associated with proceedings', 'celex:32024R1689/oj#art_100').
declared(must_respect_rights_of_defence/1, 'rights of defence of parties must be fully respected', 'celex:32024R1689/oj#art_100').
declared(must_entitle_access_to_file/2, 'parties entitled to access EDPS file subject to legitimate interests', 'celex:32024R1689/oj#art_100').
declared(fines_contribute_to_union_budget/1, 'funds collected from fines contribute to general budget of the Union', 'celex:32024R1689/oj#art_100').
declared(fines_not_affect_effective_operation/1, 'fines shall not affect effective operation of fined entity', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission_annually/2, 'EDPS must notify Commission annually of fines and litigation', 'celex:32024R1689/oj#art_100').
may_impose_fine(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity).
fine_cap_art_5(Entity, eur(1500000)) :-
    union_institution_body_office_or_agency(Entity).
fine_cap_other(Entity, eur(750000)) :-
    union_institution_body_office_or_agency(Entity).
must_give_opportunity_to_be_heard(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity),
    fine_imposed(EDPS, Entity).
must_base_decision_on_commentable_elements(EDPS) :-
    european_data_protection_supervisor(EDPS).
must_associate_complainants(EDPS) :-
    european_data_protection_supervisor(EDPS).
must_respect_rights_of_defence(EDPS) :-
    european_data_protection_supervisor(EDPS).
must_entitle_access_to_file(EDPS, Entity) :-
    european_data_protection_supervisor(EDPS),
    union_institution_body_office_or_agency(Entity).
fines_contribute_to_union_budget(EDPS) :-
    european_data_protection_supervisor(EDPS).
fines_not_affect_effective_operation(Entity) :-
    union_institution_body_office_or_agency(Entity).
must_notify_commission_annually(EDPS, notification(fines_and_litigation)) :-
    european_data_protection_supervisor(EDPS).
provenance(may_impose_fine/2, 'celex:32024R1689/oj#art_100').
provenance(fine_cap_art_5/2, 'celex:32024R1689/oj#art_100').
provenance(fine_cap_other/2, 'celex:32024R1689/oj#art_100').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(must_base_decision_on_commentable_elements/1, 'celex:32024R1689/oj#art_100').
provenance(must_associate_complainants/1, 'celex:32024R1689/oj#art_100').
provenance(must_respect_rights_of_defence/1, 'celex:32024R1689/oj#art_100').
provenance(must_entitle_access_to_file/2, 'celex:32024R1689/oj#art_100').
provenance(fines_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fines_not_affect_effective_operation/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').

% ==== celex:32024R1689/oj#art_101 ====
declared(must_communicate_preliminary_findings/2, 'Commission must communicate preliminary findings to provider and give opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(must_communicate_fine_information_to_board/1, 'information on fines imposed must be communicated to the Board', 'celex:32024R1689/oj#art_101').
declared(court_has_unlimited_jurisdiction_over_fine/1, 'Court of Justice has unlimited jurisdiction to review Commission decisions fixing a fine', 'celex:32024R1689/oj#art_101').
declared(must_adopt_implementing_acts_for_proceedings/1, 'Commission must adopt implementing acts for proceedings under Article 101(1)', 'celex:32024R1689/oj#art_101').
fine_cap(provider_of_general_purpose_ai_model, max(percent(3, annual_total_worldwide_turnover), eur(15000000))).
must_pay_fine(Provider, fine(Ground, Cap)) :-
    general_purpose_ai_model(Model),
    provider(Provider),
    provides_model(Provider, Model),
    commission_finds_intentional_or_negligent(Provider, Ground),
    fine_cap(provider_of_general_purpose_ai_model, Cap).
commission_finds_intentional_or_negligent(Provider, infringed_relevant_provisions) :-
    infringed_relevant_provisions(Provider).
commission_finds_intentional_or_negligent(Provider, failed_to_comply_with_document_request) :-
    failed_to_comply_with_request_under_art_91(Provider).
commission_finds_intentional_or_negligent(Provider, supplied_incorrect_incomplete_misleading_information) :-
    supplied_incorrect_incomplete_or_misleading_information(Provider).
commission_finds_intentional_or_negligent(Provider, failed_to_comply_with_measure_under_art_93) :-
    failed_to_comply_with_measure_requested_under_art_93(Provider).
commission_finds_intentional_or_negligent(Provider, failed_to_make_model_accessible_for_evaluation) :-
    failed_to_make_accessible_for_evaluation_under_art_92(Provider).
must_consider_in_fixing_fine(nature_gravity_duration_of_infringement).
must_consider_in_fixing_fine(principles_of_proportionality_and_appropriateness).
must_consider_in_fixing_fine(commitments_under_art_93_par_3).
must_consider_in_fixing_fine(commitments_in_relevant_codes_of_practice_under_art_56).
must_communicate_preliminary_findings(Commission, Provider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    provides_model(Provider, Model),
    commission_intends_to_adopt_decision_under_art_101_par_1(Commission, Provider).
must_give_opportunity_to_be_heard(Commission, Provider) :-
    must_communicate_preliminary_findings(Commission, Provider).
fines_imposed_under_art_101_must_be(effective).
fines_imposed_under_art_101_must_be(proportionate).
fines_imposed_under_art_101_must_be(dissuasive).
must_communicate_fine_information_to_board(information_on_fines_imposed_under_art_101).
court_has_unlimited_jurisdiction_over_fine(decision_fixing_fine_under_art_101).
court_may_cancel_reduce_or_increase(fine_imposed_under_art_101).
must_adopt_implementing_acts_for_proceedings(arrangements_and_safeguards_for_art_101_par_1_proceedings).
implementing_acts_adopted_under(examination_procedure_referred_to_in_art_98_par_2).
provenance(fine_cap/2, 'celex:32024R1689/oj#art_101').
provenance(must_pay_fine/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent/2, 'celex:32024R1689/oj#art_101').
provenance(must_consider_in_fixing_fine/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(must_give_opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_101').
provenance(fines_imposed_under_art_101_must_be/1, 'celex:32024R1689/oj#art_101').
provenance(must_communicate_fine_information_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_has_unlimited_jurisdiction_over_fine/1, 'celex:32024R1689/oj#art_101').
provenance(court_may_cancel_reduce_or_increase/1, 'celex:32024R1689/oj#art_101').
provenance(must_adopt_implementing_acts_for_proceedings/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted_under/1, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(must_take_into_account_requirements/2, 'when adopting detailed measures, must take into account AI Act requirements', 'celex:32024R1689/oj#art_102').
must_take_into_account_requirements(Adopter, ai_system_requirements) :-
    adopting_detailed_measures(Adopter, security_equipment),
    concerns_artificial_intelligence_systems(security_equipment).
adopting_detailed_measures(Adopter, security_equipment) :-
    adopter(Adopter),
    detailed_measures(security_equipment),
    technical_specifications_and_procedures(security_equipment),
    approval_and_use(security_equipment).
concerns_artificial_intelligence_systems(security_equipment) :-
    ai_system(_).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts concerning AI safety components, must take into account Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_103').
must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    safety_component(S),
    ai_system(S),
    adopting_delegated_act(Commission, S).
adopting_delegated_act(Commission, S) :-
    
    true.
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts, must take into account requirements', 'celex:32024R1689/oj#art_104').
must_take_into_account_requirements(adoption(delegated_act), requirements(chapter_3_section_2)) :-
    delegated_act_concerns(delegated_act, ai_system),
    safety_component(ai_system).
delegated_act_concerns(Act, ai_system) :-
    adoption_of_delegated_act(Act),
    concerns(Act, ai_system).
declared(adoption_of_delegated_act/1, 'adoption of a delegated act', 'celex:32024R1689/oj#art_104').
declared(concerns/2, 'act concerns a subject matter', 'celex:32024R1689/oj#art_104').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adoption_of_delegated_act/1, 'celex:32024R1689/oj#art_104').
provenance(concerns/2, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account_requirements/2, 'Commission must take into account requirements when acting on AI safety components', 'celex:32024R1689/oj#art_105').
must_take_into_account_requirements(Commission, requirements(chapter_3_section_2)) :-
    ai_system(S),
    safety_component(S),
    (   carrying_out_activities_pursuant_to(Commission, art_8_par_1)
    ;   adopting_technical_specifications_and_testing_standards(Commission, art_8_par_2, art_8_par_3)
    ).
declared(carrying_out_activities_pursuant_to/2, 'carrying out activities pursuant to a provision', 'celex:32024R1689/oj#art_105').
declared(adopting_technical_specifications_and_testing_standards/3, 'adopting technical specifications and testing standards in accordance with provisions', 'celex:32024R1689/oj#art_105').
carrying_out_activities_pursuant_to(Commission, art_8_par_1) :-
    
    true.
adopting_technical_specifications_and_testing_standards(Commission, art_8_par_2, art_8_par_3) :-
    
    true.
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_105').
provenance(carrying_out_activities_pursuant_to/2, 'celex:32024R1689/oj#art_105').
provenance(adopting_technical_specifications_and_testing_standards/3, 'celex:32024R1689/oj#art_105').
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
declared(must_take_into_account_requirements/2, 'when adopting acts concerning AI safety components, the requirements of Chapter III Section 2 must be taken into account', 'celex:32024R1689/oj#art_106').
must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    adopting_delegated_act(Commission, S),
    ai_system(S),
    safety_component(S).
must_take_into_account_requirements(Commission, ai_safety_component_system(S)) :-
    adopting_implementing_act(Commission, S),
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts, must take into account AI requirements', 'celex:32024R1689/oj#art_107').
must_take_into_account_requirements(Commission, safety_component_ai_system(S)) :-
    safety_component(S),
    ai_system(S),
    adopting_delegated_act(Commission, S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_107', 'celex:32018R0858/oj#art_5/par_3').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_107', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_107', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_107', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_107', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_107', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_107', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_107', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_107', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_108 ====
declared(must_take_into_account_chapter_3_section_2_requirements/1, 'when adopting acts concerning AI systems that are safety components, the requirements of Chapter 3 Section 2 must be taken into account', 'celex:32024R1689/oj#art_108').
must_take_into_account_chapter_3_section_2_requirements(Act) :-
    adopting_act_concerning_ai_safety_component(Act).
adopting_act_concerning_ai_safety_component(Act) :-
    implementing_act(Act),
    concerns_ai_safety_component(Act).
adopting_act_concerning_ai_safety_component(Act) :-
    delegated_act(Act),
    concerns_ai_safety_component(Act).
concerns_ai_safety_component(Act) :-
    concerns(Act, System),
    ai_system(System),
    safety_component(System).
provenance(must_take_into_account_chapter_3_section_2_requirements/1, 'celex:32024R1689/oj#art_108').
provenance(adopting_act_concerning_ai_safety_component/1, 'celex:32024R1689/oj#art_108').
provenance(concerns_ai_safety_component/1, 'celex:32024R1689/oj#art_108').
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
declared(must_take_into_account_requirements/2, 'when adopting implementing acts, must take into account requirements', 'celex:32024R1689/oj#art_109').
must_take_into_account_requirements(implementing_act(Act), requirements(chapter_3_section_2)) :-
    adopted_pursuant_to(Act, 'celex:32019R2144/oj#art_11/par_2'),
    concerns_ai_safety_components(Act).
concerns_ai_safety_components(Act) :-
    adopted_pursuant_to(Act, _),
    ai_system(S),
    safety_component(S),
    act_concerns(Act, S).
declared(adopted_pursuant_to/2, 'implementing act adopted pursuant to a provision', 'celex:32024R1689/oj#art_109').
declared(act_concerns/2, 'implementing act concerns a specific system', 'celex:32024R1689/oj#art_109').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(adopted_pursuant_to/2, 'celex:32024R1689/oj#art_109').
provenance(act_concerns/2, 'celex:32024R1689/oj#art_109').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_109', 'celex:32019R2144/oj#art_11/par_2').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_109', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_109', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_109', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_109', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_109', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_109', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_109', 'celex:32020L1828/oj').

% ==== celex:32024R1689/oj#art_110 ====
declared(amendment_to_directive/2, 'amendment to a directive by adding a reference', 'celex:32024R1689/oj#art_110').
must_add_reference(Directive, Reference) :-
    amendment_to_directive(Directive, Reference).
amendment_to_directive('celex:32020L1828/oj', 'celex:32024R1689/oj').
provenance(amendment_to_directive/2, 'celex:32024R1689/oj#art_110').
provenance(must_add_reference/2, 'celex:32024R1689/oj#art_110').
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
declared(large_scale_it_system_component/1, 'AI system that is a component of a large-scale IT system listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_or_put_into_service_before/2, 'AI system placed on the market or put into service before a given date', 'celex:32024R1689/oj#art_111').
declared(subject_to_significant_design_changes/1, 'AI system subject to significant changes in its design', 'celex:32024R1689/oj#art_111').
declared(intended_for_use_by_public_authorities/1, 'high-risk AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(must_bring_into_compliance_by/2, 'entity must bring AI system into compliance by a deadline', 'celex:32024R1689/oj#art_111').
declared(must_take_steps_to_comply_by/2, 'entity must take necessary steps to comply by a deadline', 'celex:32024R1689/oj#art_111').
must_bring_into_compliance_by(operator(S), date(2030, 12, 31)) :-
    large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).
must_take_steps_to_comply_by(operator(S), date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    \+ large_scale_it_system_component(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    subject_to_significant_design_changes(S).
must_take_steps_to_comply_by(provider(S), date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).
must_take_steps_to_comply_by(deployer(S), date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S).
must_take_steps_to_comply_by(provider(M), date(2027, 8, 2)) :-
    general_purpose_ai_model(M),
    placed_on_market_or_put_into_service_before(M, date(2025, 8, 2)).
provenance(large_scale_it_system_component/1, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(subject_to_significant_design_changes/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(must_bring_into_compliance_by/2, 'celex:32024R1689/oj#art_111').
provenance(must_take_steps_to_comply_by/2, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_amendment_need/2, 'Commission must assess need for amendment of list', 'celex:32024R1689/oj#art_112').
declared(must_submit_findings/2, 'Commission must submit findings of assessment', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_and_report/3, 'Commission must evaluate and report on specified matters', 'celex:32024R1689/oj#art_112').
declared(must_submit_report/2, 'Commission must submit report on evaluation and review', 'celex:32024R1689/oj#art_112').
declared(report_must_include_assessment/1, 'report must include assessment of enforcement structure', 'celex:32024R1689/oj#art_112').
declared(report_must_be_public/1, 'report must be made public', 'celex:32024R1689/oj#art_112').
declared(report_must_pay_attention/2, 'report must pay specific attention to matters', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_functioning/2, 'Commission must evaluate functioning of AI Office', 'celex:32024R1689/oj#art_112').
declared(must_submit_progress_report/2, 'Commission must submit report on progress of standardisation', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_impact/2, 'Commission must evaluate impact of voluntary codes of conduct', 'celex:32024R1689/oj#art_112').
declared(must_provide_information/2, 'entities must provide Commission with information on request', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account/2, 'Commission must take into account positions and findings', 'celex:32024R1689/oj#art_112').
declared(must_submit_amendment_proposals/1, 'Commission must submit appropriate proposals to amend regulation', 'celex:32024R1689/oj#art_112').
declared(must_develop_methodology/2, 'AI Office must develop methodology for evaluation of risk levels', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account_sectoral_specificities/1, 'amendment must take into account sectoral specificities', 'celex:32024R1689/oj#art_112').
declared(must_carry_out_assessment/2, 'Commission must carry out assessment of enforcement', 'celex:32024R1689/oj#art_112').
must_assess_amendment_need(Commission, amendment_need(annex_3_list)) :-
    ai_office(Commission).
must_assess_amendment_need(Commission, amendment_need(prohibited_practices_list)) :-
    ai_office(Commission).
must_submit_findings(Commission, findings(amendment_need)) :-
    must_assess_amendment_need(Commission, _).
must_evaluate_and_report(Commission, evaluation(amendment_need(area_headings)), deadline(august_2, 2028)) :-
    ai_office(Commission).
must_evaluate_and_report(Commission, evaluation(amendment_need(transparency_measures_list)), deadline(august_2, 2028)) :-
    ai_office(Commission).
must_evaluate_and_report(Commission, evaluation(enhancing_supervision_governance), deadline(august_2, 2028)) :-
    ai_office(Commission).
must_submit_report(Commission, report(evaluation_review_regulation)) :-
    ai_office(Commission).
report_must_include_assessment(Report) :-
    must_submit_report(_, Report).
report_must_be_public(Report) :-
    must_submit_report(_, Report).
report_must_pay_attention(Report, status(national_competent_authority_resources)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, state(penalties)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, adopted(harmonised_standards_and_common_specifications)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
report_must_pay_attention(Report, number(undertakings_entering_market)) :-
    must_evaluate_and_report(_, _, _),
    must_submit_report(_, Report).
must_evaluate_functioning(Commission, functioning(ai_office)) :-
    ai_office(Commission).
must_submit_report(Commission, report(evaluation(ai_office_functioning))) :-
    must_evaluate_functioning(Commission, _).
must_submit_progress_report(Commission, progress(standardisation_energy_efficient_gpai)) :-
    ai_office(Commission).
report_must_be_public(Report) :-
    must_submit_progress_report(_, Report).
must_evaluate_impact(Commission, impact(voluntary_codes_of_conduct)) :-
    ai_office(Commission).
must_provide_information(Entity, Commission) :-
    (   operator(Entity)
    ;   national_competent_authority(Entity)
    ),
    ai_office(Commission).
must_take_into_account(Commission, positions_and_findings) :-
    ai_office(Commission).
must_submit_amendment_proposals(Commission) :-
    ai_office(Commission).
must_develop_methodology(AI_Office, methodology(risk_level_evaluation)) :-
    ai_office(AI_Office).
must_take_into_account_sectoral_specificities(amendment) :-
    must_submit_amendment_proposals(_).
must_carry_out_assessment(Commission, assessment(enforcement_regulation)) :-
    ai_office(Commission).
must_submit_report(Commission, report(assessment(enforcement_regulation))) :-
    must_carry_out_assessment(Commission, _).
provenance(must_assess_amendment_need/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_112').
provenance(report_must_include_assessment/1, 'celex:32024R1689/oj#art_112').
provenance(report_must_be_public/1, 'celex:32024R1689/oj#art_112').
provenance(report_must_pay_attention/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_progress_report/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_impact/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_amendment_proposals/1, 'celex:32024R1689/oj#art_112').
provenance(must_develop_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account_sectoral_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_assessment/2, 'celex:32024R1689/oj#art_112').
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
declared(entry_into_force_date/2, 'date on which a provision enters into force', 'celex:32024R1689/oj#art_113').
declared(application_date/2, 'date from which a provision applies', 'celex:32024R1689/oj#art_113').
entry_into_force_date('celex:32024R1689/oj', days(20, after(publication))).
application_date('celex:32024R1689/oj', date(2026, 8, 2)).
application_date('celex:32024R1689/oj#chp_1', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_2', date(2025, 2, 2)).
application_date('celex:32024R1689/oj#chp_3/sec_4', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_5', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_7', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#chp_12', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_78', date(2025, 8, 2)).
application_date('celex:32024R1689/oj#art_6/par_1', date(2027, 8, 2)).
provenance(entry_into_force_date/2, 'celex:32024R1689/oj#art_113').
provenance(application_date/2, 'celex:32024R1689/oj#art_113').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_2').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_7').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#chp_12').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_113', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#anx_1 ====
declared(union_harmonisation_legislation/1, 'Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation('32006L0042').
union_harmonisation_legislation('32009L0048').
union_harmonisation_legislation('32013L0053').
union_harmonisation_legislation('32014L0033').
union_harmonisation_legislation('32014L0034').
union_harmonisation_legislation('32014L0053').
union_harmonisation_legislation('32014L0068').
union_harmonisation_legislation('32016R0424').
union_harmonisation_legislation('32016R0425').
union_harmonisation_legislation('32016R0426').
union_harmonisation_legislation('32017R0745').
union_harmonisation_legislation('32017R0746').
union_harmonisation_legislation('32008R0300').
union_harmonisation_legislation('32013R0168').
union_harmonisation_legislation('32013R0167').
union_harmonisation_legislation('32014L0090').
union_harmonisation_legislation('32016L0797').
union_harmonisation_legislation('32018R0858').
union_harmonisation_legislation('32019R2144').
union_harmonisation_legislation('32018R1139').
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
declared(criminal_offence_referred_to_in_art_5_par_1_h_iii/1, 'criminal offence listed in Annex II', 'celex:32024R1689/oj#anx_2').
criminal_offence_referred_to_in_art_5_par_1_h_iii(terrorism).
criminal_offence_referred_to_in_art_5_par_1_h_iii(trafficking_in_human_beings).
criminal_offence_referred_to_in_art_5_par_1_h_iii(sexual_exploitation_of_children).
criminal_offence_referred_to_in_art_5_par_1_h_iii(child_pornography).
criminal_offence_referred_to_in_art_5_par_1_h_iii(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence_referred_to_in_art_5_par_1_h_iii(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence_referred_to_in_art_5_par_1_h_iii(murder).
criminal_offence_referred_to_in_art_5_par_1_h_iii(grievous_bodily_injury).
criminal_offence_referred_to_in_art_5_par_1_h_iii(illicit_trade_in_human_organs_or_tissue).
criminal_offence_referred_to_in_art_5_par_1_h_iii(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence_referred_to_in_art_5_par_1_h_iii(kidnapping).
criminal_offence_referred_to_in_art_5_par_1_h_iii(illegal_restraint).
criminal_offence_referred_to_in_art_5_par_1_h_iii(hostage_taking).
criminal_offence_referred_to_in_art_5_par_1_h_iii(crimes_within_the_jurisdiction_of_the_international_criminal_court).
criminal_offence_referred_to_in_art_5_par_1_h_iii(unlawful_seizure_of_aircraft_or_ships).
criminal_offence_referred_to_in_art_5_par_1_h_iii(rape).
criminal_offence_referred_to_in_art_5_par_1_h_iii(environmental_crime).
criminal_offence_referred_to_in_art_5_par_1_h_iii(organised_or_armed_robbery).
criminal_offence_referred_to_in_art_5_par_1_h_iii(sabotage).
criminal_offence_referred_to_in_art_5_par_1_h_iii(participation_in_a_criminal_organisation_involved_in_one_or_more_of_the_offences_listed_above).
provenance(criminal_offence_referred_to_in_art_5_par_1_h_iii/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
declared(annex_3_high_risk_ai_system/1, 'AI system listed in Annex III', 'celex:32024R1689/oj#anx_3').
declared(biometric_categorisation_system/1, 'AI system intended for biometric categorisation by sensitive attributes', 'celex:32024R1689/oj#anx_3').
declared(emotion_recognition_system/1, 'AI system intended for emotion recognition', 'celex:32024R1689/oj#anx_3').
declared(critical_infrastructure_safety_component/1, 'AI system intended as safety component in critical infrastructure', 'celex:32024R1689/oj#anx_3').
declared(education_access_system/1, 'AI system intended to determine access or admission to education', 'celex:32024R1689/oj#anx_3').
declared(learning_outcome_evaluation_system/1, 'AI system intended to evaluate learning outcomes', 'celex:32024R1689/oj#anx_3').
declared(education_level_assessment_system/1, 'AI system intended to assess appropriate education level', 'celex:32024R1689/oj#anx_3').
declared(student_monitoring_system/1, 'AI system intended to monitor prohibited student behaviour during tests', 'celex:32024R1689/oj#anx_3').
declared(recruitment_system/1, 'AI system intended for recruitment or selection of natural persons', 'celex:32024R1689/oj#anx_3').
declared(employment_decision_system/1, 'AI system intended to make decisions affecting work-related relationships', 'celex:32024R1689/oj#anx_3').
declared(public_benefit_eligibility_system/1, 'AI system intended to evaluate eligibility for essential public benefits', 'celex:32024R1689/oj#anx_3').
declared(creditworthiness_system/1, 'AI system intended to evaluate creditworthiness or credit score', 'celex:32024R1689/oj#anx_3').
declared(insurance_risk_assessment_system/1, 'AI system intended for risk assessment and pricing in life and health insurance', 'celex:32024R1689/oj#anx_3').
declared(emergency_response_system/1, 'AI system intended to evaluate emergency calls or dispatch emergency services', 'celex:32024R1689/oj#anx_3').
declared(victimisation_risk_assessment_system/1, 'AI system intended to assess risk of a person becoming victim of crime', 'celex:32024R1689/oj#anx_3').
declared(polygraph_system/1, 'AI system intended as polygraph or similar tool', 'celex:32024R1689/oj#anx_3').
declared(evidence_reliability_system/1, 'AI system intended to evaluate reliability of evidence', 'celex:32024R1689/oj#anx_3').
declared(offending_risk_assessment_system/1, 'AI system intended to assess risk of offending or re-offending', 'celex:32024R1689/oj#anx_3').
declared(law_enforcement_profiling_system/1, 'AI system intended for profiling in criminal detection or investigation', 'celex:32024R1689/oj#anx_3').
declared(migration_polygraph_system/1, 'AI system intended as polygraph in migration context', 'celex:32024R1689/oj#anx_3').
declared(migration_risk_assessment_system/1, 'AI system intended to assess risk in migration context', 'celex:32024R1689/oj#anx_3').
declared(asylum_application_examination_system/1, 'AI system intended to examine asylum, visa or residence applications', 'celex:32024R1689/oj#anx_3').
declared(migration_identification_system/1, 'AI system intended to detect or identify persons in migration context', 'celex:32024R1689/oj#anx_3').
declared(judicial_assistance_system/1, 'AI system intended to assist judicial authority in researching and applying law', 'celex:32024R1689/oj#anx_3').
declared(election_influence_system/1, 'AI system intended to influence election or referendum outcomes', 'celex:32024R1689/oj#anx_3').
annex_3_high_risk_ai_system(S) :-
    remote_biometric_identification_system(S),
    \+ biometric_verification_only_system(S).
biometric_verification_only_system(S) :-
    ai_system(S),
    biometric_verification(S),
    intended_purpose(S, confirm_identity).
annex_3_high_risk_ai_system(S) :-
    biometric_categorisation_system(S).
biometric_categorisation_system(S) :-
    ai_system(S),
    intended_purpose(S, biometric_categorisation),
    categorises_by_sensitive_attributes(S).
categorises_by_sensitive_attributes(S) :-
    ai_system(S),
    infers_sensitive_attributes(S).
annex_3_high_risk_ai_system(S) :-
    emotion_recognition_system(S).
emotion_recognition_system(S) :-
    ai_system(S),
    intended_purpose(S, emotion_recognition).
annex_3_high_risk_ai_system(S) :-
    critical_infrastructure_safety_component(S).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, management_of(critical_digital_infrastructure)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, management_of(road_traffic)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(water)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(gas)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(heating)).
critical_infrastructure_safety_component(S) :-
    ai_system(S),
    safety_component(S),
    intended_purpose(S, supply_of(electricity)).
annex_3_high_risk_ai_system(S) :-
    education_access_system(S).
education_access_system(S) :-
    ai_system(S),
    intended_purpose(S, determine_access_to_education).
annex_3_high_risk_ai_system(S) :-
    learning_outcome_evaluation_system(S).
learning_outcome_evaluation_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_learning_outcomes).
annex_3_high_risk_ai_system(S) :-
    education_level_assessment_system(S).
education_level_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_education_level).
annex_3_high_risk_ai_system(S) :-
    student_monitoring_system(S).
student_monitoring_system(S) :-
    ai_system(S),
    intended_purpose(S, monitor_prohibited_behaviour_during_tests).
annex_3_high_risk_ai_system(S) :-
    recruitment_system(S).
recruitment_system(S) :-
    ai_system(S),
    intended_purpose(S, recruitment_or_selection).
annex_3_high_risk_ai_system(S) :-
    employment_decision_system(S).
employment_decision_system(S) :-
    ai_system(S),
    intended_purpose(S, employment_decisions).
annex_3_high_risk_ai_system(S) :-
    public_benefit_eligibility_system(S).
public_benefit_eligibility_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_eligibility_for_public_benefits).
annex_3_high_risk_ai_system(S) :-
    creditworthiness_system(S).
creditworthiness_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_creditworthiness),
    \+ intended_purpose(S, detect_financial_fraud).
annex_3_high_risk_ai_system(S) :-
    insurance_risk_assessment_system(S).
insurance_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, risk_assessment_and_pricing(life_and_health_insurance)).
annex_3_high_risk_ai_system(S) :-
    emergency_response_system(S).
emergency_response_system(S) :-
    ai_system(S),
    intended_purpose(S, emergency_call_evaluation_or_dispatch).
annex_3_high_risk_ai_system(S) :-
    victimisation_risk_assessment_system(S).
victimisation_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_risk_of_victimisation).
annex_3_high_risk_ai_system(S) :-
    polygraph_system(S).
polygraph_system(S) :-
    ai_system(S),
    intended_purpose(S, polygraph_or_similar).
annex_3_high_risk_ai_system(S) :-
    evidence_reliability_system(S).
evidence_reliability_system(S) :-
    ai_system(S),
    intended_purpose(S, evaluate_reliability_of_evidence).
annex_3_high_risk_ai_system(S) :-
    offending_risk_assessment_system(S).
offending_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_risk_of_offending).
annex_3_high_risk_ai_system(S) :-
    law_enforcement_profiling_system(S).
law_enforcement_profiling_system(S) :-
    ai_system(S),
    intended_purpose(S, profiling_for_criminal_investigation).
annex_3_high_risk_ai_system(S) :-
    migration_polygraph_system(S).
migration_polygraph_system(S) :-
    ai_system(S),
    intended_purpose(S, polygraph_or_similar_in_migration).
annex_3_high_risk_ai_system(S) :-
    migration_risk_assessment_system(S).
migration_risk_assessment_system(S) :-
    ai_system(S),
    intended_purpose(S, assess_migration_risk).
annex_3_high_risk_ai_system(S) :-
    asylum_application_examination_system(S).
asylum_application_examination_system(S) :-
    ai_system(S),
    intended_purpose(S, examine_asylum_application).
annex_3_high_risk_ai_system(S) :-
    migration_identification_system(S).
migration_identification_system(S) :-
    ai_system(S),
    intended_purpose(S, detect_or_identify_persons_in_migration),
    \+ intended_purpose(S, verify_travel_documents).
annex_3_high_risk_ai_system(S) :-
    judicial_assistance_system(S).
judicial_assistance_system(S) :-
    ai_system(S),
    intended_purpose(S, assist_judicial_authority).
annex_3_high_risk_ai_system(S) :-
    election_influence_system(S).
election_influence_system(S) :-
    ai_system(S),
    intended_purpose(S, influence_election_or_referendum),
    \+ administrative_campaign_tool(S).
administrative_campaign_tool(S) :-
    ai_system(S),
    intended_purpose(S, organise_political_campaign_administratively).
provenance(annex_3_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_verification_only_system/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_categorisation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(categorises_by_sensitive_attributes/1, 'celex:32024R1689/oj#anx_3').
provenance(emotion_recognition_system/1, 'celex:32024R1689/oj#anx_3').
provenance(critical_infrastructure_safety_component/1, 'celex:32024R1689/oj#anx_3').
provenance(education_access_system/1, 'celex:32024R1689/oj#anx_3').
provenance(learning_outcome_evaluation_system/1, 'celex:32024R1689/oj#anx_3').
provenance(education_level_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(student_monitoring_system/1, 'celex:32024R1689/oj#anx_3').
provenance(recruitment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(employment_decision_system/1, 'celex:32024R1689/oj#anx_3').
provenance(public_benefit_eligibility_system/1, 'celex:32024R1689/oj#anx_3').
provenance(creditworthiness_system/1, 'celex:32024R1689/oj#anx_3').
provenance(insurance_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(emergency_response_system/1, 'celex:32024R1689/oj#anx_3').
provenance(victimisation_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(evidence_reliability_system/1, 'celex:32024R1689/oj#anx_3').
provenance(offending_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_profiling_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_polygraph_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_risk_assessment_system/1, 'celex:32024R1689/oj#anx_3').
provenance(asylum_application_examination_system/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_identification_system/1, 'celex:32024R1689/oj#anx_3').
provenance(judicial_assistance_system/1, 'celex:32024R1689/oj#anx_3').
provenance(election_influence_system/1, 'celex:32024R1689/oj#anx_3').
provenance(administrative_campaign_tool/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation/1, 'technical documentation referred to in Article 11(1)', 'celex:32024R1689/oj#anx_4').
declared(contains_general_description/1, 'documentation contains a general description of the AI system', 'celex:32024R1689/oj#anx_4').
declared(contains_detailed_description_of_elements/1, 'documentation contains a detailed description of the elements and development process', 'celex:32024R1689/oj#anx_4').
declared(contains_monitoring_functioning_control_info/1, 'documentation contains detailed information about monitoring, functioning and control', 'celex:32024R1689/oj#anx_4').
declared(contains_performance_metrics_description/1, 'documentation contains a description of the appropriateness of performance metrics', 'celex:32024R1689/oj#anx_4').
declared(contains_risk_management_system_description/1, 'documentation contains a detailed description of the risk management system', 'celex:32024R1689/oj#anx_4').
declared(contains_lifecycle_changes_description/1, 'documentation contains a description of relevant changes made through the system lifecycle', 'celex:32024R1689/oj#anx_4').
declared(contains_harmonised_standards_list/1, 'documentation contains a list of harmonised standards applied', 'celex:32024R1689/oj#anx_4').
declared(contains_eu_declaration_of_conformity_copy/1, 'documentation contains a copy of the EU declaration of conformity', 'celex:32024R1689/oj#anx_4').
declared(contains_post_market_evaluation_system_description/1, 'documentation contains a description of the post-market evaluation system', 'celex:32024R1689/oj#anx_4').
technical_documentation(D) :-
    contains_general_description(D),
    contains_detailed_description_of_elements(D),
    contains_monitoring_functioning_control_info(D),
    contains_performance_metrics_description(D),
    contains_risk_management_system_description(D),
    contains_lifecycle_changes_description(D),
    contains_harmonised_standards_list(D),
    contains_eu_declaration_of_conformity_copy(D),
    contains_post_market_evaluation_system_description(D).
provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_detailed_description_of_elements/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_monitoring_functioning_control_info/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_performance_metrics_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_risk_management_system_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_lifecycle_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_harmonised_standards_list/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_4').
provenance(contains_post_market_evaluation_system_description/1, 'celex:32024R1689/oj#anx_4').
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
declared(contains_ai_system_identification/1, 'contains AI system name, type and traceability reference', 'celex:32024R1689/oj#anx_5').
declared(contains_provider_details/1, 'contains name and address of provider or authorised representative', 'celex:32024R1689/oj#anx_5').
declared(contains_sole_responsibility_statement/1, 'contains statement of sole responsibility of the provider', 'celex:32024R1689/oj#anx_5').
declared(contains_conformity_statement/1, 'contains statement of conformity with the Regulation and other relevant Union law', 'celex:32024R1689/oj#anx_5').
declared(contains_personal_data_compliance_statement/1, 'contains statement of compliance with GDPR, EUDPR and LED', 'celex:32024R1689/oj#anx_5').
declared(contains_harmonised_standard_references/1, 'contains references to harmonised standards or common specifications', 'celex:32024R1689/oj#anx_5').
declared(contains_notified_body_details/1, 'contains notified body name, number, procedure description and certificate identification', 'celex:32024R1689/oj#anx_5').
declared(contains_issuance_details/1, 'contains place, date, name, function and signature of signatory', 'celex:32024R1689/oj#anx_5').
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standard_references(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_harmonised_standard_references(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standard_references(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).
eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_harmonised_standard_references(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_harmonised_standard_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_issuance_details/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
conformity_assessment_based_on_internal_control(P) :-
    provider(P),
    verifies_quality_management_system_compliance(P),
    examines_technical_documentation_compliance(P),
    verifies_design_and_monitoring_consistency(P).
verifies_quality_management_system_compliance(P) :-
    provider(P),
    must_verify_qms_compliance(P, quality_management_system).
examines_technical_documentation_compliance(P) :-
    provider(P),
    must_examine_technical_documentation(P, essential_requirements).
verifies_design_and_monitoring_consistency(P) :-
    provider(P),
    must_verify_design_and_monitoring(P, technical_documentation).
must_verify_qms_compliance(Provider, quality_management_system) :-
    provider(Provider).
must_examine_technical_documentation(Provider, essential_requirements) :-
    provider(Provider).
must_verify_design_and_monitoring(Provider, technical_documentation) :-
    provider(Provider).
provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system_compliance/1, 'celex:32024R1689/oj#anx_6').
provenance(examines_technical_documentation_compliance/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_and_monitoring_consistency/1, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_qms_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_and_monitoring/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(must_lodge_application/2, 'provider must lodge application with notified body', 'celex:32024R1689/oj#anx_7').
must_include_in_application(Provider, application(quality_management_system, NotifiedBody)) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody).
must_include_in_application(Provider, name_and_address(Provider)) :-
    provider(Provider).
must_include_in_application(Provider, name_and_address(Representative)) :-
    authorised_representative(Representative),
    must_lodge_application(Representative, _NotifiedBody).
must_include_in_application(Provider, list_of_ai_systems(Systems)) :-
    provider(Provider),
    Systems = [_|_].
must_include_in_application(Provider, technical_documentation(System)) :-
    provider(Provider),
    ai_system(System).
must_include_in_application(Provider, quality_management_system_documentation) :-
    provider(Provider).
must_include_in_application(Provider, description_of_procedures) :-
    provider(Provider).
must_include_in_application(Provider, written_declaration_no_other_application) :-
    provider(Provider).
must_assess_quality_management_system(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_lodge_application(Provider, NotifiedBody).
must_notify_decision(NotifiedBody, Provider, assessment(quality_management_system, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, Provider).
must_notify_decision(NotifiedBody, Representative, assessment(quality_management_system, Decision)) :-
    notified_body(NotifiedBody),
    authorised_representative(Representative),
    must_lodge_application(Representative, NotifiedBody).
must_maintain_quality_management_system(Provider) :-
    provider(Provider),
    must_assess_quality_management_system(_NotifiedBody, Provider).
must_notify_intended_change(Provider, change(quality_management_system)) :-
    provider(Provider),
    must_maintain_quality_management_system(Provider).
must_notify_intended_change(Provider, change(list_of_ai_systems)) :-
    provider(Provider),
    must_maintain_quality_management_system(Provider).
must_examine_proposed_changes(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_notify_intended_change(Provider, _Change).
must_notify_decision(NotifiedBody, Provider, assessment(proposed_changes, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_proposed_changes(NotifiedBody, Provider).
must_lodge_technical_documentation_application(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody),
    placing_on_market(System),
    ai_system(System).
must_lodge_technical_documentation_application(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_lodge_application(Provider, NotifiedBody),
    putting_into_service(System),
    ai_system(System).
must_include_in_application(Provider, name_and_address(Provider)) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).
must_include_in_application(Provider, written_declaration_no_other_application) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).
must_include_in_application(Provider, technical_documentation_annex_4) :-
    must_lodge_technical_documentation_application(Provider, _NotifiedBody).
must_examine_technical_documentation(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_lodge_technical_documentation_application(Provider, NotifiedBody).
must_grant_access_to_data(NotifiedBody, data(training, validation, testing)) :-
    notified_body(NotifiedBody),
    must_examine_technical_documentation(NotifiedBody, _Provider).
may_require_further_evidence(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider).
must_carry_out_adequate_tests(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    may_require_further_evidence(NotifiedBody, Provider),
    \+ satisfied_with_tests(NotifiedBody, Provider).
must_grant_access_to_models(NotifiedBody, models(training, trained)) :-
    notified_body(NotifiedBody),
    must_examine_technical_documentation(NotifiedBody, _Provider),
    high_risk_ai_system(_System),
    \+ other_reasonable_means_sufficient(NotifiedBody).
must_notify_decision(NotifiedBody, Provider, assessment(technical_documentation, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider).
must_notify_decision(NotifiedBody, Representative, assessment(technical_documentation, Decision)) :-
    notified_body(NotifiedBody),
    authorised_representative(Representative),
    must_examine_technical_documentation(NotifiedBody, _Provider).
must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider),
    conformity_assessment(System),
    ai_system(System).
must_refuse_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_examine_technical_documentation(NotifiedBody, Provider),
    \+ conformity_assessment(_System).
must_inform_applicant_of_refusal(NotifiedBody, Provider, reasons(RefusalReasons)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_refuse_certificate(NotifiedBody, Provider).
must_inform_applicant_of_refusal(NotifiedBody, Provider, reasons(data_quality, NonComplianceReasons)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_refuse_certificate(NotifiedBody, Provider),
    \+ meets_data_requirement(System).
must_inform_notified_body_of_change(Provider, change(ai_system, System)) :-
    provider(Provider),
    ai_system(System),
    must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, Provider),
    change_affects_compliance(System).
must_assess_change_to_ai_system(NotifiedBody, change(ai_system, System)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_inform_notified_body_of_change(Provider, change(ai_system, System)).
must_issue_supplement_to_certificate(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_change_to_ai_system(NotifiedBody, change(ai_system, _System)),
    \+ requires_new_conformity_assessment(_System).
must_notify_decision(NotifiedBody, Provider, assessment(change, Decision)) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_change_to_ai_system(NotifiedBody, change(ai_system, _System)).
must_carry_out_surveillance(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_assess_quality_management_system(NotifiedBody, Provider).
must_allow_access_to_premises(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_carry_out_surveillance(NotifiedBody, Provider).
must_share_information(Provider, NotifiedBody) :-
    provider(Provider),
    notified_body(NotifiedBody),
    must_carry_out_surveillance(NotifiedBody, Provider).
must_carry_out_periodic_audits(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_carry_out_surveillance(NotifiedBody, Provider).
must_provide_audit_report(NotifiedBody, Provider) :-
    notified_body(NotifiedBody),
    provider(Provider),
    must_carry_out_periodic_audits(NotifiedBody, Provider).
may_carry_out_additional_tests(NotifiedBody, System) :-
    notified_body(NotifiedBody),
    ai_system(System),
    must_carry_out_periodic_audits(NotifiedBody, _Provider),
    must_issue_union_technical_documentation_assessment_certificate(NotifiedBody, _Provider).
provenance(must_lodge_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_include_in_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_decision/3, 'celex:32024R1689/oj#anx_7').
provenance(must_maintain_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(must_notify_intended_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_proposed_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(must_lodge_technical_documentation_application/2, 'celex:32024R1689/oj#anx_7').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_data/2, 'celex:32024R1689/oj#anx_7').
provenance(may_require_further_evidence/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_adequate_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(must_grant_access_to_models/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_union_technical_documentation_assessment_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_refuse_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_applicant_of_refusal/3, 'celex:32024R1689/oj#anx_7').
provenance(must_assess_change_to_ai_system/2, 'celex:32024R1689/oj#anx_7').
provenance(must_inform_notified_body_of_change/2, 'celex:32024R1689/oj#anx_7').
provenance(must_issue_supplement_to_certificate/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_surveillance/2, 'celex:32024R1689/oj#anx_7').
provenance(must_allow_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(must_share_information/2, 'celex:32024R1689/oj#anx_7').
provenance(must_carry_out_periodic_audits/2, 'celex:32024R1689/oj#anx_7').
provenance(must_provide_audit_report/2, 'celex:32024R1689/oj#anx_7').
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
declared(must_submit_registration_information/2, 'entity must submit registration information for a high-risk AI system', 'celex:32024R1689/oj#anx_8').
declared(must_keep_registration_information_up_to_date/2, 'entity must keep registration information up to date for a high-risk AI system', 'celex:32024R1689/oj#anx_8').
declared(registration_information_item/2, 'item of information required for registration', 'celex:32024R1689/oj#anx_8').
declared(section_a_information/1, 'information required under Section A of Annex VIII', 'celex:32024R1689/oj#anx_8/sec_1').
declared(section_b_information/1, 'information required under Section B of Annex VIII', 'celex:32024R1689/oj#anx_8/sec_2').
declared(section_c_information/1, 'information required under Section C of Annex VIII', 'celex:32024R1689/oj#anx_8/sec_3').
declared(law_enforcement_migration_asylum_border_system/1, 'high-risk AI system in areas of law enforcement, migration, asylum and border control management', 'celex:32024R1689/oj#anx_8').
must_submit_registration_information(Provider, registration(high_risk_ai_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    section_a_information(Info),
    registration_information_item(registration(high_risk_ai_system(S)), Info).
must_keep_registration_information_up_to_date(Provider, registration(high_risk_ai_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S).
registration_information_item(registration(high_risk_ai_system(S)), provider_name_address_contact(Provider)) :-
    provider(Provider).
registration_information_item(registration(high_risk_ai_system(S)), submitter_name_address_contact(Person)) :-
    true.
registration_information_item(registration(high_risk_ai_system(S)), authorised_representative_name_address_contact(Rep)) :-
    authorised_representative(Rep).
registration_information_item(registration(high_risk_ai_system(S)), trade_name_and_reference(S)).
registration_information_item(registration(high_risk_ai_system(S)), intended_purpose_and_components_description(S)).
registration_information_item(registration(high_risk_ai_system(S)), information_and_operating_logic_description(S)).
registration_information_item(registration(high_risk_ai_system(S)), status(S)).
registration_information_item(registration(high_risk_ai_system(S)), certificate_details(Cert)) :-
    notified_body(Body),
    true.
registration_information_item(registration(high_risk_ai_system(S)), scanned_certificate_copy(Cert)).
registration_information_item(registration(high_risk_ai_system(S)), member_states_placed_on_market(S)).
registration_information_item(registration(high_risk_ai_system(S)), eu_declaration_of_conformity_copy(S)).
registration_information_item(registration(high_risk_ai_system(S)), electronic_instructions_for_use(S)) :-
    \+ law_enforcement_migration_asylum_border_system(S).
registration_information_item(registration(high_risk_ai_system(S)), url_additional_information(URL)).
must_submit_registration_information(Provider, registration(not_high_risk_system(S))) :-
    provider(Provider),
    section_b_information(Info),
    registration_information_item(registration(not_high_risk_system(S)), Info).
must_keep_registration_information_up_to_date(Provider, registration(not_high_risk_system(S))) :-
    provider(Provider).
registration_information_item(registration(not_high_risk_system(S)), provider_name_address_contact(Provider)) :-
    provider(Provider).
registration_information_item(registration(not_high_risk_system(S)), submitter_name_address_contact(Person)).
registration_information_item(registration(not_high_risk_system(S)), authorised_representative_name_address_contact(Rep)) :-
    authorised_representative(Rep).
registration_information_item(registration(not_high_risk_system(S)), trade_name_and_reference(S)).
registration_information_item(registration(not_high_risk_system(S)), intended_purpose_description(S)).
registration_information_item(registration(not_high_risk_system(S)), conditions_not_high_risk(S)).
registration_information_item(registration(not_high_risk_system(S)), summary_grounds_not_high_risk(S)).
registration_information_item(registration(not_high_risk_system(S)), status(S)).
registration_information_item(registration(not_high_risk_system(S)), member_states_placed_on_market(S)).
must_submit_registration_information(Deployer, registration(deployer_high_risk(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    section_c_information(Info),
    registration_information_item(registration(deployer_high_risk(S)), Info).
must_keep_registration_information_up_to_date(Deployer, registration(deployer_high_risk(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S).
registration_information_item(registration(deployer_high_risk(S)), deployer_name_address_contact(Deployer)) :-
    deployer(Deployer).
registration_information_item(registration(deployer_high_risk(S)), submitter_name_address_contact(Person)).
registration_information_item(registration(deployer_high_risk(S)), url_eu_database_entry(S)).
registration_information_item(registration(deployer_high_risk(S)), summary_fundamental_rights_impact_assessment(S)).
registration_information_item(registration(deployer_high_risk(S)), summary_data_protection_impact_assessment(S)).
section_a_information(_).
section_b_information(_).
section_c_information(_).
law_enforcement_migration_asylum_border_system(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border(S).
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_item/2, 'celex:32024R1689/oj#anx_8').
provenance(section_a_information/1, 'celex:32024R1689/oj#anx_8/sec_1').
provenance(section_b_information/1, 'celex:32024R1689/oj#anx_8/sec_2').
provenance(section_c_information/1, 'celex:32024R1689/oj#anx_8/sec_3').
provenance(law_enforcement_migration_asylum_border_system/1, 'celex:32024R1689/oj#anx_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').

% ==== celex:32024R1689/oj#anx_9 ====
declared(must_provide_testing_information/2, 'entity must provide specified information for registration of real-world testing', 'celex:32024R1689/oj#anx_9').
declared(must_keep_testing_information_up_to_date/2, 'entity must keep specified information up to date for registration of real-world testing', 'celex:32024R1689/oj#anx_9').
declared(testing_information/1, 'information required for registration of real-world testing', 'celex:32024R1689/oj#anx_9').
testing_information(info(union_wide_unique_id(Id),
                          provider_details(Name, Contact),
                          deployer_details(Deployers),
                          system_description(Description, IntendedPurpose, IdentificationInfo),
                          plan_summary(Summary),
                          suspension_termination_info(Status))) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S).
must_provide_testing_information(Provider, info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    testing_information(info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)).
must_keep_testing_information_up_to_date(Provider, info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    testing_information(info(Id, Name, Contact, Deployers, Description, IntendedPurpose, IdentificationInfo, Summary, Status)).
provenance(must_provide_testing_information/2, 'celex:32024R1689/oj#anx_9').
provenance(must_keep_testing_information_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(testing_information/1, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system_in_fsj/1, 'large-scale IT system in the area of Freedom, Security and Justice', 'celex:32024R1689/oj#anx_10').
large_scale_it_system_in_fsj(S) :-
    schengen_information_system(S).
large_scale_it_system_in_fsj(S) :-
    visa_information_system(S).
large_scale_it_system_in_fsj(S) :-
    eurodac_system(S).
large_scale_it_system_in_fsj(S) :-
    entry_exit_system(S).
large_scale_it_system_in_fsj(S) :-
    european_travel_information_and_authorisation_system(S).
large_scale_it_system_in_fsj(S) :-
    ecris_tcn_system(S).
large_scale_it_system_in_fsj(S) :-
    interoperability_framework_system(S).
schengen_information_system(S) :-
    established_by(S, 'celex:32018R1860/oj').
schengen_information_system(S) :-
    established_by(S, 'celex:32018R1861/oj').
schengen_information_system(S) :-
    established_by(S, 'celex:32018R1862/oj').
visa_information_system(S) :-
    established_by(S, 'celex:32021R1133/oj').
visa_information_system(S) :-
    established_by(S, 'celex:32021R1134/oj').
eurodac_system(S) :-
    established_by(S, 'celex:32024R1358/oj').
entry_exit_system(S) :-
    established_by(S, 'celex:32017R2226/oj').
european_travel_information_and_authorisation_system(S) :-
    established_by(S, 'celex:32018R1240/oj').
european_travel_information_and_authorisation_system(S) :-
    established_by(S, 'celex:32018R1241/oj').
ecris_tcn_system(S) :-
    established_by(S, 'celex:32019R0816/oj').
interoperability_framework_system(S) :-
    established_by(S, 'celex:32019R0817/oj').
interoperability_framework_system(S) :-
    established_by(S, 'celex:32019R0818/oj').
provenance(large_scale_it_system_in_fsj/1, 'celex:32024R1689/oj#anx_10').
provenance(schengen_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(visa_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(eurodac_system/1, 'celex:32024R1689/oj#anx_10').
provenance(entry_exit_system/1, 'celex:32024R1689/oj#anx_10').
provenance(european_travel_information_and_authorisation_system/1, 'celex:32024R1689/oj#anx_10').
provenance(ecris_tcn_system/1, 'celex:32024R1689/oj#anx_10').
provenance(interoperability_framework_system/1, 'celex:32024R1689/oj#anx_10').
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
declared(technical_documentation_for_gpai_model/1, 'technical documentation for providers of general-purpose AI models', 'celex:32024R1689/oj#anx_11').
declared(technical_documentation_for_gpai_model_with_systemic_risk/1, 'additional technical documentation for providers of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
technical_documentation_for_gpai_model(Doc) :-
    general_purpose_ai_model(Model),
    documentation_contains_general_description(Doc, Model),
    documentation_contains_detailed_description(Doc, Model).
documentation_contains_general_description(Doc, Model) :-
    documentation_contains(Doc, general_description(Model, tasks(Tasks), acceptable_use_policies(Policies), release_date(Date), distribution_methods(Methods), architecture(Arch), parameters(Params), modality(Modality), input_format(InputFmt), output_format(OutputFmt), licence(Licence))).
documentation_contains_detailed_description(Doc, Model) :-
    documentation_contains(Doc, detailed_description(Model, technical_means(Means), design_specifications(Specs), data_information(DataInfo), computational_resources(Resources), energy_consumption(Energy))).
technical_documentation_for_gpai_model_with_systemic_risk(Doc) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    documentation_contains_evaluation_strategies(Doc, Model),
    documentation_contains_adversarial_testing(Doc, Model),
    documentation_contains_system_architecture(Doc, Model).
documentation_contains_evaluation_strategies(Doc, Model) :-
    documentation_contains(Doc, evaluation_strategies(Model, evaluation_results(Results), evaluation_criteria(Criteria), metrics(Metrics), limitation_identification_methodology(Methodology))).
documentation_contains_adversarial_testing(Doc, Model) :-
    documentation_contains(Doc, adversarial_testing_measures(Model, internal_testing(Internal), external_testing(External), model_adaptations(Adaptations))).
documentation_contains_system_architecture(Doc, Model) :-
    documentation_contains(Doc, system_architecture(Model, software_components(Components), integration_description(Integration))).
documentation_contains(Doc, Content) :-
    
    true.
provenance(technical_documentation_for_gpai_model/1, 'celex:32024R1689/oj#anx_11').
provenance(technical_documentation_for_gpai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(transparency_information/1, 'transparency information referred to in Annex XII', 'celex:32024R1689/oj#anx_12').
declared(general_description/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(development_description/1, 'description of elements and development process', 'celex:32024R1689/oj#anx_12').
declared(intended_tasks/1, 'tasks the model is intended to perform', 'celex:32024R1689/oj#anx_12').
declared(integrable_system_types/1, 'type and nature of AI systems into which model can be integrated', 'celex:32024R1689/oj#anx_12').
declared(acceptable_use_policies/1, 'acceptable use policies applicable', 'celex:32024R1689/oj#anx_12').
declared(release_date/1, 'date of release', 'celex:32024R1689/oj#anx_12').
declared(distribution_methods/1, 'methods of distribution', 'celex:32024R1689/oj#anx_12').
declared(interaction_with_external_hardware_software/1, 'how the model interacts with hardware or software not part of the model', 'celex:32024R1689/oj#anx_12').
declared(relevant_software_versions/1, 'versions of relevant software related to the use of the model', 'celex:32024R1689/oj#anx_12').
declared(architecture/1, 'architecture of the model', 'celex:32024R1689/oj#anx_12').
declared(number_of_parameters/1, 'number of parameters', 'celex:32024R1689/oj#anx_12').
declared(input_modality/1, 'modality of inputs', 'celex:32024R1689/oj#anx_12').
declared(output_modality/1, 'modality of outputs', 'celex:32024R1689/oj#anx_12').
declared(input_format/1, 'format of inputs', 'celex:32024R1689/oj#anx_12').
declared(output_format/1, 'format of outputs', 'celex:32024R1689/oj#anx_12').
declared(model_licence/1, 'licence for the model', 'celex:32024R1689/oj#anx_12').
declared(technical_means_for_integration/1, 'technical means required for integration into AI systems', 'celex:32024R1689/oj#anx_12').
declared(maximum_input_size/1, 'maximum size of inputs', 'celex:32024R1689/oj#anx_12').
declared(maximum_output_size/1, 'maximum size of outputs', 'celex:32024R1689/oj#anx_12').
declared(training_data_info/1, 'information on data used for training', 'celex:32024R1689/oj#anx_12').
declared(testing_data_info/1, 'information on data used for testing', 'celex:32024R1689/oj#anx_12').
declared(validation_data_info/1, 'information on data used for validation', 'celex:32024R1689/oj#anx_12').
declared(data_type/1, 'type of data', 'celex:32024R1689/oj#anx_12').
declared(data_provenance/1, 'provenance of data', 'celex:32024R1689/oj#anx_12').
declared(curation_methodologies/1, 'curation methodologies', 'celex:32024R1689/oj#anx_12').
transparency_information(I) :-
    general_description(I),
    development_description(I).
general_description(I) :-
    intended_tasks(I),
    integrable_system_types(I),
    acceptable_use_policies(I),
    release_date(I),
    distribution_methods(I),
    interaction_with_external_hardware_software(I),
    relevant_software_versions(I),
    architecture(I),
    number_of_parameters(I),
    input_modality(I),
    output_modality(I),
    input_format(I),
    output_format(I),
    model_licence(I).
development_description(I) :-
    technical_means_for_integration(I),
    input_modality(I),
    output_modality(I),
    input_format(I),
    output_format(I),
    maximum_input_size(I),
    maximum_output_size(I),
    training_data_info(I),
    testing_data_info(I),
    validation_data_info(I),
    data_type(I),
    data_provenance(I),
    curation_methodologies(I).
provenance(transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(development_description/1, 'celex:32024R1689/oj#anx_12').
provenance(intended_tasks/1, 'celex:32024R1689/oj#anx_12').
provenance(integrable_system_types/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date/1, 'celex:32024R1689/oj#anx_12').
provenance(distribution_methods/1, 'celex:32024R1689/oj#anx_12').
provenance(interaction_with_external_hardware_software/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture/1, 'celex:32024R1689/oj#anx_12').
provenance(number_of_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_modality/1, 'celex:32024R1689/oj#anx_12').
provenance(output_modality/1, 'celex:32024R1689/oj#anx_12').
provenance(input_format/1, 'celex:32024R1689/oj#anx_12').
provenance(output_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(maximum_input_size/1, 'celex:32024R1689/oj#anx_12').
provenance(maximum_output_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(testing_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(validation_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(data_type/1, 'celex:32024R1689/oj#anx_12').
provenance(data_provenance/1, 'celex:32024R1689/oj#anx_12').
provenance(curation_methodologies/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(systemic_risk_designation_criteria/1, 'criteria for designating general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_13').
systemic_risk_designation_criteria(criterion(parameters, number_of_parameters)).
systemic_risk_designation_criteria(criterion(data_set, quality_or_size)).
systemic_risk_designation_criteria(criterion(computation, amount_used_for_training)).
systemic_risk_designation_criteria(criterion(modalities, input_and_output)).
systemic_risk_designation_criteria(criterion(capabilities, benchmarks_and_evaluations)).
systemic_risk_designation_criteria(criterion(internal_market_impact, high_impact_due_to_reach)).
systemic_risk_designation_criteria(criterion(end_users, number_of_registered_end_users)).
provenance(systemic_risk_designation_criteria/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

