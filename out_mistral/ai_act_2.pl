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
% There are 606 of them, listed as :- dynamic below.
% ============================================================

:- discontiguous declared/3.
:- discontiguous access_request_states/2.
:- discontiguous access_restricted_to_commission_and_national_authorities/1.
:- discontiguous access_to_file/1.
:- discontiguous access_to_models_subject_to_ip_and_trade_secret_protection/1.
:- discontiguous access_to_source_code/2.
:- discontiguous accompanied_by_instructions_for_use/1.
:- discontiguous action_relating_to/2.
:- discontiguous action_taken_by/2.
:- discontiguous add_use_case/1.
:- discontiguous additional_information_systemic_risk/1.
:- discontiguous additional_sandbox_may_be_established/1.
:- discontiguous adequate_corrective_action_taken/3.
:- discontiguous adequate_number_of_competent_personnel/1.
:- discontiguous adherence_limited_to_obligations/2.
:- discontiguous administrative_fine/2.
:- discontiguous administrative_fine_amount/3.
:- discontiguous adopting_delegated_act/2.
:- discontiguous adopting_delegated_acts/1.
:- discontiguous adopting_delegated_acts/2.
:- discontiguous adopting_delegated_acts_concerning_ai_safety_components/1.
:- discontiguous adopting_detailed_measures/1.
:- discontiguous adopting_detailed_measures_for_security_equipment/1.
:- discontiguous adopting_implementing_act/2.
:- discontiguous adopting_implementing_acts_pursuant_to/2.
:- discontiguous adverse_impact_considered_by_person/2.
:- discontiguous adverse_impact_on_minors_considered/1.
:- discontiguous advises_and_supports_ai_office/1.
:- discontiguous advises_board_and_commission/1.
:- discontiguous advisory_forum/1.
:- discontiguous advisory_forum_co_chair/1.
:- discontiguous affixes_ce_marking/2.
:- discontiguous ai_literacy_measure/2.
:- discontiguous ai_office_attends_without_voting/0.
:- discontiguous ai_office_establishes_conflict_of_interest_systems/1.
:- discontiguous ai_office_has_market_surveillance_powers/1.
:- discontiguous ai_office_makes_list_publicly_available/1.
:- discontiguous ai_office_must_develop_template/1.
:- discontiguous ai_office_shall_encourage_codes_of_practice/0.
:- discontiguous ai_office_supplies_information/2.
:- discontiguous ai_regulatory_sandbox_operational_by/2.
:- discontiguous ai_system_based_on_model/2.
:- discontiguous ai_system_covered_by_annex_3/1.
:- discontiguous ai_system_developed_for_public_interest/1.
:- discontiguous ai_system_identified_in_declaration/2.
:- discontiguous ai_system_in_product/2.
:- discontiguous ai_system_involves_personal_data_processing/1.
:- discontiguous ai_system_presenting_risk/1.
:- discontiguous ai_system_safety_component/1.
:- discontiguous ai_system_safety_component_lifts_directive/1.
:- discontiguous ai_system_safety_component_of_ai_act/1.
:- discontiguous alert_from_to/3.
:- discontiguous alerts_ai_office_of_systemic_risks/1.
:- discontiguous alias/2.
:- discontiguous all_ai_systems_concerned/2.
:- discontiguous amend_annex_3/1.
:- discontiguous amended_annex_i/1.
:- discontiguous amendment_does_not_decrease_level_of_protection/1.
:- discontiguous amendment_ensures_consistency_with_delegated_acts/1.
:- discontiguous amendment_shall_take_into_account/2.
:- discontiguous amendment_takes_account_of_market_and_technological_developments/1.
:- discontiguous amendment_to_conditions/1.
:- discontiguous amount_of_computation_for_training/1.
:- discontiguous annex_3_point_1/1.
:- discontiguous annex_3_point_1_a_system/1.
:- discontiguous annex_3_point_2_to_8/1.
:- discontiguous annex_3_point_6/1.
:- discontiguous annex_3_point_7/1.
:- discontiguous annex_3_point_8/1.
:- discontiguous annex_i_point_68_added/1.
:- discontiguous annex_i_point_68_refers_to_ai_act/1.
:- discontiguous annual_assessment_cycle/1.
:- discontiguous annual_reports_contain_progress_results_best_practices/1.
:- discontiguous annual_reports_exclude_sensitive_operational_data/1.
:- discontiguous annually/1.
:- discontiguous appeal_procedure_available/1.
:- discontiguous applicable_notified_body/1.
:- discontiguous application_accompanied_by_accreditation_certificate/1.
:- discontiguous application_accompanied_by_description/1.
:- discontiguous application_for_quality_management_system/1.
:- discontiguous application_for_technical_documentation/1.
:- discontiguous application_in_partnership/1.
:- discontiguous application_includes_authorised_representative_name_address/1.
:- discontiguous applies_from/2.
:- discontiguous apply_procedure_regulation_1025_2012/1.
:- discontiguous appointed_independent_expert/1.
:- discontiguous appropriate/1.
:- discontiguous appropriate_checks_performed/2.
:- discontiguous appropriate_period/2.
:- discontiguous appropriate_technical_organisational_measures/1.
:- discontiguous appropriate_type_and_degree_of_transparency/1.
:- discontiguous art_79_par_5_to_9_apply/2.
:- discontiguous article_57_does_not_affect_other_sandboxes/1.
:- discontiguous article_5_of_regulation_182_2011_applies/0.
:- discontiguous ascertains_non_compliance/2.
:- discontiguous assessment_and_monitoring_by_national_accreditation_body/1.
:- discontiguous attempted_all_means/1.
:- discontiguous authorisation_deemed_justified/1.
:- discontiguous authorisation_for_derogation/2.
:- discontiguous authorisation_granted_on_objective_evidence/1.
:- discontiguous authorisation_only_if_compliant/2.
:- discontiguous authorisation_requested_during_or_after_use/1.
:- discontiguous authorisation_required/1.
:- discontiguous authorised_representative_provides_access/3.
:- discontiguous authorised_representative_supplies_information/2.
:- discontiguous authorised_to_carry_out_notified_body_activities/1.
:- discontiguous automatic_recording_of_events/1.
:- discontiguous balanced_commercial_non_commercial/1.
:- discontiguous balanced_sme_other_undertakings/1.
:- discontiguous balanced_stakeholder_representation/1.
:- discontiguous based_on_information_in_possession/2.
:- discontiguous based_on_model/2.
:- discontiguous based_on_sensitive_or_protected_attributes/1.
:- discontiguous before_making_available_on_market/2.
:- discontiguous before_placing_on_market/1.
:- discontiguous before_placing_on_market_or_putting_into_service/1.
:- discontiguous before_putting_into_service_or_using/1.
:- discontiguous benchmarks_and_evaluations_of_capabilities/1.
:- discontiguous binding_in_entirety/1.
:- discontiguous biometric_categorisation_law_enforcement/1.
:- discontiguous biometric_related/1.
:- discontiguous board/1.
:- discontiguous board_adco_for_regulation/1.
:- discontiguous board_chair/1.
:- discontiguous board_convenes_meetings/1.
:- discontiguous board_market_surveillance_subgroup/1.
:- discontiguous board_member_state/1.
:- discontiguous board_notifying_authorities_subgroup/1.
:- discontiguous board_objective_impartial/1.
:- discontiguous board_observer/1.
:- discontiguous board_prepares_agenda/1.
:- discontiguous board_representative/2.
:- discontiguous board_representative_competences/1.
:- discontiguous board_representative_designation_period/2.
:- discontiguous board_representative_empowered_coordination/1.
:- discontiguous board_representative_renewable_once/1.
:- discontiguous board_rules_adopted_by_two_thirds_majority/0.
:- discontiguous board_rules_of_procedure/1.
:- discontiguous board_secretariat/1.
:- discontiguous board_single_contact_point/1.
:- discontiguous board_stakeholder_contact_point/1.
:- discontiguous board_standing_subgroup/1.
:- discontiguous board_temporary_subgroup/1.
:- discontiguous bodies_notified_by/2.
:- discontiguous branch_in_union/1.
:- discontiguous brought_into_conformity/1.
:- discontiguous can_be_used_for/2.
:- discontiguous cannot_access_information/2.
:- discontiguous ce_marking_affixed/1.
:- discontiguous ce_marking_followed_by_notified_body_identification_number/1.
:- discontiguous ce_marking_indicates_compliance_with_other_union_law/1.
:- discontiguous ce_marking_on_packaging_or_documentation/1.
:- discontiguous ce_marking_subject_to_general_principles/1.
:- discontiguous ce_marking_visible_legible_indelible/1.
:- discontiguous certificate_and_annexes_contain_evaluation_and_control_information/1.
:- discontiguous certificate_contains_examination_conclusions/1.
:- discontiguous certificate_contains_identification_data/1.
:- discontiguous certificate_contains_validity_conditions/1.
:- discontiguous certificate_drawn_up_in_language/2.
:- discontiguous certificate_extension_period/2.
:- discontiguous certificate_indicates_provider_name_address/1.
:- discontiguous certificate_refused_when_not_in_conformity/1.
:- discontiguous certificate_remains_valid_suspended_restricted/1.
:- discontiguous certificate_remains_valid_withdrawn/1.
:- discontiguous certificate_restricted/1.
:- discontiguous certificate_suspended_or_withdrawn/1.
:- discontiguous certificate_valid/1.
:- discontiguous certificate_valid_after_cessation/1.
:- discontiguous certificate_validity_period/2.
:- discontiguous change_in_technical_documentation/2.
:- discontiguous chapter_3_section_2_requirements_apply/1.
:- discontiguous classified_as_non_high_risk_by_provider/1.
:- discontiguous client_remains_responsible/1.
:- discontiguous co_chair_term_years/2.
:- discontiguous codes_of_conduct_covering_specific_requirements/1.
:- discontiguous codes_of_conduct_drawn_up_by/2.
:- discontiguous codes_of_conduct_intended_for_voluntary_application/1.
:- discontiguous codes_of_conduct_may_cover_multiple_systems/1.
:- discontiguous codes_of_practice_cover_issue/2.
:- discontiguous codes_of_practice_ready_by/1.
:- discontiguous commission/1.
:- discontiguous commission_activity_under_lifts_directive/1.
:- discontiguous commission_adopts_implementing_act_post_market_monitoring_plan/0.
:- discontiguous commission_adopts_implementing_acts/1.
:- discontiguous commission_and_board_authorised_to_access_exit_reports/1.
:- discontiguous commission_communicates_decision/2.
:- discontiguous commission_communicates_preliminary_findings/2.
:- discontiguous commission_consultation_on_objection/1.
:- discontiguous commission_consults_board_and_stakeholders/0.
:- discontiguous commission_decides_justification/1.
:- discontiguous commission_decides_justification/2.
:- discontiguous commission_decision_equivalent_capabilities/1.
:- discontiguous commission_designates_ex_officio/1.
:- discontiguous commission_designates_on_qualified_alert/1.
:- discontiguous commission_empowered_to_adopt_delegated_acts_to_add_conditions/0.
:- discontiguous commission_empowered_to_amend_annex_4/0.
:- discontiguous commission_empowered_to_amend_annex_v/0.
:- discontiguous commission_enters_into_consultation/1.
:- discontiguous commission_entrusts_implementation_to_ai_office/1.
:- discontiguous commission_evaluates_national_measures/1.
:- discontiguous commission_facilitates_exchange_of_experience/0.
:- discontiguous commission_finds_intentional_or_negligent_infringement/2.
:- discontiguous commission_guidelines_simplified_qms/1.
:- discontiguous commission_has_exclusive_powers/1.
:- discontiguous commission_is_controller_of_eu_database/0.
:- discontiguous commission_maintains_designation/1.
:- discontiguous commission_makes_list_of_single_points_of_contact_publicly_available/0.
:- discontiguous commission_may_adopt_common_rules_if_code_inadequate/0.
:- discontiguous commission_may_adopt_implementing_acts_approving_codes/0.
:- discontiguous commission_may_provide_support/1.
:- discontiguous commission_must_adopt_delegated_acts_to_delete_conditions/0.
:- discontiguous commission_proactively_coordinates_with_national_authorities/1.
:- discontiguous commission_provides_guidelines/0.
:- discontiguous commission_provides_support_for_eu_database/0.
:- discontiguous commission_provides_template/1.
:- discontiguous commission_publishes_annual_reports/1.
:- discontiguous commission_reassesses_designation/1.
:- discontiguous commission_requests_evidence_of_best_efforts/1.
:- discontiguous commission_takes_annual_reports_into_account/1.
:- discontiguous commission_transmits_information_to_board/0.
:- discontiguous commitments_binding/2.
:- discontiguous committee_assists_commission/1.
:- discontiguous committee_within_meaning_of_regulation_182_2011/1.
:- discontiguous common_principles_on_eligibility_selection/1.
:- discontiguous common_principles_on_procedures/1.
:- discontiguous common_principles_on_terms_conditions/1.
:- discontiguous common_specification_adopted/1.
:- discontiguous communicate_grounds_to_other_member_states/1.
:- discontiguous competent_authorities_informed_of_alteration/2.
:- discontiguous competent_authority_provides_guidance_on_regulatory_expectations/1.
:- discontiguous competent_authority_provides_guidance_supervision_support/1.
:- discontiguous competent_personnel_expertise/2.
:- discontiguous complainants_associated_with_proceedings/1.
:- discontiguous complaint/1.
:- discontiguous complaint_describes_relevant_facts/1.
:- discontiguous complaint_duly_reasoned/1.
:- discontiguous complaint_grounds/2.
:- discontiguous complaint_handled_per_procedures/2.
:- discontiguous complaint_includes_other_relevant_information/1.
:- discontiguous complaint_includes_own_initiative_information/1.
:- discontiguous complaint_indicates_point_of_contact/2.
:- discontiguous complaint_indicates_provisions_concerned/1.
:- discontiguous complaint_states_reason_for_infringement/1.
:- discontiguous complaint_submitted_to/2.
:- discontiguous complaint_taken_into_account/2.
:- discontiguous complete_detailed_description_kept/1.
:- discontiguous compliant_with/2.
:- discontiguous compliant_with_regulation/1.
:- discontiguous complies_with/2.
:- discontiguous complies_with_accessibility_requirements/2.
:- discontiguous complies_with_article_17/1.
:- discontiguous complies_with_financial_services_internal_governance/1.
:- discontiguous complies_with_safeguards_and_conditions/1.
:- discontiguous component_of_large_scale_it_system/2.
:- discontiguous concerning/2.
:- discontiguous concerning_ai_safety_components/1.
:- discontiguous concerns/2.
:- discontiguous condition_for_common_specification/1.
:- discontiguous confidential_information_exchange/2.
:- discontiguous conformity_assessment_based_on_internal_control/1.
:- discontiguous conformity_assessment_by_notified_body/1.
:- discontiguous conformity_assessment_carried_out_by_provider/1.
:- discontiguous conformity_assessment_involves_notified_body/1.
:- discontiguous conformity_assessment_procedure/1.
:- discontiguous conformity_assessment_without_undue_delay/1.
:- discontiguous conforms_to_requirements/1.
:- discontiguous consent_dated_and_documented/1.
:- discontiguous considered_provider/1.
:- discontiguous considers_nonconforming/2.
:- discontiguous consulted_national_public_authority/2.
:- discontiguous consumer_protection_product_safety_rules_unaffected/0.
:- discontiguous contains/2.
:- discontiguous contains_ai_system_name_and_type/1.
:- discontiguous contains_conformity_statement/1.
:- discontiguous contains_harmonised_standards_or_common_specification_references/1.
:- discontiguous contains_notified_body_details/1.
:- discontiguous contains_personal_data_compliance_statement/1.
:- discontiguous contains_place_date_signature/1.
:- discontiguous contains_provider_or_representative_name_and_address/1.
:- discontiguous contains_sole_responsibility_statement/1.
:- discontiguous continues_to_learn_after_placement/1.
:- discontiguous contributes_to_tools_and_methodologies/1.
:- discontiguous contributes_to_tools_and_templates/1.
:- discontiguous coordination_and_cooperation_put_in_place/1.
:- discontiguous coordination_ensured/2.
:- discontiguous copy_given_to_subject_or_representative/1.
:- discontiguous copyright_compliance_policy/1.
:- discontiguous corrective_action_all_union_market/2.
:- discontiguous corrective_action_ensures_compliance/2.
:- discontiguous corrective_action_period/2.
:- discontiguous council/1.
:- discontiguous court_may_cancel_reduce_or_increase_fine/1.
:- discontiguous court_of_justice_unlimited_jurisdiction/1.
:- discontiguous criminal_offence_referred_to_in_art_5/1.
:- discontiguous criterion_autonomy_human_override/1.
:- discontiguous criterion_corrigibility_reversibility/1.
:- discontiguous criterion_dependence_on_outcome/1.
:- discontiguous criterion_existing_union_law_prevention/1.
:- discontiguous criterion_existing_union_law_redress/1.
:- discontiguous criterion_extent_of_use/1.
:- discontiguous criterion_for_systemic_risk_designation/2.
:- discontiguous criterion_imbalance_of_power/1.
:- discontiguous criterion_intended_purpose/1.
:- discontiguous criterion_magnitude_likelihood_benefit/1.
:- discontiguous criterion_nature_amount_data/1.
:- discontiguous criterion_past_harm_or_concerns/1.
:- discontiguous criterion_potential_extent_harm/1.
:- discontiguous cumulative_training_computation_exceeds_threshold/1.
:- discontiguous data_governance_practice_assumptions/1.
:- discontiguous data_governance_practice_availability_assessment/1.
:- discontiguous data_governance_practice_bias_examination/1.
:- discontiguous data_governance_practice_bias_mitigation/1.
:- discontiguous data_governance_practice_data_collection/1.
:- discontiguous data_governance_practice_data_gaps/1.
:- discontiguous data_governance_practice_design_choices/1.
:- discontiguous data_governance_practice_preparation_operations/1.
:- discontiguous data_necessary_for_requirements/1.
:- discontiguous data_set_appropriate_statistical_properties/1.
:- discontiguous data_set_complete/1.
:- discontiguous data_set_contextual_characteristics/1.
:- discontiguous data_set_free_of_errors/1.
:- discontiguous data_set_relevant/1.
:- discontiguous data_set_sufficiently_representative/1.
:- discontiguous data_under_control_of_prospective_provider/1.
:- discontiguous deadline_date/2.
:- discontiguous decision_based_on_ai_output/2.
:- discontiguous decision_or_objection_indicates_grounds_and_challenge/1.
:- discontiguous decision_taken_by_deployer/2.
:- discontiguous decisions_based_only_on_commented_elements/1.
:- discontiguous declaration_of_interests_publicly_available/1.
:- discontiguous declaration_refers_to_ai_system/2.
:- discontiguous dedicated_procedures_established/1.
:- discontiguous delegated_act_enters_into_force/1.
:- discontiguous delegation_period/2.
:- discontiguous deletion_does_not_decrease_protection/1.
:- discontiguous demonstrates_conformity/3.
:- discontiguous demonstrates_conformity_with_criteria/2.
:- discontiguous demonstrates_conformity_with_requirements/3.
:- discontiguous deployer_aware_of_automation_bias/1.
:- discontiguous deployer_can_use_directly/1.
:- discontiguous deployer_enabled_to_decide_not_to_use/1.
:- discontiguous deployer_enabled_to_interpret_output/1.
:- discontiguous deployer_enabled_to_intervene_or_interrupt/1.
:- discontiguous deployer_enabled_to_monitor_operation/1.
:- discontiguous deployer_enabled_to_understand_capacities_limitations/1.
:- discontiguous deployer_obligation_applies_to_first_use/1.
:- discontiguous deployer_uses/2.
:- discontiguous derogation_does_not_exempt_other_obligations/1.
:- discontiguous derogation_limited_for_harmonisation_products/1.
:- discontiguous description_of_model_elements_and_development/1.
:- discontiguous designated_representatives/2.
:- discontiguous designated_union_ai_testing_support_structure/1.
:- discontiguous designed_for_effective_oversight/1.
:- discontiguous detailed_description_of_elements_and_development/1.
:- discontiguous detailed_description_of_model_elements/1.
:- discontiguous detailed_information_monitoring_functioning_control/1.
:- discontiguous developed_by/2.
:- discontiguous developed_by_public_authority_or_person/1.
:- discontiguous developments_in_technology/1.
:- discontiguous digital_ce_marking/1.
:- discontiguous digital_ce_marking_accessible/1.
:- discontiguous direct_connection_with_financial_services/1.
:- discontiguous direct_use_by_deployers/1.
:- discontiguous directly_applicable/1.
:- discontiguous directly_or_through_representatives/2.
:- discontiguous documentation_art_18_par_1/1.
:- discontiguous documentation_referred_to_in_article_18/1.
:- discontiguous documents_concerning_subcontractor_assessment/1.
:- discontiguous does_not_seek_or_take_instructions/1.
:- discontiguous draws_up_eu_declaration_of_conformity/2.
:- discontiguous duly_informed/2.
:- discontiguous duly_reasoned/1.
:- discontiguous economic_operator_reference_includes/1.
:- discontiguous edps_acts_as_authority/1.
:- discontiguous edps_acts_as_competent_authority_for_union_institutions/0.
:- discontiguous edps_exercises_roles_of_national_competent_authority/1.
:- discontiguous edps_may_establish_sandbox/1.
:- discontiguous educational_or_vocational_training_institution/1.
:- discontiguous effect_on_health_safety_fundamental_rights/1.
:- discontiguous effective_human_oversight/1.
:- discontiguous effective_monitoring_mechanisms/1.
:- discontiguous effective_proportionate_dissuasive/1.
:- discontiguous effectively_fulfilled_by_non_personal_data/1.
:- discontiguous eligibility_selection_criteria_transparent_fair/1.
:- discontiguous emotion_recognition_medical_or_safety/1.
:- discontiguous empowers/2.
:- discontiguous enforcement_structure/1.
:- discontiguous ensured_through_built_in_measures/1.
:- discontiguous ensured_through_deployer_measures/1.
:- discontiguous ensures_confidentiality_of_information/1.
:- discontiguous enters_into_force/1.
:- discontiguous entry_exit_system/1.
:- discontiguous environmental_sustainability/1.
:- discontiguous equivalent_national_coverage/2.
:- discontiguous equivalent_protection_procedures/1.
:- discontiguous established_for_specific_issue/1.
:- discontiguous ethical_review_not_prejudiced/1.
:- discontiguous eu_database/1.
:- discontiguous eu_database_complies_with_accessibility_requirements/0.
:- discontiguous eu_database_contains/2.
:- discontiguous eu_database_contains_personal_data_only_as_necessary/1.
:- discontiguous eu_database_information_accessible_only_to/2.
:- discontiguous eu_database_information_publicly_accessible/1.
:- discontiguous eu_database_set_up_and_maintained_by_commission/0.
:- discontiguous eu_declaration_identifies_applicable_legislation/2.
:- discontiguous eu_declaration_of_conformity_contains/2.
:- discontiguous eu_declaration_of_conformity_contains_information/2.
:- discontiguous eu_declaration_of_conformity_identifies/2.
:- discontiguous eu_declaration_of_conformity_states_compliance/2.
:- discontiguous eu_declaration_of_conformity_translated/2.
:- discontiguous eurodac/1.
:- discontiguous european_artificial_intelligence_board/1.
:- discontiguous european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons/1.
:- discontiguous european_data_protection_supervisor/1.
:- discontiguous european_economic_and_social_committee/1.
:- discontiguous european_parliament/1.
:- discontiguous european_travel_information_and_authorisation_system/1.
:- discontiguous evaluation_based_on_conditions/2.
:- discontiguous evaluation_of_classification/2.
:- discontiguous evaluation_of_compliance/2.
:- discontiguous evaluation_of_large_scale_it_system/1.
:- discontiguous evaluation_under_article_79/1.
:- discontiguous examines_technical_documentation/2.
:- discontiguous exception_from_union_or_national_law/1.
:- discontiguous exceptional_costs_recoverable/1.
:- discontiguous exceptional_reasons/1.
:- discontiguous exempt_from_authorised_representative_obligation/1.
:- discontiguous exempt_from_high_risk_classification/1.
:- discontiguous exempt_from_information_for_downstream_providers_obligation/2.
:- discontiguous exempt_from_informing_ai_interaction/1.
:- discontiguous exempt_from_informing_biometric_categorisation/1.
:- discontiguous exempt_from_informing_emotion_recognition/1.
:- discontiguous exempt_from_marking_synthetic_content/1.
:- discontiguous exempt_from_notification/2.
:- discontiguous exempt_from_technical_documentation_obligation/2.
:- discontiguous exempt_separate_verification_law_enforcement/1.
:- discontiguous exempt_separate_verification_migration_border_asylum/1.
:- discontiguous existing_documentation_and_procedures_required/1.
:- discontiguous existing_governance_conformity_enforcement/1.
:- discontiguous exit_report_may_be_made_publicly_available/1.
:- discontiguous exit_reports_taken_positively_into_account/1.
:- discontiguous explanation_of_ai_role/2.
:- discontiguous explanation_of_main_elements/2.
:- discontiguous extension_of_scope_notification/1.
:- discontiguous facilitates_consistency_coordination/2.
:- discontiguous failed_to_comply_with_measure/2.
:- discontiguous failed_to_comply_with_request/2.
:- discontiguous failed_to_make_available_access/2.
:- discontiguous fails_to_take_corrective_measures/2.
:- discontiguous fair_gender_and_geographical_representation/1.
:- discontiguous financial_institution_provider/1.
:- discontiguous financial_institution_quality_management_deemed_fulfilled/1.
:- discontiguous financial_technical_human_resources/1.
:- discontiguous fine_amount_limit/2.
:- discontiguous fine_amount_not_exceeding/2.
:- discontiguous fine_amount_within_cap/4.
:- discontiguous fine_cap_eur/2.
:- discontiguous fine_cap_higher_of/2.
:- discontiguous fine_cap_percent_turnover/3.
:- discontiguous fine_for_general_purpose_ai_model_provider/2.
:- discontiguous fine_reduced_for_sme/2.
:- discontiguous fines_contribute_to_union_budget/1.
:- discontiguous fines_do_not_affect_effective_operation/1.
:- discontiguous fines_effective_proportionate_dissuasive/1.
:- discontiguous fines_imposed_by_courts_or_bodies/1.
:- discontiguous first_years_of_application/1.
:- discontiguous formal_non_compliance/1.
:- discontiguous found_high_risk_in_evaluation/2.
:- discontiguous four_year_evaluation_cycle/1.
:- discontiguous free_and_open_source_licence/1.
:- discontiguous from_competent_authority/2.
:- discontiguous full_access_to_documentation/2.
:- discontiguous functionally_separate_isolated_protected_environment/1.
:- discontiguous functioning_of_ai_office/1.
:- discontiguous fundamental_rights_authority/1.
:- discontiguous fundamental_rights_impact_assessment/1.
:- discontiguous fundamental_rights_impact_assessment_complements_dpia/1.
:- discontiguous fundamental_rights_impact_assessment_completed/1.
:- discontiguous fundamental_rights_impact_assessment_element/1.
:- discontiguous further_sharing_in_accordance_with_union_data_protection_law/1.
:- discontiguous general_description_of_ai_system/1.
:- discontiguous general_description_of_model/1.
:- discontiguous general_purpose_ai_model/1.
:- discontiguous general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous general_purpose_ai_system_high_risk_purpose/1.
:- discontiguous general_purpose_ai_system_usable_by_deployers/1.
:- discontiguous generally_acknowledged_state_of_the_art/1.
:- discontiguous group_of_notified_bodies/1.
:- discontiguous guidelines_must_take_due_account_of/1.
:- discontiguous guidelines_topic/1.
:- discontiguous harmonised_standard_covers/2.
:- discontiguous harmonised_standards_and_common_specifications/1.
:- discontiguous has_access_to/2.
:- discontiguous has_partner_or_linked_enterprise/1.
:- discontiguous high_impact_capabilities_evaluated/1.
:- discontiguous high_impact_on_internal_market_due_to_reach/1.
:- discontiguous high_risk_ai_system/1.
:- discontiguous high_risk_ai_system_annex_3_excluding_point_2/1.
:- discontiguous high_risk_ai_system_annex_3_point_1_6_7/1.
:- discontiguous high_risk_ai_system_annex_3_point_2/1.
:- discontiguous high_risk_ai_system_conformity_assessment_context/1.
:- discontiguous high_risk_ai_system_in_product/2.
:- discontiguous high_risk_biometric_remote_identification/1.
:- discontiguous human_oversight_measures/1.
:- discontiguous human_oversight_measures_description/1.
:- discontiguous identified_by_member_state/2.
:- discontiguous immediately_inform/3.
:- discontiguous implementing_act_adopted/1.
:- discontiguous implementing_act_concerning_ai_safety_components/1.
:- discontiguous implementing_act_examination_procedure/0.
:- discontiguous implementing_act_provisions_on_alerts_and_assistance/1.
:- discontiguous implementing_acts_adopted_under_examination_procedure/1.
:- discontiguous implementing_acts_include_common_principles/1.
:- discontiguous importer_complied_obligations/1.
:- discontiguous in_accordance_with_article_47/2.
:- discontiguous in_accordance_with_article_48/2.
:- discontiguous in_addition_to_or_instead_of/1.
:- discontiguous in_conformity_with/2.
:- discontiguous in_conformity_with_requirements/1.
:- discontiguous in_partnership_with_deployers/2.
:- discontiguous in_union/1.
:- discontiguous inadequate_corrective_action/2.
:- discontiguous inclusion_of_new_systems/1.
:- discontiguous independent_advice/1.
:- discontiguous indicates_conformity_with_regulation/1.
:- discontiguous indicates_description_of_facts_and_reasons/1.
:- discontiguous indicates_on_system_or_packaging_or_documentation/3.
:- discontiguous indicates_other_relevant_information/1.
:- discontiguous indicates_point_of_contact/2.
:- discontiguous inform_and_cooperate_fundamental_rights/2.
:- discontiguous inform_applicant_within_three_months/2.
:- discontiguous inform_commission/2.
:- discontiguous inform_commission_and_member_states/2.
:- discontiguous inform_commission_and_member_states/3.
:- discontiguous inform_notified_body/2.
:- discontiguous information_and_training_provided/1.
:- discontiguous information_concise_clear_relevant_understandable/1.
:- discontiguous information_conforms_to_accessibility_requirements/1.
:- discontiguous information_for_downstream_providers/1.
:- discontiguous information_includes_details/2.
:- discontiguous information_obtained/2.
:- discontiguous information_on_fines_communicated_to_board/1.
:- discontiguous information_provided_at_first_interaction_or_exposure/1.
:- discontiguous information_provided_clear_distinguishable_manner/1.
:- discontiguous information_related_to_model/1.
:- discontiguous informed_about_conditions_duration/1.
:- discontiguous informed_about_identification_number_contact/1.
:- discontiguous informed_about_nature_objectives_inconvenience/1.
:- discontiguous informed_about_reversal_arrangements/1.
:- discontiguous informed_about_rights_guarantees/1.
:- discontiguous informed_consent_obtained/2.
:- discontiguous infringed_relevant_provisions/1.
:- discontiguous initiating_authority/2.
:- discontiguous input_output_modalities/1.
:- discontiguous instructions_concise_complete_correct_clear/1.
:- discontiguous instructions_contain_accuracy_robustness_cybersecurity_metrics/1.
:- discontiguous instructions_contain_characteristics_capabilities_limitations/1.
:- discontiguous instructions_contain_computational_hardware_resources/1.
:- discontiguous instructions_contain_expected_lifetime/1.
:- discontiguous instructions_contain_human_oversight_measures/1.
:- discontiguous instructions_contain_information_to_interpret_output/1.
:- discontiguous instructions_contain_input_data_specifications/1.
:- discontiguous instructions_contain_intended_purpose/1.
:- discontiguous instructions_contain_known_foreseeable_circumstances_impacting_accuracy/1.
:- discontiguous instructions_contain_log_mechanisms_description/1.
:- discontiguous instructions_contain_maintenance_care_measures/1.
:- discontiguous instructions_contain_performance_specific_persons_or_groups/1.
:- discontiguous instructions_contain_predetermined_changes/1.
:- discontiguous instructions_contain_provider_identity_and_contact/1.
:- discontiguous instructions_contain_risk_circumstances_health_safety_fundamental_rights/1.
:- discontiguous instructions_contain_technical_capabilities_for_explaining_output/1.
:- discontiguous instructions_for_use_exempt/1.
:- discontiguous instructions_relevant_accessible_comprehensible/1.
:- discontiguous integration_achieves_equivalent_protection/1.
:- discontiguous intellectual_property_and_trade_secrets_protected/1.
:- discontiguous intended_for_area_in_annex_3/1.
:- discontiguous intended_to_interact_directly_with_natural_persons/1.
:- discontiguous interface_allows_stakeholder_interaction/1.
:- discontiguous intermediary_services_liability_provisions_unaffected/0.
:- discontiguous interoperability_framework/1.
:- discontiguous involved_in_application_of_regulation/1.
:- discontiguous involves_personal_data_processing/1.
:- discontiguous involves_processing_of_personal_data/1.
:- discontiguous jeopardise_compliance/1.
:- discontiguous joint_investigation_coordination_support/1.
:- discontiguous judicial_independence_preserved/0.
:- discontiguous justified_national_measure/1.
:- discontiguous keep_at_disposal/2.
:- discontiguous keep_at_disposal/3.
:- discontiguous keep_for/2.
:- discontiguous keep_logs/2.
:- discontiguous known_or_estimated_energy_consumption/1.
:- discontiguous labelling_or_filtering_biometric_dataset/1.
:- discontiguous large_scale_it_system/1.
:- discontiguous law_enforcement_area/1.
:- discontiguous law_enforcement_migration_asylum_border_control_area/1.
:- discontiguous law_enforcement_processing_based_on_specific_law/1.
:- discontiguous law_enforcement_processing_subject_to_cumulative_conditions/1.
:- discontiguous lawyer_supplies_information/2.
:- discontiguous legal_basis_for_ai_safety_components/1.
:- discontiguous legal_person/1.
:- discontiguous licence/2.
:- discontiguous limited_application_for_harmonisation_legislation_products/1.
:- discontiguous limited_period_authorisation/1.
:- discontiguous list_in_annex_3/1.
:- discontiguous list_kept_up_to_date/1.
:- discontiguous list_of_prohibited_ai_practices/1.
:- discontiguous list_of_subsidiaries_publicly_available/1.
:- discontiguous list_of_systemic_risk_models_published/1.
:- discontiguous list_of_transparency_measures/1.
:- discontiguous list_publicly_available/1.
:- discontiguous logging_capability/1.
:- discontiguous logging_enables_recording/2.
:- discontiguous logs_as_part_of_financial_documentation/1.
:- discontiguous logs_automatically_generated/1.
:- discontiguous logs_kept_for_sandbox_duration/1.
:- discontiguous logs_referred_to_in_article_19/1.
:- discontiguous logs_under_control/2.
:- discontiguous made_all_appropriate_efforts/1.
:- discontiguous made_available_on_market/2.
:- discontiguous made_available_on_union_market/2.
:- discontiguous made_available_to_registered_business_users/2.
:- discontiguous maintains_technical_documentation_as_part_of/2.
:- discontiguous manages_or_operates/1.
:- discontiguous mandate/3.
:- discontiguous mandate_empowers_be_addressed/2.
:- discontiguous mandate_empowers_being_addressed/1.
:- discontiguous mandate_empowers_cooperate/2.
:- discontiguous mandate_empowers_cooperation/1.
:- discontiguous mandate_empowers_keep_at_disposal/2.
:- discontiguous mandate_empowers_keeping_documentation/1.
:- discontiguous mandate_empowers_provide_information/2.
:- discontiguous mandate_empowers_providing_information/1.
:- discontiguous mandate_empowers_registration/2.
:- discontiguous mandate_empowers_verification/1.
:- discontiguous mandate_empowers_verification/2.
:- discontiguous market_surveillance_authority_acts_as_notified_body/2.
:- discontiguous market_surveillance_authority_for_ai_system/2.
:- discontiguous market_surveillance_authority_has_competences_and_powers/1.
:- discontiguous market_surveillance_authority_may_request_commission/2.
:- discontiguous market_surveillance_powers_for_testing/1.
:- discontiguous may_advise_on_international_matters/1.
:- discontiguous may_allow_involvement_of_other_actors/1.
:- discontiguous may_allow_testing_in_derogation/2.
:- discontiguous may_approve_code_of_practice/1.
:- discontiguous may_ask_for_support_and_guidance/1.
:- discontiguous may_assist_ai_office_on_sandboxes/1.
:- discontiguous may_assist_in_expertise_development/1.
:- discontiguous may_be_required_to_pay_fees/2.
:- discontiguous may_call_upon_experts/2.
:- discontiguous may_collect_and_share_expertise/1.
:- discontiguous may_conduct_evaluation/2.
:- discontiguous may_contribute_to_coordination/2.
:- discontiguous may_contribute_to_guidance_documents/1.
:- discontiguous may_contribute_to_harmonisation/1.
:- discontiguous may_contribute_to_third_country_cooperation/1.
:- discontiguous may_cooperate_with_union_bodies/1.
:- discontiguous may_designate_alternative_authority/2.
:- discontiguous may_establish_sub_groups/1.
:- discontiguous may_exchange_confidential_information_with_third_countries/2.
:- discontiguous may_exercise_powers/2.
:- discontiguous may_exercise_powers_remotely/2.
:- discontiguous may_extend_provisional_validity/2.
:- discontiguous may_facilitate_common_criteria/1.
:- discontiguous may_impose_administrative_fine/2.
:- discontiguous may_initiate_structured_dialogue/2.
:- discontiguous may_integrate_post_market_monitoring_elements/1.
:- discontiguous may_integrate_testing_and_reporting_processes/2.
:- discontiguous may_invite_experts/1.
:- discontiguous may_invite_participants/1.
:- discontiguous may_invite_providers_to_adhere/1.
:- discontiguous may_issue_recommendations_and_opinions/1.
:- discontiguous may_issue_request_for_information/2.
:- discontiguous may_lodge_complaint/2.
:- discontiguous may_perform_by_designated_authorities/1.
:- discontiguous may_perform_notified_body_activities/1.
:- discontiguous may_prepare_opinions/1.
:- discontiguous may_propose_joint_activities/2.
:- discontiguous may_provide_advice_on_implementation/1.
:- discontiguous may_provide_common_rules/1.
:- discontiguous may_provide_guidance_and_advice/1.
:- discontiguous may_provide_opinions_on_qualified_alerts/1.
:- discontiguous may_receive_opinions_from_member_states/1.
:- discontiguous may_rely_on_codes_of_practice/1.
:- discontiguous may_rely_on_codes_of_practice/2.
:- discontiguous may_rely_on_previous_assessment/2.
:- discontiguous may_request_access/2.
:- discontiguous may_request_documentation/2.
:- discontiguous may_request_information/2.
:- discontiguous may_request_measures/2.
:- discontiguous may_require_modification_of_testing/1.
:- discontiguous may_support_ai_literacy/1.
:- discontiguous may_support_process/1.
:- discontiguous may_suspend_or_terminate_testing/1.
:- discontiguous may_suspend_restrict_or_withdraw_designation/1.
:- discontiguous may_suspend_testing_or_participation/1.
:- discontiguous may_take_monitoring_actions/1.
:- discontiguous may_use_documents_to_support_designation/1.
:- discontiguous measure/1.
:- discontiguous meets_all_requirements/1.
:- discontiguous meets_requirements/1.
:- discontiguous member_of_group/2.
:- discontiguous member_state_determines_conditions/2.
:- discontiguous member_state_informs_commission_and_other_member_states/2.
:- discontiguous member_state_may_authorise/1.
:- discontiguous member_state_may_introduce_more_restrictive_laws/1.
:- discontiguous member_state_notifies_commission_within_30_days/1.
:- discontiguous member_states/1.
:- discontiguous migration_asylum_border_control_context/1.
:- discontiguous minimum_logging_capability/1.
:- discontiguous minimum_period/1.
:- discontiguous misclassified_to_circumvent_requirements/2.
:- discontiguous mitigation_control_measures_for_non_eliminable_risks/1.
:- discontiguous model_architecture_information_publicly_available/1.
:- discontiguous model_provided_by/2.
:- discontiguous model_usage_information_publicly_available/1.
:- discontiguous modify_use_case/1.
:- discontiguous monitors_adherence_to_approved_codes_of_practice/1.
:- discontiguous monitors_compliance_with_regulation/1.
:- discontiguous monitors_effective_implementation_and_compliance/1.
:- discontiguous more_favourable_worker_protection_permitted/0.
:- discontiguous must_act_in_accordance_with_confidentiality_obligations/1.
:- discontiguous must_address_decision/3.
:- discontiguous must_adopt_implementing_acts/2.
:- discontiguous must_adopt_mitigation_or_suspend/2.
:- discontiguous must_adopt_rules_of_procedure/1.
:- discontiguous must_advise_and_assist/3.
:- discontiguous must_affix_ce_marking/2.
:- discontiguous must_agree_appropriate_safeguards/2.
:- discontiguous must_agree_terms_for_real_world_testing/2.
:- discontiguous must_aim_to_ensure_codes_cover_obligations/2.
:- discontiguous must_aim_to_ensure_codes_set_objectives/1.
:- discontiguous must_aim_to_ensure_regular_reporting/1.
:- discontiguous must_allocate_sufficient_resources/2.
:- discontiguous must_appoint_authorised_representative/2.
:- discontiguous must_appoint_members/2.
:- discontiguous must_assess_and_amend/2.
:- discontiguous must_assess_and_mitigate_systemic_risks/2.
:- discontiguous must_assess_and_update_competence_and_resource_requirements_annually/1.
:- discontiguous must_assess_impact_on_certificates/2.
:- discontiguous must_assess_need_for_amendment/2.
:- discontiguous must_assign_single_identification_number/2.
:- discontiguous must_assist_assessment_of_standards/1.
:- discontiguous must_associate_data_protection_authorities/1.
:- discontiguous must_avoid_unnecessary_burdens/1.
:- discontiguous must_be_established_under_national_law/2.
:- discontiguous must_be_independent_of_competitors/2.
:- discontiguous must_be_independent_of_economic_interest_operator/2.
:- discontiguous must_be_independent_of_provider/2.
:- discontiguous must_be_resilient_against_unauthorised_alteration/1.
:- discontiguous must_carry_out_assessment/2.
:- discontiguous must_carry_out_tasks_with_professional_integrity/1.
:- discontiguous must_communicate_identity_to_commission/1.
:- discontiguous must_communicate_subsequent_changes_to_commission/1.
:- discontiguous must_comply/2.
:- discontiguous must_comply_by_date/2.
:- discontiguous must_comply_with_accessibility_requirements/2.
:- discontiguous must_comply_with_registration/2.
:- discontiguous must_consider_circumstances_for_fine/1.
:- discontiguous must_consult_authorities_under_other_union_law/1.
:- discontiguous must_consult_board/1.
:- discontiguous must_consult_board_on_expert_number/1.
:- discontiguous must_consult_experts/2.
:- discontiguous must_consult_relevant_experts/1.
:- discontiguous must_convene_meetings_upon_request/3.
:- discontiguous must_cooperate_for_consistent_practices/2.
:- discontiguous must_cooperate_with_ai_office/2.
:- discontiguous must_cooperate_with_authorities/2.
:- discontiguous must_cooperate_with_competent_authorities/2.
:- discontiguous must_coordinate_and_cooperate_within_board/1.
:- discontiguous must_decide_authorisation/2.
:- discontiguous must_decide_justification/2.
:- discontiguous must_delete_data_when_no_longer_needed/2.
:- discontiguous must_demonstrate_alternative_compliance/1.
:- discontiguous must_demonstrate_alternative_compliance/2.
:- discontiguous must_demonstrate_conformity/3.
:- discontiguous must_designate_notifying_authority/1.
:- discontiguous must_designate_single_contact_point/2.
:- discontiguous must_designate_single_point_of_contact/1.
:- discontiguous must_designate_union_ai_testing_support_structures/1.
:- discontiguous must_develop_and_maintain_single_information_platform/1.
:- discontiguous must_develop_guidance/2.
:- discontiguous must_develop_guidelines/2.
:- discontiguous must_develop_single_dedicated_interface/1.
:- discontiguous must_develop_union_ai_expertise/1.
:- discontiguous must_direct_prospective_providers_to_pre_deployment_services/2.
:- discontiguous must_disclose_artificially_generated_text/2.
:- discontiguous must_disclose_deep_fake/2.
:- discontiguous must_document_and_implement_impartiality_procedures/1.
:- discontiguous must_document_assessment/2.
:- discontiguous must_draw_up_eu_declaration/2.
:- discontiguous must_draw_up_information_for_downstream_providers/2.
:- discontiguous must_draw_up_report/2.
:- discontiguous must_draw_up_rules_of_procedure/1.
:- discontiguous must_draw_up_technical_documentation/2.
:- discontiguous must_draw_up_training_content_summary/2.
:- discontiguous must_elect_co_chairs/2.
:- discontiguous must_empower_representative_coordination/2.
:- discontiguous must_enable_authorised_representative/2.
:- discontiguous must_enable_deployer_capabilities/2.
:- discontiguous must_encourage_and_facilitate_codes_of_practice/1.
:- discontiguous must_encourage_development/2.
:- discontiguous must_encourage_review_and_adaptation/1.
:- discontiguous must_ensure_adequate_cybersecurity/1.
:- discontiguous must_ensure_adequate_cybersecurity/2.
:- discontiguous must_ensure_ai_literacy/2.
:- discontiguous must_ensure_compliance/2.
:- discontiguous must_ensure_confidence_in_performance/1.
:- discontiguous must_ensure_confidentiality_systems/1.
:- discontiguous must_ensure_cooperation_between_sandbox_authorities/1.
:- discontiguous must_ensure_coordination/1.
:- discontiguous must_ensure_efficient_organisation/1.
:- discontiguous must_ensure_fair_representation/2.
:- discontiguous must_ensure_immediate_access_to_documentation/2.
:- discontiguous must_ensure_participation/2.
:- discontiguous must_ensure_representative_competences/2.
:- discontiguous must_ensure_storage_transport_conditions/2.
:- discontiguous must_ensure_storage_transport_conditions_do_not_jeopardise_compliance/2.
:- discontiguous must_ensure_technical_documentation_available_to_authorities/2.
:- discontiguous must_ensure_testing_in_real_world_conditions_in_accordance/1.
:- discontiguous must_enter_consultations/2.
:- discontiguous must_enter_data_into_eu_database/2.
:- discontiguous must_enter_into_consultation/2.
:- discontiguous must_establish_ai_regulatory_sandbox/1.
:- discontiguous must_establish_market_surveillance_authority/1.
:- discontiguous must_establish_notifying_authority/1.
:- discontiguous must_establish_post_market_monitoring_system/1.
:- discontiguous must_establish_recall_procedure/2.
:- discontiguous must_establish_risk_management_system/2.
:- discontiguous must_establish_scientific_panel/1.
:- discontiguous must_establish_standing_subgroups/1.
:- discontiguous must_evaluate_and_promote_best_practices_public_procurement/1.
:- discontiguous must_evaluate_and_report/3.
:- discontiguous must_evaluate_functioning/2.
:- discontiguous must_evaluate_impact_and_effectiveness/2.
:- discontiguous must_evaluate_national_measure/1.
:- discontiguous must_examine_technical_documentation/2.
:- discontiguous must_facilitate_ai_office_tasks/2.
:- discontiguous must_facilitate_coordination/2.
:- discontiguous must_facilitate_drawing_up_codes_of_conduct/2.
:- discontiguous must_facilitate_participation_in_standardisation/1.
:- discontiguous must_facilitate_timely_access/2.
:- discontiguous must_follow_conformity_assessment/3.
:- discontiguous must_have_legal_personality/1.
:- discontiguous must_have_liability_insurance_or_state_assumption/1.
:- discontiguous must_have_permanent_availability_of_personnel/1.
:- discontiguous must_have_personnel_with_experience_knowledge_data/1.
:- discontiguous must_have_personnel_with_experience_knowledge_requirements/1.
:- discontiguous must_have_quality_management_system/2.
:- discontiguous must_have_sufficient_internal_competences/1.
:- discontiguous must_have_sufficient_personnel_permanently_available/1.
:- discontiguous must_hold_meetings/2.
:- discontiguous must_immediately_inform_about_assumption/1.
:- discontiguous must_immediately_inform_commission/2.
:- discontiguous must_immediately_inform_of_risk_noncompliance/2.
:- discontiguous must_include_technical_documentation/2.
:- discontiguous must_indicate_identification/2.
:- discontiguous must_indicate_name_trade_name_or_trade_mark_and_address/2.
:- discontiguous must_inform/2.
:- discontiguous must_inform_about_certificate_suspension_or_withdrawal/2.
:- discontiguous must_inform_ai_office_and_board_of_establishment/1.
:- discontiguous must_inform_ai_office_of_suspension/2.
:- discontiguous must_inform_ai_office_of_termination/2.
:- discontiguous must_inform_all_authorities/2.
:- discontiguous must_inform_board/2.
:- discontiguous must_inform_board_and_other_authorities/2.
:- discontiguous must_inform_cessation/2.
:- discontiguous must_inform_commission/2.
:- discontiguous must_inform_commission_and_member_states/2.
:- discontiguous must_inform_committee_before_draft/1.
:- discontiguous must_inform_market_surveillance_authority/2.
:- discontiguous must_inform_natural_person_interacting_with_ai/2.
:- discontiguous must_inform_notifying_authority/2.
:- discontiguous must_inform_notifying_member_state/2.
:- discontiguous must_inform_objections/2.
:- discontiguous must_inform_of_emotion_recognition_or_biometric_categorisation/2.
:- discontiguous must_inform_other_notified_bodies/2.
:- discontiguous must_inform_provider_or_importer_of_risk/2.
:- discontiguous must_inform_provider_representative_and_market_surveillance_authorities/2.
:- discontiguous must_inform_providers_within_days/3.
:- discontiguous must_investigate/2.
:- discontiguous must_investigate_causes/2.
:- discontiguous must_investigate_competence/2.
:- discontiguous must_justify_equivalent_solution/2.
:- discontiguous must_keep_copy_of_certificate_instructions_declaration/2.
:- discontiguous must_keep_declaration_up_to_date/2.
:- discontiguous must_keep_documentation/2.
:- discontiguous must_keep_files_and_make_available/2.
:- discontiguous must_keep_information_for_downstream_providers_up_to_date/2.
:- discontiguous must_keep_list_up_to_date/1.
:- discontiguous must_keep_logs/2.
:- discontiguous must_keep_registration_information_up_to_date/2.
:- discontiguous must_keep_technical_documentation_up_to_date/2.
:- discontiguous must_lay_down_penalty_rules/1.
:- discontiguous must_lay_down_rules_public_authorities/1.
:- discontiguous must_maintain_confidentiality/1.
:- discontiguous must_make_annual_reports_available_to_public/1.
:- discontiguous must_make_available_documentation/2.
:- discontiguous must_make_available_information_for_downstream_providers/2.
:- discontiguous must_make_contact_information_publicly_available/1.
:- discontiguous must_make_public/2.
:- discontiguous must_make_publicly_available_list_of_notified_bodies/1.
:- discontiguous must_make_publicly_available_training_content_summary/2.
:- discontiguous must_mark_synthetic_content_output/2.
:- discontiguous must_monitor_and_evaluate_codes/1.
:- discontiguous must_not_affect_criminal_law_information_obligations/1.
:- discontiguous must_not_affect_exchange_of_information_rights/1.
:- discontiguous must_not_alter_ai_system_without_informing/2.
:- discontiguous must_not_be_directly_involved_in_design/2.
:- discontiguous must_not_be_directly_involved_in_development/2.
:- discontiguous must_not_be_directly_involved_in_marketing/2.
:- discontiguous must_not_be_directly_involved_in_use/2.
:- discontiguous must_not_disclose_without_prior_consultation/3.
:- discontiguous must_not_engage_in_conflicting_activity/2.
:- discontiguous must_not_make_available_nonconforming/2.
:- discontiguous must_not_place_on_market_until_conformity/2.
:- discontiguous must_not_provide_consultancy_services/1.
:- discontiguous must_not_represent_parties/2.
:- discontiguous must_notify/2.
:- discontiguous must_notify_changes/2.
:- discontiguous must_notify_commission/2.
:- discontiguous must_notify_commission_amendments/1.
:- discontiguous must_notify_commission_annually/2.
:- discontiguous must_notify_commission_of_single_point_of_contact/1.
:- discontiguous must_notify_commission_penalties/1.
:- discontiguous must_notify_decision/2.
:- discontiguous must_notify_market_surveillance_authority/2.
:- discontiguous must_notify_market_surveillance_authority_of_assessment/2.
:- discontiguous must_notify_simultaneously/2.
:- discontiguous must_notify_suspension_or_termination/2.
:- discontiguous must_notify_using_electronic_tool/2.
:- discontiguous must_observe_intellectual_property_rights/2.
:- discontiguous must_observe_professional_secrecy/1.
:- discontiguous must_organise_awareness_raising_and_training/1.
:- discontiguous must_organise_communication_campaigns/1.
:- discontiguous must_participate_in_coordination_activities/1.
:- discontiguous must_participate_in_standardisation_or_be_aware/1.
:- discontiguous must_pay_particular_attention_to/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment/2.
:- discontiguous must_perform_fundamental_rights_impact_assessment_on_first_use/2.
:- discontiguous must_perform_mandated_tasks/2.
:- discontiguous must_perform_model_evaluation/2.
:- discontiguous must_perform_tasks_specified_in_mandate/2.
:- discontiguous must_prepare_agenda/2.
:- discontiguous must_prepare_annual_report/1.
:- discontiguous must_protect_confidential_business_information/2.
:- discontiguous must_provide/2.
:- discontiguous must_provide/3.
:- discontiguous must_provide_adequate_resources/1.
:- discontiguous must_provide_copy_of_mandate/2.
:- discontiguous must_provide_documentary_evidence/2.
:- discontiguous must_provide_exchange/2.
:- discontiguous must_provide_exit_report/2.
:- discontiguous must_provide_explanation/2.
:- discontiguous must_provide_information_and_documentation/2.
:- discontiguous must_provide_information_and_documentation_upon_reasoned_request/2.
:- discontiguous must_provide_information_on_notification/2.
:- discontiguous must_provide_information_to_national_authority/2.
:- discontiguous must_provide_information_upon_request/2.
:- discontiguous must_provide_priority_access/2.
:- discontiguous must_provide_registration_information/2.
:- discontiguous must_provide_relevant_information/2.
:- discontiguous must_provide_secretariat/2.
:- discontiguous must_provide_standardised_templates/1.
:- discontiguous must_provide_technical_documentation_upon_request/2.
:- discontiguous must_provide_written_proof/2.
:- discontiguous must_publish_assessment/1.
:- discontiguous must_put_in_place_copyright_compliance_policy/2.
:- discontiguous must_put_in_place_cybersecurity_measures/2.
:- discontiguous must_put_in_place_quality_management_system/2.
:- discontiguous must_register_in_eu_database/2.
:- discontiguous must_register_themselves_and_system/2.
:- discontiguous must_register_themselves_select_system_and_register_use/2.
:- discontiguous must_repeal_common_specification_act/2.
:- discontiguous must_report/2.
:- discontiguous must_report_annual_fines/1.
:- discontiguous must_report_competition_information/2.
:- discontiguous must_report_prohibited_practices/2.
:- discontiguous must_report_serious_incident/2.
:- discontiguous must_report_to_commission_on_resources/1.
:- discontiguous must_report_to_ecb/2.
:- discontiguous must_request_only_strictly_necessary_data/2.
:- discontiguous must_require_suspension_or_withdrawal_of_certificates/2.
:- discontiguous must_respect_confidentiality/2.
:- discontiguous must_respect_degree_of_rigour/1.
:- discontiguous must_restrict_suspend_or_withdraw/2.
:- discontiguous must_review_progress/2.
:- discontiguous must_safeguard_independence_objectivity_impartiality/1.
:- discontiguous must_safeguard_objectivity_impartiality/1.
:- discontiguous must_satisfy_cybersecurity_requirements/1.
:- discontiguous must_satisfy_organisational_requirements/1.
:- discontiguous must_set_up_and_maintain_eu_database/1.
:- discontiguous must_submit_annual_report/2.
:- discontiguous must_submit_annual_reports/1.
:- discontiguous must_submit_application_for_notification/2.
:- discontiguous must_submit_appropriate_proposals/2.
:- discontiguous must_submit_findings/2.
:- discontiguous must_submit_registration_information/2.
:- discontiguous must_submit_report/3.
:- discontiguous must_submit_report_within_months/3.
:- discontiguous must_supply_information/2.
:- discontiguous must_supply_information_within/2.
:- discontiguous must_supply_requested_information/2.
:- discontiguous must_suspend_or_withdraw_or_restrict_certificate/2.
:- discontiguous must_take_account_of_provider_size/2.
:- discontiguous must_take_corrective_actions/2.
:- discontiguous must_take_corrective_actions_nonconforming/2.
:- discontiguous must_take_corrective_measures_by_member_state/2.
:- discontiguous must_take_due_account_of_provider_characteristics/2.
:- discontiguous must_take_into_account/2.
:- discontiguous must_take_into_account_ai_act_requirements/1.
:- discontiguous must_take_into_account_requirements/2.
:- discontiguous must_take_into_account_sme_interests/1.
:- discontiguous must_take_into_account_sme_interests/2.
:- discontiguous must_take_into_account_sme_interests_and_needs_when_setting_fees/1.
:- discontiguous must_take_necessary_steps/2.
:- discontiguous must_take_necessary_steps_for_codes/1.
:- discontiguous must_take_restrictive_measures/2.
:- discontiguous must_terminate_mandate/2.
:- discontiguous must_terminate_mandate_if_provider_acting_contrary/1.
:- discontiguous must_track_document_report_serious_incidents/2.
:- discontiguous must_treat_information_confidentially/2.
:- discontiguous must_treat_sensitive_information_confidentially/2.
:- discontiguous must_undergo_conformity_assessment/2.
:- discontiguous must_undertake_to_develop_methodology/2.
:- discontiguous must_update_documentation/2.
:- discontiguous must_update_fundamental_rights_impact_assessment/2.
:- discontiguous must_update_guidelines/2.
:- discontiguous must_utilise_dedicated_channels/1.
:- discontiguous must_verify_before_making_available/2.
:- discontiguous must_verify_conformity/2.
:- discontiguous must_verify_conformity_before_placing/2.
:- discontiguous must_verify_design_development_post_market_monitoring_consistency/2.
:- discontiguous must_verify_quality_management_system_compliance/2.
:- discontiguous must_withdraw_designation/2.
:- discontiguous must_withdraw_measure/2.
:- discontiguous narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task/1.
:- discontiguous national_competent_authorities_cooperate/1.
:- discontiguous national_competent_authority_exercises_powers_independently/1.
:- discontiguous national_competent_authority_member_refrains_from_incompatible_action/1.
:- discontiguous national_law_lays_down_detailed_rules/1.
:- discontiguous national_rules_specify_objectives/1.
:- discontiguous national_security_competence_unaffected/0.
:- discontiguous natural_person/1.
:- discontiguous necessary_and_proportionate_to_assist_fulfilment_of_tasks/1.
:- discontiguous new_conformity_assessment_required/1.
:- discontiguous no_administrative_fines_for_other_law_if_authorities_involved/1.
:- discontiguous no_administrative_fines_if_conditions_met/1.
:- discontiguous no_adverse_decision_solely_on_output/1.
:- discontiguous no_conflict_of_interest_with_conformity_assessment_bodies/1.
:- discontiguous no_effect_on_data_subject_rights/1.
:- discontiguous no_further_grounds_for_action/1.
:- discontiguous no_longer_considered_provider/1.
:- discontiguous no_longer_poses_significant_risk/1.
:- discontiguous no_measures_or_decisions_affecting_data_subjects/1.
:- discontiguous no_objection_within/2.
:- discontiguous non_compliance_cause_identified/2.
:- discontiguous non_compliance_found/2.
:- discontiguous non_compliance_not_restricted_national/1.
:- discontiguous non_compliance_persists/1.
:- discontiguous non_compliance_with_other_requirements_fine_limit/1.
:- discontiguous non_compliance_with_prohibition_fine_limit/1.
:- discontiguous non_compliant_with_requirements/1.
:- discontiguous nonconformity_considered/2.
:- discontiguous not_in_conformity_with_requirements/1.
:- discontiguous not_substantial_modification/1.
:- discontiguous notification_based_on_accreditation_certificate/1.
:- discontiguous notification_contains_minimum_information/1.
:- discontiguous notification_decisions_by_different_persons/1.
:- discontiguous notification_details_included/2.
:- discontiguous notification_excludes_sensitive_operational_data/1.
:- discontiguous notification_includes_demonstration/1.
:- discontiguous notification_includes_details/1.
:- discontiguous notification_includes_documentary_evidence/1.
:- discontiguous notification_within_two_weeks/1.
:- discontiguous notified_body/1.
:- discontiguous notified_body_accepts_simplified_form_for_conformity_assessment/2.
:- discontiguous notified_body_applicable/1.
:- discontiguous notified_body_assesses_changes_affecting_compliance/2.
:- discontiguous notified_body_assesses_quality_management_system/2.
:- discontiguous notified_body_carries_out_periodic_audits/1.
:- discontiguous notified_body_compliance_assessed/2.
:- discontiguous notified_body_decides_on_new_conformity_assessment_or_supplement/2.
:- discontiguous notified_body_decides_on_qms_changes/2.
:- discontiguous notified_body_entitled_to_control_conformity/2.
:- discontiguous notified_body_examines_qms_changes/2.
:- discontiguous notified_body_examines_technical_documentation/2.
:- discontiguous notified_body_granted_access_to_training_and_trained_models/2.
:- discontiguous notified_body_granted_access_to_training_validation_testing_data/2.
:- discontiguous notified_body_identification_number_affixed_by_notified_body/1.
:- discontiguous notified_body_identification_number_affixed_under_instructions/2.
:- discontiguous notified_body_identification_number_in_promotional_material/1.
:- discontiguous notified_body_involved_in_conformity_assessment/1.
:- discontiguous notified_body_may_carry_out_additional_tests_during_audits/1.
:- discontiguous notified_body_may_carry_out_tests/1.
:- discontiguous notified_body_may_require_further_evidence_or_tests/2.
:- discontiguous notified_body_notifies_qms_decision/2.
:- discontiguous notified_body_notifies_technical_documentation_decision/2.
:- discontiguous notified_body_provides_audit_report/2.
:- discontiguous notified_by/2.
:- discontiguous notified_to_commission_and_member_states/2.
:- discontiguous notified_to_data_protection_authority/1.
:- discontiguous notified_to_market_surveillance_authority/1.
:- discontiguous notified_under_multiple_union_acts/1.
:- discontiguous notified_under_union_act/2.
:- discontiguous notify_provisional_measures/3.
:- discontiguous notifying_authority_responsible_for/2.
:- discontiguous number_of_parameters/1.
:- discontiguous number_of_registered_end_users/1.
:- discontiguous number_of_undertakings_entering_market/1.
:- discontiguous objection_period_extended/2.
:- discontiguous objection_raised/2.
:- discontiguous objective_contributing_to_evidence_based_regulatory_learning/1.
:- discontiguous objective_facilitating_access_to_union_market/1.
:- discontiguous objective_fostering_innovation_and_competitiveness/1.
:- discontiguous objective_improving_legal_certainty/1.
:- discontiguous objective_localisation_suspect/1.
:- discontiguous objective_participative_methodology/1.
:- discontiguous objective_prevention_threat/1.
:- discontiguous objective_purpose/1.
:- discontiguous objective_supporting_sharing_best_practices/1.
:- discontiguous objective_targeted_search_victims/1.
:- discontiguous objectivity_and_impartiality_safeguarded/1.
:- discontiguous obligation_fulfilled_by_participation/2.
:- discontiguous on_system_or_packaging_or_documentation/2.
:- discontiguous only_authorised_persons_access_data/1.
:- discontiguous operates_properly/1.
:- discontiguous operator/1.
:- discontiguous operator_cooperation_required/2.
:- discontiguous opportunity_to_be_heard/2.
:- discontiguous opposition_to_extension/2.
:- discontiguous organise_testing_of_high_risk_ai_system/2.
:- discontiguous other_authorities_inform_of_measures/3.
:- discontiguous other_change_to_notification/1.
:- discontiguous other_union_harmonisation_legislation/1.
:- discontiguous outcome_not_easily_corrigible/1.
:- discontiguous output_marked_machine_readable/1.
:- discontiguous oversight_aims_to_prevent_or_minimise_risks/1.
:- discontiguous oversight_measures_built_in_by_provider/1.
:- discontiguous oversight_measures_commensurate/1.
:- discontiguous oversight_measures_for_deployer/1.
:- discontiguous parameters_publicly_available/1.
:- discontiguous participant_in_sandbox/2.
:- discontiguous participants_enhance_multistakeholder_governance/1.
:- discontiguous participants_promote_investment_innovation/1.
:- discontiguous participants_strengthen_global_cooperation/1.
:- discontiguous participants_take_into_account_international_standards/1.
:- discontiguous participates/2.
:- discontiguous participates_directly/2.
:- discontiguous participates_in_work/2.
:- discontiguous participates_through_designated_representatives/2.
:- discontiguous particular_attention_vulnerable_groups/1.
:- discontiguous penalty_applies_to_infringement/2.
:- discontiguous performs_tasks_under_regulation_1020_art_21_par_6/1.
:- discontiguous performs_tasks_with_impartiality_and_objectivity/1.
:- discontiguous period_appropriate_to_intended_purpose/2.
:- discontiguous period_at_least/2.
:- discontiguous period_reduced_for_art_5_non_compliance/1.
:- discontiguous permanent_advisory_forum_member/1.
:- discontiguous permitted_add_use_case/2.
:- discontiguous permitted_further_processing_in_sandbox/2.
:- discontiguous permitted_incomplete_initial_report/2.
:- discontiguous permitted_modify_use_case/2.
:- discontiguous permitted_processing_special_categories_for_bias_correction/1.
:- discontiguous permitted_real_time_remote_biometric_identification_law_enforcement/1.
:- discontiguous permitted_remove_high_risk_ai_system/2.
:- discontiguous permitted_testing_conditions_met/2.
:- discontiguous permitted_testing_in_real_world_conditions/2.
:- discontiguous permitted_use_of_assessed_systems/2.
:- discontiguous person/1.
:- discontiguous personal_data_created_in_sandbox_not_shared_outside/1.
:- discontiguous personal_data_deleted_after_sandbox_termination/1.
:- discontiguous personal_data_protection_law_applies/0.
:- discontiguous personnel_competences_and_expertise/1.
:- discontiguous placed_on_market_or_put_into_service/1.
:- discontiguous placed_on_market_or_put_into_service_before/2.
:- discontiguous placing_on_market/2.
:- discontiguous poses_risk_equivalent_or_greater/1.
:- discontiguous positions_and_findings/1.
:- discontiguous post_market_monitoring_applies_to_financial_institutions/1.
:- discontiguous post_market_monitoring_based_on_plan/1.
:- discontiguous post_market_monitoring_data_source/2.
:- discontiguous post_market_monitoring_evaluates_continuous_compliance/2.
:- discontiguous post_market_monitoring_excludes_sensitive_operational_data/1.
:- discontiguous post_market_monitoring_includes_ai_interaction_analysis/1.
:- discontiguous post_market_monitoring_plan_part_of_technical_documentation/1.
:- discontiguous post_market_monitoring_system_actively_collects_data/1.
:- discontiguous post_remote_biometric_identification_system/1.
:- discontiguous power_to_adopt_delegated_acts_conferred/1.
:- discontiguous predetermined_change/2.
:- discontiguous presents_risk/1.
:- discontiguous presents_systemic_risk/1.
:- discontiguous presumed_conformity/1.
:- discontiguous presumed_conformity_with_common_specification/1.
:- discontiguous presumed_high_impact_capabilities/1.
:- discontiguous presumed_to_comply_with_requirements/1.
:- discontiguous presumed_to_comply_with_requirements/2.
:- discontiguous presumption_of_conformity/1.
:- discontiguous presumption_of_conformity/2.
:- discontiguous prior_authorisation_obtained/1.
:- discontiguous priority_access_to_ai_regulatory_sandbox/1.
:- discontiguous procedural_rights_apply/1.
:- discontiguous procedural_safeguards_apply/1.
:- discontiguous procedure_applies_mutatis_mutandis/2.
:- discontiguous procedure_referred_to_in_article_43/1.
:- discontiguous procedures_developed_in_cooperation/1.
:- discontiguous procedures_for_extension_apply/1.
:- discontiguous procedures_for_other_changes_apply/1.
:- discontiguous processes_personal_data/1.
:- discontiguous processes_personal_data_in_accordance_with_gdpr/1.
:- discontiguous produces_legal_effects/1.
:- discontiguous product_contains_ai_system/1.
:- discontiguous product_manufacturer_considered_provider/1.
:- discontiguous product_manufacturer_may_opt_out_third_party/2.
:- discontiguous product_manufacturer_opt_out_additional_condition/2.
:- discontiguous product_manufacturer_opt_out_condition/2.
:- discontiguous product_reference_includes/1.
:- discontiguous prohibited_biometric_categorisation/1.
:- discontiguous prohibited_emotion_recognition_workplace_education/1.
:- discontiguous prohibited_exploitation_of_vulnerabilities/1.
:- discontiguous prohibited_real_time_remote_biometric_identification_law_enforcement/1.
:- discontiguous prohibited_risk_assessment_criminal_offence/1.
:- discontiguous prohibited_social_scoring/1.
:- discontiguous prohibited_subliminal_manipulation/1.
:- discontiguous prohibited_untargeted_facial_recognition_database_creation/1.
:- discontiguous prospective_provider_in_sandbox/1.
:- discontiguous protected_by_confidentiality/1.
:- discontiguous provenance/2.
:- discontiguous provider_agrees_to_subcontracting/2.
:- discontiguous provider_allows_notified_body_access_to_premises/2.
:- discontiguous provider_assumes_responsibility/2.
:- discontiguous provider_complied_obligations/1.
:- discontiguous provider_fails_to_bring_into_compliance/2.
:- discontiguous provider_fails_to_take_adequate_corrective_action/2.
:- discontiguous provider_general_purpose_ai_model_with_systemic_risk/1.
:- discontiguous provider_has_appointed_authorised_representative/1.
:- discontiguous provider_informs_notified_body_of_changes/2.
:- discontiguous provider_informs_notified_body_of_qms_changes/2.
:- discontiguous provider_liable_for_damage/1.
:- discontiguous provider_maintains_approved_qms/1.
:- discontiguous provider_may_choose_notified_body/2.
:- discontiguous provider_may_use_documentation_to_demonstrate_compliance/2.
:- discontiguous provider_or_authorised_representative_bankrupt_or_ceased/2.
:- discontiguous provider_presents_substantiated_arguments/2.
:- discontiguous provider_remains_liable_for_damage/1.
:- discontiguous provider_requests_reassessment/2.
:- discontiguous provider_shares_necessary_information_with_notified_body/2.
:- discontiguous provides/2.
:- discontiguous provides_advice_on_classification_systemic_risk/1.
:- discontiguous provides_advice_on_classification_various_models/1.
:- discontiguous provides_independent_technical_or_scientific_advice/2.
:- discontiguous provides_information_as_required_in_article_20/2.
:- discontiguous provides_technical_expertise/1.
:- discontiguous provisional_measure_deemed_justified/1.
:- discontiguous provisional_measures_taken/2.
:- discontiguous public_interest_area/1.
:- discontiguous publicly_available_parameters/1.
:- discontiguous purpose/1.
:- discontiguous putting_into_service/1.
:- discontiguous qms_decision_contains_conclusions_and_reasoning/1.
:- discontiguous qualified_alert/2.
:- discontiguous quality_management_system_documented/1.
:- discontiguous quality_management_system_examined/1.
:- discontiguous quality_management_system_for/2.
:- discontiguous quality_management_system_in_place/1.
:- discontiguous quality_management_system_includes/2.
:- discontiguous quality_management_system_may_integrate_sectoral/1.
:- discontiguous quality_management_system_proportionate/1.
:- discontiguous quality_management_system_respects_rigour/1.
:- discontiguous quality_management_system_surveillance/1.
:- discontiguous quality_or_size_of_data_set/1.
:- discontiguous real_time_remote_biometric_identification_system/1.
:- discontiguous real_world_testing_not_excluded/0.
:- discontiguous reasoned_request/2.
:- discontiguous reasoned_request_to_ai_office/2.
:- discontiguous reasoned_request_to_market_surveillance_authority/2.
:- discontiguous reasons/1.
:- discontiguous reasons_to_doubt_competence/1.
:- discontiguous reasons_to_doubt_continued_fulfilment/1.
:- discontiguous reassessment_earliest_six_months/1.
:- discontiguous records_identification_of_natural_persons/1.
:- discontiguous records_input_data_leading_to_match/1.
:- discontiguous records_period_of_each_use/1.
:- discontiguous records_reference_database/1.
:- discontiguous references/2.
:- discontiguous refers_to_ai_system/2.
:- discontiguous refusal_contains_specific_considerations_on_training_data_quality/1.
:- discontiguous refusal_informs_applicant_with_detailed_reasons/1.
:- discontiguous regard_had_to_nature_gravity_duration/1.
:- discontiguous registered_at_national_level/1.
:- discontiguous registered_in_eu_database/1.
:- discontiguous registered_office_in_union/1.
:- discontiguous registration_in_secure_non_public_section/1.
:- discontiguous registration_includes_only_specified_information/1.
:- discontiguous registration_information_item/1.
:- discontiguous registration_information_item/2.
:- discontiguous registration_information_kept_up_to_date/2.
:- discontiguous registration_information_section_a/1.
:- discontiguous registration_information_section_b/1.
:- discontiguous registration_information_section_c/1.
:- discontiguous registration_obligations_referred_to_in_article_49_par_1/1.
:- discontiguous regulation_applies_to/1.
:- discontiguous regulation_does_not_apply_to/1.
:- discontiguous regulation_lays_down/1.
:- discontiguous regulatory_specificities/1.
:- discontiguous relates_to/2.
:- discontiguous relevant_circumstance/1.
:- discontiguous relevant_circumstance_for_fine/1.
:- discontiguous relevant_competent_authority/1.
:- discontiguous remote_biometric_identification_system/1.
:- discontiguous remove_high_risk_ai_system/1.
:- discontiguous report_made_within_days/3.
:- discontiguous report_on_delegation/1.
:- discontiguous report_shall_be_made_public/1.
:- discontiguous report_shall_include_assessment/2.
:- discontiguous report_shall_pay_specific_attention/2.
:- discontiguous request_and_access_documentation/2.
:- discontiguous request_indicates_fines/1.
:- discontiguous request_sets_period/1.
:- discontiguous request_specifies_information_required/1.
:- discontiguous request_states_legal_basis/1.
:- discontiguous request_states_purpose/1.
:- discontiguous requested_by/1.
:- discontiguous required_accuracy_robustness_cybersecurity/1.
:- discontiguous required_ai_specific_vulnerability_measures/1.
:- discontiguous required_cybersecurity_technical_solutions/1.
:- discontiguous required_data_governance_practices/1.
:- discontiguous required_declaration_of_accuracy_metrics/1.
:- discontiguous required_feedback_loop_mitigation/1.
:- discontiguous required_resilience_against_errors_faults_inconsistencies/1.
:- discontiguous requirements_chapter_3_section_2/1.
:- discontiguous requirements_set_out_in_chapter_3_section_2/1.
:- discontiguous residual_risk_acceptable/1.
:- discontiguous response_mechanisms_to_mitigate_risks/1.
:- discontiguous retraining_required_when_training_data_non_compliant/1.
:- discontiguous revocation_decision/1.
:- discontiguous revocation_of_delegation/2.
:- discontiguous right_already_provided_under_union_law/1.
:- discontiguous right_to_explanation/2.
:- discontiguous right_to_lodge_complaint/1.
:- discontiguous rights_of_defence_respected/1.
:- discontiguous risk_elimination_or_reduction/1.
:- discontiguous risk_estimation_and_evaluation/1.
:- discontiguous risk_evaluation_from_post_market_monitoring/1.
:- discontiguous risk_identification_and_analysis/1.
:- discontiguous risk_management_combined_with_other_union_law/1.
:- discontiguous risk_management_measures_adopted/1.
:- discontiguous risk_management_measures_consider_combined_requirements/1.
:- discontiguous risk_management_system/1.
:- discontiguous risk_management_system_continuous_iterative/1.
:- discontiguous risk_management_system_referred_to_in_article_9/1.
:- discontiguous risk_management_system_regular_review/1.
:- discontiguous risk_management_system_taken_into_account/1.
:- discontiguous risk_mitigable_through_design/1.
:- discontiguous risk_to_health_safety_fundamental_rights/1.
:- discontiguous risk_to_other_aspects_of_public_interest_protection/1.
:- discontiguous risks_persist_despite_other_requirements/1.
:- discontiguous safeguard_confidentiality_of_information/2.
:- discontiguous same_provider_developed_model_and_system/2.
:- discontiguous sandbox_access_free_for_sme/1.
:- discontiguous sandbox_allows_broad_equal_access/1.
:- discontiguous sandbox_does_not_affect_supervisory_powers/1.
:- discontiguous sandbox_established_jointly/1.
:- discontiguous sandbox_facilitates_conformity_assessment_compliance/1.
:- discontiguous sandbox_facilitates_cross_border_cooperation/1.
:- discontiguous sandbox_facilitates_ecosystem_involvement/1.
:- discontiguous sandbox_facilitates_tool_development/1.
:- discontiguous sandbox_may_include_real_world_testing/1.
:- discontiguous sandbox_mutually_recognised_across_union/1.
:- discontiguous sandbox_open_to_applying_provider/1.
:- discontiguous sandbox_participation_limited_period/1.
:- discontiguous sandbox_participation_streamlined_across_union/1.
:- discontiguous sandbox_period_extendable/1.
:- discontiguous sandbox_plan_agreed/2.
:- discontiguous sandbox_procedures_simple_intelligible/1.
:- discontiguous sandbox_provides_controlled_environment/1.
:- discontiguous sandbox_supports_flexibility/1.
:- discontiguous schengen_information_system/1.
:- discontiguous scientific_panel/1.
:- discontiguous scientific_panel_expert/1.
:- discontiguous sectoral/1.
:- discontiguous sectoral_group_of_notified_bodies/1.
:- discontiguous sectoral_procedures_apply/1.
:- discontiguous sectoral_union_harmonisation_legislation/1.
:- discontiguous security_equipment_concerning_ai_systems/1.
:- discontiguous selected_by_commission/1.
:- discontiguous sensitive_operational_data_excluded_from_exchange/1.
:- discontiguous sensitive_operational_data_excluded_from_publication/1.
:- discontiguous separate_verification_by_two_persons_required/1.
:- discontiguous serious_criminal_offence/1.
:- discontiguous serious_incident_critical_infrastructure/1.
:- discontiguous short_summary_published_on_website/1.
:- discontiguous shortcomings_in_harmonised_standards_or_common_specifications/1.
:- discontiguous significant_risks_require_adequate_mitigation/1.
:- discontiguous similarly_significantly_affects/2.
:- discontiguous simplified_quality_management_compliance/1.
:- discontiguous single_eu_declaration_for_multiple_legislation/1.
:- discontiguous single_set_technical_documentation_contains_all_information/1.
:- discontiguous single_set_technical_documentation_required/1.
:- discontiguous sme_may_provide_simplified/1.
:- discontiguous sme_with_registered_office_or_branch_in_union/1.
:- discontiguous smes/1.
:- discontiguous specific_risks_of_harm/1.
:- discontiguous staff_with_security_clearance_only/1.
:- discontiguous standardisation_deliverables_energy_efficiency/1.
:- discontiguous standardisation_failure_condition/1.
:- discontiguous standardisation_request_covers/2.
:- discontiguous standardisation_request_includes_deliverables/1.
:- discontiguous standardisation_request_issued/1.
:- discontiguous standards_must_be_clear_consistent/1.
:- discontiguous state_of_penalties/1.
:- discontiguous state_of_progress_information_society/1.
:- discontiguous stop_use_if_authorisation_refused/1.
:- discontiguous storage_or_transport_conditions/2.
:- discontiguous strictly_necessary_for_permitted_objective/1.
:- discontiguous structured_dialogue/2.
:- discontiguous structured_dialogue_initiated/2.
:- discontiguous subcontracted_or_carried_out_by_subsidiary/2.
:- discontiguous subcontractor_or_subsidiary/1.
:- discontiguous subject_may_request_deletion/1.
:- discontiguous subject_may_withdraw/1.
:- discontiguous subject_to_fines/2.
:- discontiguous subject_to_sectoral_quality_management_obligations/1.
:- discontiguous submit_copy_upon_request/2.
:- discontiguous submitted/1.
:- discontiguous sufficient_powers_and_competences/1.
:- discontiguous sufficient_reason_to_consider/2.
:- discontiguous sufficient_reason_to_consider_high_risk/2.
:- discontiguous sufficient_reason_to_consider_non_compliant/2.
:- discontiguous sufficient_reason_to_consider_non_conformity/2.
:- discontiguous sufficient_reason_to_consider_risk/2.
:- discontiguous sufficiently_transparent_operation/1.
:- discontiguous supervises_credit_institution/2.
:- discontiguous supervision_and_governance_system/1.
:- discontiguous supervisory_powers_exercised_within_limits_of_law/1.
:- discontiguous supplement_to_certificate_issued_when_changes_approved/2.
:- discontiguous supplied_by/3.
:- discontiguous supports_cross_border_market_surveillance/1.
:- discontiguous supports_human_assessment/1.
:- discontiguous supports_implementation_and_enforcement/1.
:- discontiguous supports_market_surveillance_authorities/1.
:- discontiguous supports_union_safeguard_procedure/1.
:- discontiguous surveillance_purpose_ensures_qms_compliance/1.
:- discontiguous system_bears_ce_marking_and_accompanied/1.
:- discontiguous tacit_approval_applies/1.
:- discontiguous tacit_extension/1.
:- discontiguous take_due_account_of_proportionality_and_appropriateness/1.
:- discontiguous take_into_account_commitments/2.
:- discontiguous takes_corrective_actions/2.
:- discontiguous takes_into_account_consequences_for_rights/1.
:- discontiguous takes_into_account_nature_of_situation/1.
:- discontiguous takes_necessary_corrective_measures/2.
:- discontiguous task/1.
:- discontiguous tasks/1.
:- discontiguous technical_documentation_contains/2.
:- discontiguous technical_documentation_contains_minimum_elements/1.
:- discontiguous technical_documentation_decision_contains_conclusions_and_reasoning/1.
:- discontiguous technical_documentation_demonstrates_compliance/1.
:- discontiguous technical_documentation_drawn_up_by_provider/1.
:- discontiguous technical_documentation_gpai/1.
:- discontiguous technical_documentation_provides_information_to_authorities/1.
:- discontiguous technical_documentation_remains_on_premises/2.
:- discontiguous technical_knowledge_considered/1.
:- discontiguous technical_solution_effective_interoperable_robust_reliable/1.
:- discontiguous technically_allows_automatic_recording/1.
:- discontiguous term_of_office_years/2.
:- discontiguous terminate_mandate/2.
:- discontiguous tested_for_risk_management/1.
:- discontiguous testing_against_defined_metrics/1.
:- discontiguous testing_approved_by_authority/2.
:- discontiguous testing_ensures_consistent_performance/1.
:- discontiguous testing_in_real_world_conditions_outside_sandbox/2.
:- discontiguous testing_in_real_world_conditions_permitted/1.
:- discontiguous testing_performed_during_development/1.
:- discontiguous testing_registration_completed/2.
:- discontiguous three_year_evaluation_cycle/1.
:- discontiguous traceability_appropriate_to_intended_purpose/1.
:- discontiguous training_content_summary/1.
:- discontiguous transparency_information_general_purpose_ai_model/1.
:- discontiguous transparency_obligations_without_prejudice_to_chapter_3/0.
:- discontiguous transparency_obligations_without_prejudice_to_other_law/0.
:- discontiguous trigger_union_safeguard_procedure/1.
:- discontiguous unable_to_conclude_investigation/2.
:- discontiguous under_control_of/2.
:- discontiguous under_responsibility_of/2.
:- discontiguous undergoes/2.
:- discontiguous union_agency/1.
:- discontiguous union_harmonisation_legislation_applies/1.
:- discontiguous union_harmonisation_legislation_section_a/1.
:- discontiguous union_harmonisation_legislation_section_b/1.
:- discontiguous union_institution_body_office_or_agency/1.
:- discontiguous union_national_law_on_product_testing_not_prejudiced/1.
:- discontiguous union_technical_documentation_assessment_certificate_issued/1.
:- discontiguous unjustified_national_measure/1.
:- discontiguous up_to_date_expertise_in_ai/1.
:- discontiguous upgrade_ai_office/1.
:- discontiguous upon_request/2.
:- discontiguous urgency_put_into_service_without_authorisation/2.
:- discontiguous usable_by_deployers/1.
:- discontiguous usable_for_purpose/2.
:- discontiguous use_confirmed_identity_specifically_targeted/1.
:- discontiguous use_limited_to_strictly_necessary/1.
:- discontiguous used_by_financial_institution/2.
:- discontiguous used_by_or_on_behalf_of_law_enforcement/1.
:- discontiguous used_for_border_management/1.
:- discontiguous used_for_justice_and_democracy/1.
:- discontiguous valid_document_related_to_existing_designation/1.
:- discontiguous verifies_design_development_post_market_monitoring_consistency/2.
:- discontiguous verifies_quality_management_system_compliance/2.
:- discontiguous verify_compliance_with_art_60/1.
:- discontiguous visa_information_system/1.
:- discontiguous voluntary_codes_of_conduct/1.
:- discontiguous voluntary_model_terms/1.
:- discontiguous weights_publicly_available/1.
:- discontiguous whistleblower_directive_applies/1.
:- discontiguous withdraw_unjustified_authorisation/1.
:- discontiguous withdrawal_does_not_affect_prior_activities/1.
:- discontiguous within_delegation_period/1.
:- discontiguous within_period/3.
:- discontiguous written_agreement_specifies/3.
:- discontiguous written_mandate/3.

% --- input slots: assert facts against these at runtime ---
:- dynamic able_to_carry_out_activities_diligently/1.
:- dynamic able_to_detect_anomalies_dysfunctions_unexpected_performance/2.
:- dynamic acceptable_use_policies/1.
:- dynamic acceptable_use_policies_applicable/1.
:- dynamic access_necessary_for_mandate/2.
:- dynamic accessible_language_and_format/1.
:- dynamic act_concerns/2.
:- dynamic acting_contrary_to_obligations/1.
:- dynamic action_to_mitigate_damage/1.
:- dynamic actions_required_of_provider/2.
:- dynamic additional_information_url/1.
:- dynamic adequate_cybersecurity_protection/1.
:- dynamic adequate_safeguards_fundamental_rights/1.
:- dynamic adversarial_testing/1.
:- dynamic adverse_impact_on_fundamental_rights/1.
:- dynamic advice_and_respond_to_queries/1.
:- dynamic advisory_forum_member/1.
:- dynamic affected_person/1.
:- dynamic affected_persons_categories/1.
:- dynamic after/1.
:- dynamic agreement_with_union/1.
:- dynamic ai_board/1.
:- dynamic ai_literacy/1.
:- dynamic ai_office/1.
:- dynamic ai_regulatory_sandbox/1.
:- dynamic ai_system/1.
:- dynamic ai_system_authorised_by_law_for_criminal_offences/1.
:- dynamic ai_system_covered_by_annex_1/1.
:- dynamic ai_system_is_product/1.
:- dynamic ai_system_referred_to_in_annex_3/1.
:- dynamic ai_system_status/1.
:- dynamic ai_system_trade_name_and_reference/1.
:- dynamic annex_3_point_2/1.
:- dynamic annex_3_point_3/1.
:- dynamic annex_3_point_4/1.
:- dynamic annex_3_point_5/1.
:- dynamic annual_budget/1.
:- dynamic annual_report_prepared/1.
:- dynamic annual_report_publicly_available/1.
:- dynamic annual_total_worldwide_turnover/2.
:- dynamic another_notified_body_assumes_immediate_responsibility/2.
:- dynamic another_notified_body_assumes_responsibility/2.
:- dynamic application_includes_adequacy_effectiveness_procedures/1.
:- dynamic application_includes_ai_systems_list/1.
:- dynamic application_includes_no_other_application_declaration/1.
:- dynamic application_includes_provider_name_address/1.
:- dynamic application_includes_quality_management_documentation/1.
:- dynamic application_includes_technical_documentation/1.
:- dynamic appropriate_measures_taken_within_days/3.
:- dynamic approved_changes_documentation/1.
:- dynamic approved_code_of_practice/1.
:- dynamic architecture_and_number_of_parameters/1.
:- dynamic arguments_not_sufficiently_substantiated/1.
:- dynamic article_31_requirements/1.
:- dynamic assigned_human_oversight/2.
:- dynamic assistive_function_standard_editing/1.
:- dynamic authorisation_requested_within_24_hours/1.
:- dynamic authorised_persons_only/1.
:- dynamic authorised_representative/1.
:- dynamic authorised_representative_contact_details/1.
:- dynamic authorised_representative_not_established_in_union/1.
:- dynamic authorised_representative_provides_access/2.
:- dynamic automatically_generated/1.
:- dynamic available_for_public_to_report_criminal_offence/1.
:- dynamic aware_of_relevant_standards/1.
:- dynamic awareness_raising_and_training_activities/1.
:- dynamic bias_correction_ineffective_with_other_data/1.
:- dynamic bilateral_or_multilateral_confidentiality_arrangement/1.
:- dynamic biometric_categorisation_or_emotion_recognition_permitted_by_law/1.
:- dynamic biometric_categorisation_system/1.
:- dynamic biometric_data/1.
:- dynamic biometric_identification/1.
:- dynamic biometric_verification/1.
:- dynamic board_invited_authority/1.
:- dynamic capabilities_and_limitations_performance/1.
:- dynamic causal_link_established/2.
:- dynamic causal_relationship_suspected/2.
:- dynamic ce_marking/1.
:- dynamic ce_marking_affixed_in_violation/1.
:- dynamic ce_marking_not_affixed/1.
:- dynamic certificate/1.
:- dynamic certificate_details/1.
:- dynamic certificate_supplement/1.
:- dynamic certificate_supplemented_by/2.
:- dynamic certificate_unduly_issued/1.
:- dynamic certified_under_cybersecurity_scheme/1.
:- dynamic circumstances_affecting_notification/1.
:- dynamic close_involvement_of_requesting_authority/2.
:- dynamic commission_assesses_member_state_information/1.
:- dynamic commission_considers_contrary_to_union_law/1.
:- dynamic commission_consultations_entered/1.
:- dynamic commission_consulted_advisory_forum/1.
:- dynamic commission_decides_authorisation_justified/1.
:- dynamic commission_empowered_to_adopt_delegated_acts/1.
:- dynamic commission_informed_committee/1.
:- dynamic commission_rejects_arguments/1.
:- dynamic commission_repeals_common_specification/1.
:- dynamic commission_requested_standardisation/1.
:- dynamic commitments_made_in_codes_of_practice/1.
:- dynamic commitments_made_under_article_93_par_3/1.
:- dynamic common_specification/1.
:- dynamic common_specification_applied/2.
:- dynamic common_specification_available/1.
:- dynamic common_specification_covers/2.
:- dynamic common_specification_not_available/1.
:- dynamic communication_campaigns/1.
:- dynamic complete_report_follows/1.
:- dynamic components_and_functions_description/1.
:- dynamic computational_resources_used_to_train/1.
:- dynamic concerning_ai_systems/1.
:- dynamic concluded_not_high_risk/1.
:- dynamic concrete_and_reliable_evidence_exists/1.
:- dynamic concrete_and_reliable_evidence_necessary_to_maintain_protection/1.
:- dynamic concrete_identifiable_risk_at_union_level/1.
:- dynamic conduct_of_criminal_or_administrative_proceedings/1.
:- dynamic confidential_business_information/1.
:- dynamic confidentiality_procedures/1.
:- dynamic conformity_assessment/1.
:- dynamic conformity_assessment_activity_performed/1.
:- dynamic conformity_assessment_body/1.
:- dynamic conformity_assessment_procedure_internal_control/1.
:- dynamic conformity_assessment_procedure_notified_body/1.
:- dynamic considers_needs_of_microenterprises/1.
:- dynamic consult_experts/1.
:- dynamic consulted_board/1.
:- dynamic consumer_protection_product_safety_rules_unaffected/1.
:- dynamic contains_minimum_elements_annex_4/1.
:- dynamic content_forms_part_of_artistic_work/1.
:- dynamic context_of_use/2.
:- dynamic copy_of_eu_declaration_of_conformity/1.
:- dynamic corrective_action_taken/2.
:- dynamic court_of_justice_judicial_capacity/1.
:- dynamic credit_institution_participating_ssm/1.
:- dynamic critical_infrastructure/1.
:- dynamic cybersecurity_certificate_covers_requirements/2.
:- dynamic cybersecurity_measures_description/1.
:- dynamic cybersecurity_technical_solution/1.
:- dynamic data_listed_in_annex_8_section/2.
:- dynamic data_protection_authority_designated/1.
:- dynamic data_protection_impact_assessment_summary/1.
:- dynamic data_requirements_and_training_data_description/1.
:- dynamic data_transfer_to_third_countries_safeguarded/1.
:- dynamic date_of_release_and_methods_of_distribution/1.
:- dynamic deadline_days/2.
:- dynamic deadline_months/2.
:- dynamic deadline_set_by_notified_body/2.
:- dynamic death_of_person/1.
:- dynamic dedicated_channels_for_communication/1.
:- dynamic deemed_necessary_update/1.
:- dynamic deep_fake/1.
:- dynamic deep_fake_use_authorised_by_law/1.
:- dynamic degree_of_cooperation_with_edps/1.
:- dynamic degree_of_responsibility/1.
:- dynamic delegated_act/1.
:- dynamic delegated_act_concerning_ai_safety_components/1.
:- dynamic demonstrates_compliance_with_requirements/1.
:- dynamic deployer/1.
:- dynamic deployer_contact_details/1.
:- dynamic deployer_processes_description/1.
:- dynamic deployers_informed_and_agreement_concluded/2.
:- dynamic description_of_appropriateness_of_performance_metrics/1.
:- dynamic description_of_intended_hardware/1.
:- dynamic description_of_post_market_performance_evaluation_system/1.
:- dynamic description_of_relevant_changes_lifecycle/1.
:- dynamic description_of_risk_management_system/1.
:- dynamic description_of_solutions_when_no_harmonised_standards/1.
:- dynamic design_specifications/1.
:- dynamic design_specifications_and_training_process/1.
:- dynamic designated_as_single_contact_point/1.
:- dynamic designation_based_on_annex_13_criteria/1.
:- dynamic designation_suspended_restricted_or_withdrawn/1.
:- dynamic development_methods_and_steps/1.
:- dynamic distributor/1.
:- dynamic documentation_created_or_maintained_under_regulation/1.
:- dynamic documentation_insufficient_to_ascertain_infringement/1.
:- dynamic documented_impartiality_procedures/1.
:- dynamic does_not_affect_level_of_protection/1.
:- dynamic does_not_affect_need_for_compliance_high_risk/1.
:- dynamic does_not_materially_influence_decision_making/1.
:- dynamic does_not_represent_parties/2.
:- dynamic does_not_substantially_alter_input/1.
:- dynamic downstream_provider/1.
:- dynamic drawn_up_before_placing_on_market_or_putting_into_service/1.
:- dynamic easily_understood_language/1.
:- dynamic editorial_responsibility_held/1.
:- dynamic education/1.
:- dynamic effective_implementation_of_regulation/1.
:- dynamic electronic_instructions_for_use/1.
:- dynamic emotion_recognition_system/1.
:- dynamic energy_consumption_based_on_computational_resources/1.
:- dynamic equivalent_level_of_compliance/1.
:- dynamic equivalent_reporting_obligations/1.
:- dynamic established_or_located_in_third_country/1.
:- dynamic established_or_located_in_union/1.
:- dynamic established_under_national_law/1.
:- dynamic eu_database_data_entered_by/2.
:- dynamic eu_database_entry_url/1.
:- dynamic eu_declaration_not_drawn_up/1.
:- dynamic eu_declaration_not_drawn_up_correctly/1.
:- dynamic eu_declaration_of_conformity/1.
:- dynamic eu_declaration_of_conformity_accompanies/1.
:- dynamic eu_declaration_of_conformity_copy/1.
:- dynamic evaluate_and_promote_best_practices_public_procurement/1.
:- dynamic evaluation_purpose_assess_compliance/1.
:- dynamic evaluation_purpose_investigate_systemic_risk/1.
:- dynamic evaluation_strategies_with_results/1.
:- dynamic evaluation_under_article_92/1.
:- dynamic exclusively_military_defence_national_security_purpose/1.
:- dynamic exempt_from_informing/2.
:- dynamic exempt_from_informing_sensitive_operational_data/2.
:- dynamic experience/1.
:- dynamic external_features_marking_internal_layout/1.
:- dynamic facilitate_participation_in_standardisation/1.
:- dynamic fees_reduced_proportionately/1.
:- dynamic financial_institution/1.
:- dynamic financial_supervision_authority/1.
:- dynamic floating_point_operation/1.
:- dynamic for_approval_and_use_of_security_equipment/1.
:- dynamic for_purposes_of_law_enforcement/1.
:- dynamic foreseeable_unintended_outcomes_and_risks/1.
:- dynamic forms_of_market_placement/1.
:- dynamic fulfils_eligibility_conditions_and_selection_criteria/1.
:- dynamic full_assessment_completed/2.
:- dynamic fundamental_rights_impact_assessment_summary/1.
:- dynamic general_purpose_ai_model_provider/1.
:- dynamic general_purpose_ai_system/1.
:- dynamic generates_or_manipulates_deep_fake_content/1.
:- dynamic generates_or_manipulates_text_for_public_interest/1.
:- dynamic generates_synthetic_content/1.
:- dynamic guidelines_on_simplified_quality_management_elements/1.
:- dynamic harmonised_standard/1.
:- dynamic harmonised_standard_applied/2.
:- dynamic harmonised_standard_applied_partially/2.
:- dynamic harmonised_standard_does_not_comply/1.
:- dynamic harmonised_standard_does_not_exist/1.
:- dynamic harmonised_standard_insufficient_fundamental_rights/1.
:- dynamic harmonised_standard_not_delivered_in_time/1.
:- dynamic harmonised_standard_published/1.
:- dynamic harmonised_standard_published_with_restriction/1.
:- dynamic harmonised_standard_restricted_part_applied/2.
:- dynamic has_legal_personality/1.
:- dynamic has_recourse_to_subsidiary/2.
:- dynamic high_impact_capabilities/1.
:- dynamic high_risk_ai_system_placed_with_product/2.
:- dynamic high_risk_ai_system_put_into_service_under_product_manufacturer/2.
:- dynamic high_risk_ai_system_related_to_harmonisation_legislation_product/1.
:- dynamic high_risk_purpose/1.
:- dynamic highest_professional_integrity/1.
:- dynamic human_oversight_measures_assessment/1.
:- dynamic implementing_act_template/1.
:- dynamic importer/1.
:- dynamic in_accordance_with_national_rules/1.
:- dynamic independent_from_ai_provider/1.
:- dynamic independent_of_competitors/2.
:- dynamic independent_of_economic_interest_operator/2.
:- dynamic independent_of_provider/2.
:- dynamic inform_market_surveillance_authority_of_request/2.
:- dynamic information_and_documentation/1.
:- dynamic information_classified_pursuant_to_law/1.
:- dynamic information_insufficient/1.
:- dynamic information_on_data_used_for_training_testing_validation/1.
:- dynamic information_on_training_testing_validation_data/1.
:- dynamic information_relevant_to_establish_non_compliance/1.
:- dynamic information_treated_confidentially/2.
:- dynamic information_used_description/1.
:- dynamic informed_authorised_representative/2.
:- dynamic informed_board/1.
:- dynamic informed_consent/1.
:- dynamic informed_consent_given_or_law_enforcement_exception/1.
:- dynamic informed_deployers/2.
:- dynamic informed_distributors/2.
:- dynamic informed_importers/2.
:- dynamic informed_market_surveillance_authorities/2.
:- dynamic informed_notified_body/2.
:- dynamic initial_provider/1.
:- dynamic initial_report_incomplete/1.
:- dynamic input_data/1.
:- dynamic input_data_specifications/1.
:- dynamic inspections_investigations_audits/1.
:- dynamic instructions_for_use/1.
:- dynamic instructions_for_use_and_user_interface/1.
:- dynamic intellectual_property_rights/1.
:- dynamic intended_as_safety_component_of_product/1.
:- dynamic intended_for_law_enforcement_immigration_asylum/1.
:- dynamic intended_for_union_institution_body_office_agency/1.
:- dynamic intended_for_use_by_public_authorities/1.
:- dynamic intended_purpose/1.
:- dynamic intended_purpose_description/1.
:- dynamic intended_purpose_name_provider_version/1.
:- dynamic intended_to_detect_decision_making_patterns/1.
:- dynamic intended_to_improve_result_of_previously_completed_human_activity/1.
:- dynamic intended_to_perform_narrow_procedural_task/1.
:- dynamic intended_to_perform_preparatory_task/1.
:- dynamic interaction_with_external_hardware_software/1.
:- dynamic intermediary_services_liability_provisions_unaffected/1.
:- dynamic international_cooperation_law_enforcement_judicial/1.
:- dynamic international_organisation/1.
:- dynamic interpretation_methods_available/2.
:- dynamic investigation_involves_altering_ai_system/2.
:- dynamic issued_union_technical_documentation_assessment_certificate/1.
:- dynamic jeopardises_public_and_national_security/1.
:- dynamic law_enforcement/1.
:- dynamic law_enforcement_authority/1.
:- dynamic liability_insurance_or_state_assumption/1.
:- dynamic licence_for_model/1.
:- dynamic licence_of_model/1.
:- dynamic linked_enterprise/1.
:- dynamic list_of_harmonised_standards_applied/1.
:- dynamic located_in_union/1.
:- dynamic makes_substantial_modification/2.
:- dynamic making_available_on_market/1.
:- dynamic manner_infringement_became_known/1.
:- dynamic market_surveillance_authority/1.
:- dynamic may_provide_guidance/1.
:- dynamic measures_for_adversarial_testing/1.
:- dynamic meetings_held_per_year/2.
:- dynamic meets_condition_art_51_1_a/1.
:- dynamic meets_conditions_article_51/1.
:- dynamic meets_expert_criteria/1.
:- dynamic meets_requirements_art_31/1.
:- dynamic member_state/1.
:- dynamic member_state_informs_commission/2.
:- dynamic member_states_where_available/1.
:- dynamic microenterprise/1.
:- dynamic mitigation_measures/1.
:- dynamic mitigation_measures_adopted_or_testing_suspended/1.
:- dynamic modality_and_format_of_inputs_and_outputs/1.
:- dynamic modality_and_format_of_inputs_outputs/1.
:- dynamic modality_format_and_maximum_size_of_inputs_outputs/1.
:- dynamic model_evaluation/1.
:- dynamic model_interaction_with_external_hardware_software/1.
:- dynamic model_parameters_publicly_available/1.
:- dynamic modifies_intended_purpose/2.
:- dynamic monitor_operation/2.
:- dynamic more_favourable_worker_protection_permitted/1.
:- dynamic must_cooperate_with_authorities/3.
:- dynamic must_follow_conformity_assessment/2.
:- dynamic must_inform_risk/2.
:- dynamic national_authority_confirms_no_risk/2.
:- dynamic national_competent_authority/1.
:- dynamic national_competent_authority_chosen_for_purpose/2.
:- dynamic national_data_protection_authority/1.
:- dynamic national_market_surveillance_authority_notified/3.
:- dynamic national_measure_taken/2.
:- dynamic national_public_authorities_or_bodies/1.
:- dynamic national_security_competence_unaffected/1.
:- dynamic nature_gravity_duration/1.
:- dynamic nature_gravity_duration_of_infringement/1.
:- dynamic necessary_and_appropriate/1.
:- dynamic negative_conformity_assessment_result/1.
:- dynamic no_authorised_representative_appointed/1.
:- dynamic no_conflicting_activity/2.
:- dynamic no_consultancy_services/1.
:- dynamic no_harmonised_standard_reference_published/1.
:- dynamic no_new_certificates_issued/2.
:- dynamic no_objection_period/2.
:- dynamic no_risk_confirmed_within_month/2.
:- dynamic no_training_technique_used/1.
:- dynamic non_compliance_with_prohibition/1.
:- dynamic non_compliance_with_prohibition_present/1.
:- dynamic non_personal_data/1.
:- dynamic not_directly_involved_in_design/2.
:- dynamic not_directly_involved_in_development/2.
:- dynamic not_directly_involved_in_marketing/2.
:- dynamic not_directly_involved_in_use/2.
:- dynamic not_high_risk_condition/1.
:- dynamic not_high_risk_grounds_summary/1.
:- dynamic not_meant_to_replace_or_influence_human_assessment/1.
:- dynamic notification/1.
:- dynamic notification_of/2.
:- dynamic notification_procedures_followed/1.
:- dynamic notification_received/1.
:- dynamic notified/1.
:- dynamic notified_body_accepts_simplified_form/1.
:- dynamic notified_body_capable_of_supporting_certificates/1.
:- dynamic notified_body_decisions/1.
:- dynamic notified_body_finds_non_compliance/2.
:- dynamic notified_commission/2.
:- dynamic notify_simultaneously/2.
:- dynamic notifying_authority/1.
:- dynamic objection_raised/1.
:- dynamic objections_raised/2.
:- dynamic obtained_in_carrying_out_tasks/1.
:- dynamic obvious_interaction_with_ai/1.
:- dynamic opportunity_to_be_heard/1.
:- dynamic other_activity_performed/1.
:- dynamic other_authority_designated/1.
:- dynamic output_used_exclusively_military_defence_national_security/1.
:- dynamic output_used_in_union/1.
:- dynamic outside_scope_of_union_law/1.
:- dynamic own_initiative_update/1.
:- dynamic participates_in_coordination_activities/1.
:- dynamic participates_in_standardisation/1.
:- dynamic particular_expertise_and_competence_in_ai/1.
:- dynamic partner_enterprise/1.
:- dynamic performance_of_ai_system/1.
:- dynamic performs_profiling_of_natural_persons/1.
:- dynamic period/2.
:- dynamic period_in_which_system_is_in_use/1.
:- dynamic permanent_availability_of_personnel/1.
:- dynamic personal_data/1.
:- dynamic personal_data_protection_law_applies/1.
:- dynamic personnel_experience_knowledge_data/1.
:- dynamic personnel_experience_knowledge_requirements/1.
:- dynamic persons_or_groups_affected/2.
:- dynamic placed_on_market/1.
:- dynamic placing_on_market/1.
:- dynamic placing_on_market_general_purpose_ai_model/1.
:- dynamic placing_on_market_or_putting_into_service/1.
:- dynamic planned_cessation/1.
:- dynamic poses_no_significant_risk_of_harm/1.
:- dynamic positive_conformity_assessment_result/1.
:- dynamic post_market_monitoring_system/1.
:- dynamic predetermined_changes_description/1.
:- dynamic predictions_recommendations_decisions_reversible/1.
:- dynamic prescribed_period/2.
:- dynamic procedures_account_for_provider_size/2.
:- dynamic product_covered_by_union_harmonisation_legislation/1.
:- dynamic product_covered_by_union_harmonisation_legislation_annex_1_section_1/1.
:- dynamic product_manufacturer/1.
:- dynamic product_manufacturer_placing_ai_system_with_product/1.
:- dynamic product_requires_third_party_conformity_assessment/1.
:- dynamic professional_secrecy_observed/1.
:- dynamic profiling/1.
:- dynamic prohibited_practice/1.
:- dynamic prospective_deployer/1.
:- dynamic prospective_provider/1.
:- dynamic provider/1.
:- dynamic provider_confirms_alternative_notified_body/2.
:- dynamic provider_contact_details/1.
:- dynamic provider_documents_assessment/2.
:- dynamic provider_established_in_territory/2.
:- dynamic provider_established_in_union_or_has_representative/1.
:- dynamic provider_identified/1.
:- dynamic provider_identified_and_built/1.
:- dynamic provider_justifies_alternative_solution/2.
:- dynamic provider_or_deployer_aware/2.
:- dynamic provider_provides_documentation_upon_request/2.
:- dynamic provider_subject_to_registration_obligation/1.
:- dynamic provides_independent_technical_or_scientific_advice/3.
:- dynamic provides_information_to_authorities/1.
:- dynamic public_and_national_security_interests/1.
:- dynamic public_authority_in_third_country/1.
:- dynamic publicly_accessible_space/1.
:- dynamic purely_personal_non_professional_activity/1.
:- dynamic puts_name_or_trademark_on/2.
:- dynamic qualified_alert_scientific_panel/1.
:- dynamic quality_management_system/1.
:- dynamic quality_management_system_approval/1.
:- dynamic quality_management_system_approved/1.
:- dynamic quality_management_system_documentation/1.
:- dynamic re_assessment_conducted/1.
:- dynamic real_time/1.
:- dynamic real_world_testing_not_excluded/1.
:- dynamic real_world_testing_plan/1.
:- dynamic real_world_testing_plan_submitted/2.
:- dynamic reason_to_suspect/2.
:- dynamic reasonably_foreseeable_misuse/1.
:- dynamic reasonably_foreseeable_misuse_conditions/1.
:- dynamic reasoned_request_for_source_code/1.
:- dynamic reasons_given_for_decision/2.
:- dynamic reassessment_request_contains_new_reasons/1.
:- dynamic recall_of_ai_system/1.
:- dynamic recall_procedure_established/1.
:- dynamic recognised_expertise_in_ai/1.
:- dynamic reference_published_in_official_journal/1.
:- dynamic refused_certificate_or_approval/1.
:- dynamic registered_business_user_established_in_union/1.
:- dynamic registration_completed_without_undue_delay/1.
:- dynamic registration_not_carried_out/1.
:- dynamic regulated_financial_institution/1.
:- dynamic related_to_technical_specifications_and_procedures/1.
:- dynamic remote/1.
:- dynamic report_made_immediately/1.
:- dynamic representative_established_in_territory/2.
:- dynamic request_for_information_from_market_surveillance_authority/1.
:- dynamic request_update/1.
:- dynamic research_testing_development_prior_to_market/1.
:- dynamic restricted_certificate_or_approval/1.
:- dynamic results_of_evaluation/2.
:- dynamic risk/1.
:- dynamic risk_assessment_performed/2.
:- dynamic risk_investigated/2.
:- dynamic risk_materialisation_measures/1.
:- dynamic risk_to_fundamental_rights/1.
:- dynamic risk_to_health_or_safety/1.
:- dynamic rules_of_procedure_drawn_up/1.
:- dynamic safeguards_independence_objectivity_impartiality/1.
:- dynamic safety_component/1.
:- dynamic safety_component_of_device/1.
:- dynamic same_types_of_ai_systems/2.
:- dynamic sandbox_plan/1.
:- dynamic satisfies_organisational_requirements/1.
:- dynamic scanned_certificate_copy/1.
:- dynamic sectoral_market_surveillance_authority/1.
:- dynamic security_equipment/1.
:- dynamic sensitive_operational_data/1.
:- dynamic sensitive_operational_data_exemption/1.
:- dynamic separate_verification_by_two_persons/1.
:- dynamic separately_verified_and_confirmed/1.
:- dynamic serious_and_substantiated_concern/1.
:- dynamic serious_incident/1.
:- dynamic serious_incident_limited_to_critical_infrastructure_disruption/1.
:- dynamic serious_incident_occurred_in_member_state/2.
:- dynamic serious_incident_reported_during_testing/2.
:- dynamic significant_change_in_design/1.
:- dynamic similar_conformity_assessment_activities/2.
:- dynamic similar_previous_infringements/1.
:- dynamic simplified_technical_documentation_form/1.
:- dynamic single_information_platform/1.
:- dynamic single_set_technical_documentation/1.
:- dynamic sme/1.
:- dynamic sole_purpose_scientific_research_development/1.
:- dynamic source_code/1.
:- dynamic source_code_access_necessary/1.
:- dynamic special_categories_deleted_after_bias_correction/1.
:- dynamic special_categories_not_transmitted/1.
:- dynamic special_categories_of_personal_data/1.
:- dynamic special_categories_processing_records_include_reasons/1.
:- dynamic special_categories_security_measures/1.
:- dynamic special_categories_technical_limitations/1.
:- dynamic specified_not_to_be_changed_into_high_risk/1.
:- dynamic staff_or_persons_dealing_with_operation_and_use/3.
:- dynamic standardisation_request_not_accepted/1.
:- dynamic standardised_templates/1.
:- dynamic start_up/1.
:- dynamic structure_ensures_confidence/1.
:- dynamic subcontracts_task/2.
:- dynamic subject/1.
:- dynamic subject_to_financial_services_law/1.
:- dynamic subject_to_union_financial_services_law/1.
:- dynamic submitter_on_behalf_of_deployer/1.
:- dynamic submitter_on_behalf_of_provider/1.
:- dynamic substantial_modification/1.
:- dynamic sufficient_internal_competences/1.
:- dynamic sufficient_level_achieved/3.
:- dynamic suitable_cybersecurity_requirements/1.
:- dynamic supplement_to_certificate/1.
:- dynamic supplied_incorrect_incomplete_or_misleading_information/1.
:- dynamic suspended_certificate_or_approval/1.
:- dynamic suspension_or_termination_notified/2.
:- dynamic system_architecture_and_computational_resources/1.
:- dynamic system_architecture_description/1.
:- dynamic systemic_risk/1.
:- dynamic systemic_risk_assessment_at_union_level/1.
:- dynamic systemic_risk_at_union_level/1.
:- dynamic tailored_to_needs_of_smes/1.
:- dynamic tasks_intended_to_perform/1.
:- dynamic technical_documentation/1.
:- dynamic technical_documentation_application_includes_no_other_application_declaration/1.
:- dynamic technical_documentation_application_includes_provider_name_address/1.
:- dynamic technical_documentation_application_includes_technical_documentation/1.
:- dynamic technical_documentation_examined/1.
:- dynamic technical_documentation_not_available/1.
:- dynamic technical_knowledge/1.
:- dynamic technical_means_for_integration/1.
:- dynamic termination_date_of_subcontracting/2.
:- dynamic testing_data/1.
:- dynamic testing_duration_limited/1.
:- dynamic testing_effectively_overseen/1.
:- dynamic testing_in_real_world_conditions/1.
:- dynamic testing_procedures_exhausted/1.
:- dynamic testing_registered_public_section/2.
:- dynamic testing_registered_secure_non_public_section/2.
:- dynamic testing_within_reasonable_time/1.
:- dynamic text_underwent_human_review_editorial_control/1.
:- dynamic text_use_authorised_by_law/1.
:- dynamic third_country_conformity_assessment_body/1.
:- dynamic third_country_provider/1.
:- dynamic third_party_supplies/2.
:- dynamic track_document_report_serious_incidents/2.
:- dynamic trade_secrets/1.
:- dynamic trained_and_tested_on_representative_data/1.
:- dynamic training/1.
:- dynamic training_data/1.
:- dynamic training_technique_used/1.
:- dynamic transparency_obligation_article_50/1.
:- dynamic type_and_nature_of_ai_systems_integratable/1.
:- dynamic undertaking/1.
:- dynamic union_ai_testing_support/1.
:- dynamic union_institution_body_office_agency/1.
:- dynamic union_law_considers_application_disproportionate/1.
:- dynamic unplanned_cessation/1.
:- dynamic up_to_date/1.
:- dynamic urgency_justified/1.
:- dynamic use_in_accordance_with_instructions/2.
:- dynamic use_in_accordance_with_intended_purpose/1.
:- dynamic use_not_restricted_to_national_territory/1.
:- dynamic use_of_assessed_systems_permitted/2.
:- dynamic use_period_and_frequency_description/1.
:- dynamic used_by_public_authority_or_on_behalf/1.
:- dynamic user_interface_description_for_deployer/1.
:- dynamic uses_simplified_form/1.
:- dynamic validation_and_testing_procedures/1.
:- dynamic validation_data/1.
:- dynamic validation_data_set/1.
:- dynamic versions_of_relevant_software/1.
:- dynamic versions_of_software_firmware_and_update_requirements/1.
:- dynamic vulnerable_subjects_protected/1.
:- dynamic widespread_infringement/1.
:- dynamic withdrawal_of_ai_system/1.
:- dynamic withdrawn_certificate_or_approval/1.
:- dynamic within_days/2.
:- dynamic without_delay/0.
:- dynamic without_delay/1.
:- dynamic years/1.

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
declared(able_to_detect_anomalies_dysfunctions_unexpected_performance/2, 'able to detect anomalies dysfunctions unexpected performance', 'reconciled').
declared(acting_contrary_to_obligations/1, 'provider acting contrary to its obligations under the regulation', 'reconciled').
declared(adverse_impact_on_fundamental_rights/1, 'adverse impact on fundamental rights', 'reconciled').
declared(ai_system_safety_component/1, 'AI system that is a safety component within the meaning of the AI Act', 'reconciled').
declared(annex_3_point_1/1, 'high-risk AI system referred to in Annex III point 1', 'reconciled').
declared(annual_total_worldwide_turnover/2, 'annual total worldwide turnover of an entity in a financial year', 'reconciled').
declared(approved_code_of_practice/1, 'code of practice approved by Commission implementing act with general validity', 'reconciled').
declared(article_31_requirements/1, 'article 31 requirements', 'reconciled').
declared(assigned_human_oversight/2, 'deployer assigns human oversight to qualified natural persons', 'reconciled').
declared(authorised_persons_only/1, 'only authorised persons have access with appropriate confidentiality obligations', 'reconciled').
declared(automatically_generated/1, 'logs automatically generated by the high-risk AI system as referred to in Article 19', 'reconciled').
declared(aware_of_relevant_standards/1, 'notified body is aware and up to date in respect of relevant standards', 'reconciled').
declared(before_placing_on_market_or_putting_into_service/1, 'before placing on market or putting into service', 'reconciled').
declared(certificate/1, 'certificate issued by a notified body', 'reconciled').
declared(certificate_valid/1, 'certificate remains valid', 'reconciled').
declared(concluded_not_high_risk/1, 'provider has concluded the AI system is not high-risk according to Article 6(3)', 'reconciled').
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'reconciled').
declared(conformity_assessment_procedure/1, 'procedure for demonstrating conformity of AI system', 'reconciled').
declared(cybersecurity_technical_solution/1, 'technical solution ensuring cybersecurity of an AI system', 'reconciled').
declared(delegated_act_concerning_ai_safety_components/1, 'delegated act concerning ai safety components', 'reconciled').
declared(designated_as_single_contact_point/1, 'designated as single contact point', 'reconciled').
declared(does_not_represent_parties/2, 'conformity assessment body, top-level management or personnel does not represent parties engaged in design, development, marketing or use', 'reconciled').
declared(easily_understood_language/1, 'language easily understood by the authority in an official language of Union institutions as indicated by Member State', 'reconciled').
declared(effective_proportionate_dissuasive/1, 'penalty is effective, proportionate and dissuasive', 'reconciled').
declared(eu_declaration_of_conformity_accompanies/1, 'system accompanied by EU declaration of conformity', 'reconciled').
declared(exempt_from_informing/2, 'who is exempt, from what obligation', 'reconciled').
declared(exempt_from_informing_sensitive_operational_data/2, 'exempt from informing sensitive operational data', 'reconciled').
declared(for_purposes_of_law_enforcement/1, 'for purposes of law enforcement', 'reconciled').
declared(from_competent_authority/2, 'reasoned request from a relevant competent authority', 'reconciled').
declared(general_purpose_ai_model_provider/1, 'provider of a general-purpose AI model', 'reconciled').
declared(harmonised_standard_published/1, 'harmonised standard published covering the obligations', 'reconciled').
declared(high_risk_ai_system/1, 'AI system listed in Annex III as high-risk', 'reconciled').
declared(high_risk_biometric_remote_identification/1, 'remote biometric identification system listed as high-risk in Annex III', 'reconciled').
declared(high_risk_purpose/1, 'high risk purpose', 'reconciled').
declared(implementing_act_template/1, 'Commission implementing act laying down template for post-market monitoring plan', 'reconciled').
declared(in_accordance_with_national_rules/1, 'in accordance with national rules', 'reconciled').
declared(independent_of_economic_interest_operator/2, 'notified body is independent of any other operator having economic interest in assessed high-risk AI systems', 'reconciled').
declared(inform_commission/2, 'Member State informs Commission', 'reconciled').
declared(information_and_documentation/1, 'information and documentation necessary to demonstrate conformity with requirements', 'reconciled').
declared(interpretation_methods_available/2, 'interpretation methods available', 'reconciled').
declared(keep_at_disposal/2, 'entity keeps document at disposal of authority for a period', 'reconciled').
declared(law_enforcement_area/1, 'high-risk AI system in law enforcement area per Annex III point 1', 'reconciled').
declared(list_publicly_available/1, 'list of fundamental rights authorities made publicly available', 'reconciled').
declared(logs_under_control/2, 'logs of high-risk AI system under control of provider', 'reconciled').
declared(may_provide_guidance/1, 'may provide guidance', 'reconciled').
declared(meets_requirements_art_31/1, 'entity meets the requirements laid down in Article 31', 'reconciled').
declared(member_state/1, 'a Member State of the European Union', 'reconciled').
declared(monitor_operation/2, 'deployer monitors operation of high-risk AI system', 'reconciled').
declared(must_be_resilient_against_unauthorised_alteration/1, 'AI system is resilient against attempts by unauthorised third parties to alter use, outputs or performance', 'reconciled').
declared(must_comply_with_registration/2, 'must comply with registration', 'reconciled').
declared(must_cooperate_with_authorities/2, 'cooperate with AI Office and competent authorities upon reasoned request', 'reconciled').
declared(must_cooperate_with_authorities/3, 'must cooperate with authorities', 'reconciled').
declared(must_draw_up_eu_declaration/2, 'must draw up eu declaration', 'reconciled').
declared(must_encourage_development/2, 'actor encourages development of benchmarks and measurement methodologies', 'reconciled').
declared(must_ensure_adequate_cybersecurity/1, 'provider of GPAI model with systemic risk must ensure adequate cybersecurity protection for model and physical infrastructure', 'reconciled').
declared(must_ensure_compliance/2, 'must ensure compliance', 'reconciled').
declared(must_inform_market_surveillance_authority/2, 'must inform market surveillance authority', 'reconciled').
declared(must_inform_risk/2, 'must inform risk', 'reconciled').
declared(must_investigate_causes/2, 'investigation of causes of risk in collaboration with deployer', 'reconciled').
declared(must_keep_declaration_up_to_date/2, 'provider keeps EU declaration of conformity up-to-date', 'reconciled').
declared(must_keep_documentation/2, 'provider must keep documentation at disposal of national competent authorities', 'reconciled').
declared(must_keep_technical_documentation_up_to_date/2, 'must keep technical documentation up to date', 'reconciled').
declared(must_not_provide_consultancy_services/1, 'notifying authority shall not offer or provide consultancy services on a commercial or competitive basis', 'reconciled').
declared(must_notify_market_surveillance_authority/2, 'must notify market surveillance authority', 'reconciled').
declared(must_provide/2, 'who is obliged to provide, what to provide', 'reconciled').
declared(must_provide/3, 'who must provide what information to whom', 'reconciled').
declared(must_report/2, 'who is obliged to report, what about', 'reconciled').
declared(must_report_serious_incident/2, 'must report serious incident', 'reconciled').
declared(must_submit_annual_report/2, 'who must submit annual report to whom about real-time remote biometric identification use', 'reconciled').
declared(must_supply_information/2, 'provider or representative obliged to supply requested information', 'reconciled').
declared(must_take_corrective_actions/2, 'operator required to take corrective actions, withdraw, or recall AI system', 'reconciled').
declared(must_take_necessary_steps/2, 'who is obliged to take steps, what steps', 'reconciled').
declared(must_take_restrictive_measures/2, 'market surveillance authorities ensure appropriate restrictive measures taken without undue delay', 'reconciled').
declared(must_treat_information_confidentially/2, 'obligation to treat information and documentation in accordance with confidentiality obligations', 'reconciled').
declared(national_data_protection_authority/1, 'competent data protection supervisory authority under GDPR or LED', 'reconciled').
declared(national_market_surveillance_authority_notified/3, 'national market surveillance authority notified', 'reconciled').
declared(nature_gravity_duration/1, 'nature, gravity and duration of the infringement', 'reconciled').
declared(new_conformity_assessment_required/1, 'new conformity assessment procedure required for the AI system', 'reconciled').
declared(no_objection_within/2, 'no objection raised by Member State or Commission within 15 calendar days of receipt of information', 'reconciled').
declared(non_compliance_with_prohibition/1, 'non-compliance with the prohibition of AI practices under Article 5', 'reconciled').
declared(not_directly_involved_in_design/2, 'conformity assessment body, top-level management or personnel not directly involved in design of high-risk AI systems', 'reconciled').
declared(not_directly_involved_in_development/2, 'conformity assessment body, top-level management or personnel not directly involved in development of high-risk AI systems', 'reconciled').
declared(not_directly_involved_in_marketing/2, 'conformity assessment body, top-level management or personnel not directly involved in marketing of high-risk AI systems', 'reconciled').
declared(not_directly_involved_in_use/2, 'conformity assessment body, top-level management or personnel not directly involved in use of high-risk AI systems', 'reconciled').
declared(other_union_harmonisation_legislation/1, 'legislation listed in Annex I Section B as other Union harmonisation legislation', 'reconciled').
declared(period_in_which_system_is_in_use/1, 'period of each use with start and end date and time', 'reconciled').
declared(permanent_availability_of_personnel/1, 'notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel', 'reconciled').
declared(permitted_testing_in_real_world_conditions/2, 'testing in real world conditions is permitted for provider and system', 'reconciled').
declared(personnel_experience_knowledge_data/1, 'personnel possess experience and knowledge relating to data and data computing', 'reconciled').
declared(personnel_experience_knowledge_requirements/1, 'personnel possess experience and knowledge relating to requirements set out in Chapter III Section 2', 'reconciled').
declared(placed_on_market/1, 'AI system placed on the market', 'reconciled').
declared(presents_risk/1, 'system presents a risk within the meaning of Article 79(1)', 'reconciled').
declared(provider_identified/1, 'provider identified', 'reconciled').
declared(provider_identified_and_built/1, 'provider identified and built', 'reconciled').
declared(qualified_alert_scientific_panel/1, 'qualified alert from the scientific panel', 'reconciled').
declared(reasonably_foreseeable_misuse_conditions/1, 'reasonably foreseeable misuse conditions', 'reconciled').
declared(reference_published_in_official_journal/1, 'reference published in official journal', 'reconciled').
declared(registered_in_eu_database/1, 'system registered in EU database according to Article 49', 'reconciled').
declared(relevant_circumstance/1, 'circumstance to be taken into account when deciding on a fine', 'reconciled').
declared(risk_to_fundamental_rights/1, 'risk to fundamental rights', 'reconciled').
declared(risk_to_health_or_safety/1, 'risk to the health or safety of persons', 'reconciled').
declared(risk_to_health_safety_fundamental_rights/1, 'risk to health safety fundamental rights', 'reconciled').
declared(scientific_panel_expert/1, 'expert selected to serve on the scientific panel', 'reconciled').
declared(sensitive_operational_data_exemption/1, 'obligation to inform does not cover sensitive operational data of law-enforcement activities', 'reconciled').
declared(separate_verification_by_two_persons/1, 'identification verified and confirmed by at least two natural persons', 'reconciled').
declared(separately_verified_and_confirmed/1, 'separately verified and confirmed', 'reconciled').
declared(submit_copy_upon_request/2, 'entity submits copy of document to authority upon request', 'reconciled').
declared(sufficient_internal_competences/1, 'notified body has sufficient internal competences to evaluate tasks conducted by external parties', 'reconciled').
declared(third_country_provider/1, 'provider established in a third country', 'reconciled').
declared(union_ai_testing_support/1, 'Union AI testing support activities', 'reconciled').
declared(union_harmonisation_legislation_applies/1, 'Union harmonisation legislation listed in Annex I applies to product', 'reconciled').
declared(union_law_considers_application_disproportionate/1, 'union law considers application disproportionate', 'reconciled').
declared(up_to_date/1, 'technical documentation kept up to date', 'reconciled').
declared(urgency_justified/1, 'duly justified case of urgency allowing commencement without prior registration or authorisation', 'reconciled').
declared(use_in_accordance_with_instructions/2, 'deployer uses system per instructions for use', 'reconciled').
declared(use_in_accordance_with_intended_purpose/1, 'use in accordance with intended purpose', 'reconciled').
declared(used_by_public_authority_or_on_behalf/1, 'used by public authority or on behalf', 'reconciled').
declared(voluntary_model_terms/1, 'AI Office may develop and recommend voluntary model terms for contracts', 'reconciled').
declared(without_delay/0, 'without delay', 'reconciled').
declared(without_delay/1, 'action taken without undue delay', 'reconciled').
alias(enabled_to_detect_anomalies_dysfunctions_unexpected_performance/2, able_to_detect_anomalies_dysfunctions_unexpected_performance/2).
alias(provider_acting_contrary_to_obligations/1, acting_contrary_to_obligations/1).
alias(poses_adverse_impact_on_fundamental_rights/1, adverse_impact_on_fundamental_rights/1).
alias(ai_safety_component/1, ai_system_safety_component/1).
alias(listed_in_annex_3_point_1/1, annex_3_point_1/1).
alias(total_worldwide_annual_turnover/2, annual_total_worldwide_turnover/2).
alias(code_of_practice_approved_by_commission/1, approved_code_of_practice/1).
alias(requirements_set_out_in_article_31/1, article_31_requirements/1).
alias(human_oversight_assigned/2, assigned_human_oversight/2).
alias(only_authorised_persons_access/1, authorised_persons_only/1).
alias(automatically_generated_logs/1, automatically_generated/1).
alias(logs_automatically_generated/1, automatically_generated/1).
alias(must_be_aware_of_relevant_standards/1, aware_of_relevant_standards/1).
alias(timing_before_placing_on_market_or_putting_into_service/1, before_placing_on_market_or_putting_into_service/1).
alias(certificate_issued_by_notified_body/1, certificate/1).
alias(certificate_remains_valid/1, certificate_valid/1).
alias(not_high_risk_pursuant_to/1, concluded_not_high_risk/1).
alias(conformity_assessment_internal_control/1, conformity_assessment_based_on_internal_control/1).
alias(conformity_assessment_procedure_applies/1, conformity_assessment_procedure/1).
alias(cybersecurity_technical_solution_appropriate/1, cybersecurity_technical_solution/1).
alias(delegated_act_concerning_safety_component_ai_system/1, delegated_act_concerning_ai_safety_components/1).
alias(designated_as_single_point_of_contact/1, designated_as_single_contact_point/1).
alias(must_not_represent_parties/2, does_not_represent_parties/2).
alias(language_easily_understood/1, easily_understood_language/1).
alias(fine_effective_proportionate_dissuasive/1, effective_proportionate_dissuasive/1).
alias(accompanied_by_eu_declaration_of_conformity/1, eu_declaration_of_conformity_accompanies/1).
alias(exempt_from_disclosure/2, exempt_from_informing/2).
alias(exempt_from_reporting_sensitive_operational_data/2, exempt_from_informing_sensitive_operational_data/2).
alias(used_for_purposes_of_law_enforcement/1, for_purposes_of_law_enforcement/1).
alias(reasoned_request_from_competent_authority/2, from_competent_authority/2).
alias(gpaim_provider/1, general_purpose_ai_model_provider/1).
alias(harmonised_standard_reference_published/1, harmonised_standard_published/1).
alias(listed_in_annex_3/1, high_risk_ai_system/1).
alias(area_listed_in_annex_3/1, high_risk_ai_system/1).
alias(listed_in_annex_3_area/1, high_risk_ai_system/1).
alias(ai_system_listed_in_annex_3/1, high_risk_ai_system/1).
alias(annex_3_high_risk_ai_system/1, high_risk_ai_system/1).
alias(ai_system_covered_by_annex_3/1, high_risk_ai_system/1).
alias(high_risk_ai_system_listed_in_annex_3/1, high_risk_ai_system/1).
alias(high_risk_ai_system_referred_to_in_annex_3/1, high_risk_ai_system/1).
alias(remote_biometric_identification_high_risk/1, high_risk_biometric_remote_identification/1).
alias(classified_as_high_risk/1, high_risk_purpose/1).
alias(purpose_classified_as_high_risk/1, high_risk_purpose/1).
alias(implementing_act_template_required/1, implementing_act_template/1).
alias(in_accordance_with_detailed_rules_of_national_law/1, in_accordance_with_national_rules/1).
alias(must_be_independent_of_economic_interest_operator/2, independent_of_economic_interest_operator/2).
alias(must_inform_commission/2, inform_commission/2).
alias(necessary_information_and_documentation/1, information_and_documentation/1).
alias(interpretation_tools_and_methods_available/2, interpretation_methods_available/2).
alias(keep_documents_at_disposal/2, keep_at_disposal/2).
alias(must_keep_documents_at_disposal/2, keep_at_disposal/2).
alias(must_keep_declaration_at_disposal/2, keep_at_disposal/2).
alias(in_area_of_law_enforcement/1, law_enforcement_area/1).
alias(must_make_list_publicly_available/1, list_publicly_available/1).
alias(under_control/2, logs_under_control/2).
alias(may_provide_advice_on_guidance_documents/1, may_provide_guidance/1).
alias(satisfied_requirements_art_31/1, meets_requirements_art_31/1).
alias(eu_member_state/1, member_state/1).
alias(must_monitor_operation/2, monitor_operation/2).
alias(resilient_against_unauthorised_alteration/1, must_be_resilient_against_unauthorised_alteration/1).
alias(must_comply_with_registration_obligations/2, must_comply_with_registration/2).
alias(cooperate_with_competent_authorities/2, must_cooperate_with_authorities/2).
alias(must_cooperate_with_national_competent_authorities/2, must_cooperate_with_authorities/2).
alias(cooperate_with_authorities/2, must_cooperate_with_authorities/2).
alias(must_cooperate_with_competent_authorities/3, must_cooperate_with_authorities/3).
alias(must_draw_up_eu_declaration_of_conformity/2, must_draw_up_eu_declaration/2).
alias(encourage_development/2, must_encourage_development/2).
alias(must_ensure_cybersecurity_protection/1, must_ensure_adequate_cybersecurity/1).
alias(must_ensure_product_compliance/2, must_ensure_compliance/2).
alias(must_ensure_compliance_with_requirements/2, must_ensure_compliance/2).
alias(must_inform_market_surveillance_authorities/2, must_inform_market_surveillance_authority/2).
alias(must_inform_authorities_of_risk/2, must_inform_risk/2).
alias(investigate_causes/2, must_investigate_causes/2).
alias(keep_declaration_up_to_date/2, must_keep_declaration_up_to_date/2).
alias(must_keep_documentation_available/2, must_keep_documentation/2).
alias(keep_documentation_available/2, must_keep_documentation/2).
alias(must_keep_up_to_date_technical_documentation/2, must_keep_technical_documentation_up_to_date/2).
alias(must_not_provide_commercial_consultancy/1, must_not_provide_consultancy_services/1).
alias(must_report_to_market_surveillance_authority/2, must_notify_market_surveillance_authority/2).
alias(must_provide_information/2, must_provide/2).
alias(must_provide_information_on_request/2, must_provide/2).
alias(must_provide_information_upon_request/2, must_provide/2).
alias(must_provide_information_on_reasoned_request/2, must_provide/2).
alias(provide_information_on_request/2, must_provide/2).
alias(must_provide_information/3, must_provide/3).
alias(must_provide_information_and_documentation/3, must_provide/3).
alias(must_submit/2, must_report/2).
alias(must_submit_report/2, must_report/2).
alias(must_inform_of_serious_incident/2, must_report_serious_incident/2).
alias(must_publish_annual_report/2, must_submit_annual_report/2).
alias(must_supply_requested_information/2, must_supply_information/2).
alias(must_take_corrective_action/2, must_take_corrective_actions/2).
alias(must_take_corrective_measures/2, must_take_corrective_actions/2).
alias(must_take_appropriate_steps/2, must_take_necessary_steps/2).
alias(must_take_appropriate_measures/2, must_take_necessary_steps/2).
alias(must_take_necessary_steps_to_comply/2, must_take_necessary_steps/2).
alias(ensure_restrictive_measures/2, must_take_restrictive_measures/2).
alias(must_take_restriction_measures/2, must_take_restrictive_measures/2).
alias(must_ensure_restrictive_measures/2, must_take_restrictive_measures/2).
alias(must_treat_confidentially/2, must_treat_information_confidentially/2).
alias(data_protection_supervisory_authority/1, national_data_protection_authority/1).
alias(reported_to_national_market_surveillance_authority/3, national_market_surveillance_authority_notified/3).
alias(nature_gravity_duration_of_infringement/1, nature_gravity_duration/1).
alias(requires_new_conformity_assessment/1, new_conformity_assessment_required/1).
alias(no_objection_within_period/2, no_objection_within/2).
alias(non_compliance_with_art_5_prohibition/1, non_compliance_with_prohibition/1).
alias(must_not_be_directly_involved_in_design/2, not_directly_involved_in_design/2).
alias(must_not_be_directly_involved_in_development/2, not_directly_involved_in_development/2).
alias(must_not_be_directly_involved_in_marketing/2, not_directly_involved_in_marketing/2).
alias(must_not_be_directly_involved_in_use/2, not_directly_involved_in_use/2).
alias(subject_to_other_union_harmonisation_legislation/1, other_union_harmonisation_legislation/1).
alias(use_period/1, period_in_which_system_is_in_use/1).
alias(must_have_permanent_availability_of_personnel/1, permanent_availability_of_personnel/1).
alias(authorises_testing_in_real_world_conditions/2, permitted_testing_in_real_world_conditions/2).
alias(must_have_personnel_with_experience_knowledge_data/1, personnel_experience_knowledge_data/1).
alias(must_have_personnel_with_experience_knowledge_requirements/1, personnel_experience_knowledge_requirements/1).
alias(placed_on_union_market/1, placed_on_market/1).
alias(placed_on_market_in_union/1, placed_on_market/1).
alias(system_presents_risk/1, presents_risk/1).
alias(identified_by_provider/1, provider_identified/1).
alias(identified_and_built_by_provider/1, provider_identified_and_built/1).
alias(qualified_alert_from_scientific_panel/1, qualified_alert_scientific_panel/1).
alias(conditions_of_reasonably_foreseeable_misuse/1, reasonably_foreseeable_misuse_conditions/1).
alias(references_published_in_official_journal/1, reference_published_in_official_journal/1).
alias(scheme_references_published_in_official_journal/1, reference_published_in_official_journal/1).
alias(system_registered_in_eu_database/1, registered_in_eu_database/1).
alias(circumstance_for_fine_decision/1, relevant_circumstance/1).
alias(risk_to_fundamental_rights_of_persons/1, risk_to_fundamental_rights/1).
alias(risk_to_health_or_safety_of_persons/1, risk_to_health_or_safety/1).
alias(risk_to_health_or_safety_or_fundamental_rights/1, risk_to_health_safety_fundamental_rights/1).
alias(independent_expert_from_scientific_panel/1, scientific_panel_expert/1).
alias(sensitive_operational_data_excluded/1, sensitive_operational_data_exemption/1).
alias(required_separate_verification_by_two_persons/1, separate_verification_by_two_persons/1).
alias(identification_separately_verified_and_confirmed/1, separately_verified_and_confirmed/1).
alias(must_submit_copy_upon_request/2, submit_copy_upon_request/2).
alias(must_have_sufficient_internal_competences/1, sufficient_internal_competences/1).
alias(provider_established_in_third_country/1, third_country_provider/1).
alias(union_ai_testing_support_structure/1, union_ai_testing_support/1).
alias(covered_by_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(product_covered_by_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(product_covered_by_union_harmonisation_legislation/1, union_harmonisation_legislation_applies/1).
alias(union_or_national_law_considers_disproportionate/1, union_law_considers_application_disproportionate/1).
alias(kept_up_to_date/1, up_to_date/1).
alias(duly_justified_urgency/1, urgency_justified/1).
alias(must_use_in_accordance_with_instructions/2, use_in_accordance_with_instructions/2).
alias(used_in_accordance_with_intended_purpose/1, use_in_accordance_with_intended_purpose/1).
alias(used_by_competent_public_authority_or_on_behalf/1, used_by_public_authority_or_on_behalf/1).
alias(may_develop_voluntary_model_terms/1, voluntary_model_terms/1).
alias(without_undue_delay/0, without_delay/0).
alias(without_undue_delay/1, without_delay/1).

% ==== celex:32024R1689/oj#art_1 ====
declared(objective_purpose/1, 'the purpose pursued by the regulation', 'celex:32024R1689/oj#art_1').
declared(regulation_lays_down/1, 'the regulation lays down this matter', 'celex:32024R1689/oj#art_1').
objective_purpose(improve_functioning_of_internal_market).
objective_purpose(promote_uptake_of_human_centric_and_trustworthy_ai).
objective_purpose(ensure_high_level_of_protection_of_health).
objective_purpose(ensure_high_level_of_protection_of_safety).
objective_purpose(ensure_high_level_of_protection_of_fundamental_rights).
objective_purpose(ensure_high_level_of_protection_of_democracy).
objective_purpose(ensure_high_level_of_protection_of_rule_of_law).
objective_purpose(ensure_high_level_of_protection_of_environmental_protection).
objective_purpose(protect_against_harmful_effects_of_ai_systems_in_union).
objective_purpose(support_innovation).
regulation_lays_down(harmonised_rules_for_placing_on_market_putting_into_service_and_use_of_ai_systems_in_union).
regulation_lays_down(prohibitions_of_certain_ai_practices).
regulation_lays_down(specific_requirements_for_high_risk_ai_systems_and_obligations_for_operators).
regulation_lays_down(harmonised_transparency_rules_for_certain_ai_systems).
regulation_lays_down(harmonised_rules_for_placing_on_market_of_general_purpose_ai_models).
regulation_lays_down(rules_on_market_monitoring_market_surveillance_governance_and_enforcement).
regulation_lays_down(measures_to_support_innovation_with_focus_on_smes_including_start_ups).
provenance(objective_purpose/1, 'celex:32024R1689/oj#art_1').
provenance(regulation_lays_down/1, 'celex:32024R1689/oj#art_1').
references('celex:32024R1689/oj#art_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_1', 'celex:12016P/oj').

% ==== celex:32024R1689/oj#art_2 ====
declared(regulation_applies_to/1, 'the AI Act applies to the entity or person', 'celex:32024R1689/oj#art_2').
declared(regulation_does_not_apply_to/1, 'the AI Act does not apply to the entity, system, or activity', 'celex:32024R1689/oj#art_2').
declared(established_or_located_in_union/1, 'entity has place of establishment or is located in the Union', 'celex:32024R1689/oj#art_2').
declared(established_or_located_in_third_country/1, 'entity has place of establishment or is located in a third country', 'celex:32024R1689/oj#art_2').
declared(output_used_in_union/1, 'output produced by the AI system is used in the Union', 'celex:32024R1689/oj#art_2').
declared(placing_on_market_or_putting_into_service/1, 'placing on the market or putting into service', 'celex:32024R1689/oj#art_2').
declared(placing_on_market_general_purpose_ai_model/1, 'placing on the market a general-purpose AI model', 'celex:32024R1689/oj#art_2').
declared(affected_person/1, 'person affected by an AI system', 'celex:32024R1689/oj#art_2').
declared(located_in_union/1, 'person is located in the Union', 'celex:32024R1689/oj#art_2').
declared(product_manufacturer_placing_ai_system_with_product/1, 'product manufacturer placing on the market or putting into service an AI system together with their product under their own name or trademark', 'celex:32024R1689/oj#art_2').
declared(authorised_representative_not_established_in_union/1, 'authorised representative of a provider not established in the Union', 'celex:32024R1689/oj#art_2').
declared(high_risk_ai_system_related_to_harmonisation_legislation_product/1, 'high-risk AI system related to a product covered by Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#art_2').
declared(limited_application_for_harmonisation_legislation_products/1, 'only specific articles apply to high-risk AI systems related to products covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_2').
declared(outside_scope_of_union_law/1, 'area outside the scope of Union law', 'celex:32024R1689/oj#art_2').
declared(national_security_competence_unaffected/1, 'competences of Member States concerning national security are unaffected', 'celex:32024R1689/oj#art_2').
declared(exclusively_military_defence_national_security_purpose/1, 'AI system placed on the market, put into service, or used exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(output_used_exclusively_military_defence_national_security/1, 'output used in the Union exclusively for military, defence or national security purposes', 'celex:32024R1689/oj#art_2').
declared(public_authority_in_third_country/1, 'public authority in a third country', 'celex:32024R1689/oj#art_2').
declared(international_organisation/1, 'international organisation', 'celex:32024R1689/oj#art_2').
declared(international_cooperation_law_enforcement_judicial/1, 'use of AI systems in framework of international cooperation or agreements for law enforcement and judicial cooperation with the Union or Member States', 'celex:32024R1689/oj#art_2').
declared(adequate_safeguards_fundamental_rights/1, 'third country or international organisation provides adequate safeguards with respect to protection of fundamental rights and freedoms of individuals', 'celex:32024R1689/oj#art_2').
declared(intermediary_services_liability_provisions_unaffected/1, 'provisions on liability of providers of intermediary services are unaffected', 'celex:32024R1689/oj#art_2').
declared(sole_purpose_scientific_research_development/1, 'AI system or AI model specifically developed and put into service for the sole purpose of scientific research and development', 'celex:32024R1689/oj#art_2').
declared(personal_data_protection_law_applies/1, 'Union law on protection of personal data, privacy and confidentiality of communications applies to personal data processed in connection with rights and obligations laid down in the AI Act', 'celex:32024R1689/oj#art_2').
declared(research_testing_development_prior_to_market/1, 'research, testing or development activity regarding AI systems or AI models prior to their being placed on the market or put into service', 'celex:32024R1689/oj#art_2').
declared(real_world_testing_not_excluded/1, 'testing in real world conditions is not covered by the exclusion for pre-market research, testing or development', 'celex:32024R1689/oj#art_2').
declared(consumer_protection_product_safety_rules_unaffected/1, 'rules laid down by other Union legal acts related to consumer protection and product safety are unaffected', 'celex:32024R1689/oj#art_2').
declared(purely_personal_non_professional_activity/1, 'deployer is a natural person using AI systems in the course of a purely personal non-professional activity', 'celex:32024R1689/oj#art_2').
declared(more_favourable_worker_protection_permitted/1, 'Union or Member States may maintain or introduce more favourable laws for workers or collective agreements', 'celex:32024R1689/oj#art_2').
declared(free_and_open_source_licence/1, 'AI system released under free and open-source licence', 'celex:32024R1689/oj#art_2').
regulation_applies_to(P) :-
    provider(P),
    placing_on_market_or_putting_into_service(S),
    ai_system(S),
    placing_on_market(S).
regulation_applies_to(P) :-
    provider(P),
    placing_on_market_or_putting_into_service(S),
    ai_system(S),
    putting_into_service(S).
regulation_applies_to(P) :-
    provider(P),
    placing_on_market_general_purpose_ai_model(M),
    general_purpose_ai_model(M).
regulation_applies_to(D) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_union(D).
regulation_applies_to(P) :-
    provider(P),
    ai_system(S),
    established_or_located_in_third_country(P),
    output_used_in_union(S).
regulation_applies_to(D) :-
    deployer(D),
    ai_system(S),
    established_or_located_in_third_country(D),
    output_used_in_union(S).
regulation_applies_to(I) :-
    importer(I),
    ai_system(S).
regulation_applies_to(D) :-
    distributor(D),
    ai_system(S).
regulation_applies_to(M) :-
    product_manufacturer(M),
    product_manufacturer_placing_ai_system_with_product(M).
regulation_applies_to(R) :-
    authorised_representative(R),
    authorised_representative_not_established_in_union(R).
regulation_applies_to(P) :-
    affected_person(P),
    located_in_union(P).
limited_application_for_harmonisation_legislation_products(S) :-
    high_risk_ai_system(S),
    high_risk_ai_system_related_to_harmonisation_legislation_product(S).
regulation_does_not_apply_to(A) :-
    outside_scope_of_union_law(A).
national_security_competence_unaffected.
regulation_does_not_apply_to(S) :-
    ai_system(S),
    exclusively_military_defence_national_security_purpose(S).
regulation_does_not_apply_to(S) :-
    ai_system(S),
    \+ placing_on_market(S),
    \+ putting_into_service(S),
    output_used_exclusively_military_defence_national_security(S).
regulation_does_not_apply_to(A) :-
    public_authority_in_third_country(A),
    international_cooperation_law_enforcement_judicial(A),
    adequate_safeguards_fundamental_rights(A).
regulation_does_not_apply_to(O) :-
    international_organisation(O),
    international_cooperation_law_enforcement_judicial(O),
    adequate_safeguards_fundamental_rights(O).
intermediary_services_liability_provisions_unaffected.
regulation_does_not_apply_to(S) :-
    ai_system(S),
    sole_purpose_scientific_research_development(S).
regulation_does_not_apply_to(M) :-
    general_purpose_ai_model(M),
    sole_purpose_scientific_research_development(M).
personal_data_protection_law_applies.
regulation_does_not_apply_to(A) :-
    research_testing_development_prior_to_market(A).
real_world_testing_not_excluded.
consumer_protection_product_safety_rules_unaffected.
regulation_does_not_apply_to(D) :-
    deployer(D),
    purely_personal_non_professional_activity(D).
more_favourable_worker_protection_permitted.
regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ prohibited_practice(S).
declared(prohibited_practice/1, 'AI system falls under Article 5 prohibited practices', 'celex:32024R1689/oj#art_2').
regulation_does_not_apply_to(S) :-
    ai_system(S),
    free_and_open_source_licence(S),
    \+ high_risk_ai_system(S),
    \+ transparency_obligation_article_50(S).
declared(transparency_obligation_article_50/1, 'AI system falls under Article 50 transparency obligations', 'celex:32024R1689/oj#art_2').
provenance(regulation_applies_to/1, 'celex:32024R1689/oj#art_2').
provenance(regulation_does_not_apply_to/1, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(established_or_located_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_2').
provenance(placing_on_market_general_purpose_ai_model/1, 'celex:32024R1689/oj#art_2').
provenance(affected_person/1, 'celex:32024R1689/oj#art_2').
provenance(located_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(product_manufacturer_placing_ai_system_with_product/1, 'celex:32024R1689/oj#art_2').
provenance(authorised_representative_not_established_in_union/1, 'celex:32024R1689/oj#art_2').
provenance(high_risk_ai_system_related_to_harmonisation_legislation_product/1, 'celex:32024R1689/oj#art_2').
provenance(limited_application_for_harmonisation_legislation_products/1, 'celex:32024R1689/oj#art_2').
provenance(outside_scope_of_union_law/1, 'celex:32024R1689/oj#art_2').
provenance(national_security_competence_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(exclusively_military_defence_national_security_purpose/1, 'celex:32024R1689/oj#art_2').
provenance(output_used_exclusively_military_defence_national_security/1, 'celex:32024R1689/oj#art_2').
provenance(public_authority_in_third_country/1, 'celex:32024R1689/oj#art_2').
provenance(international_organisation/1, 'celex:32024R1689/oj#art_2').
provenance(international_cooperation_law_enforcement_judicial/1, 'celex:32024R1689/oj#art_2').
provenance(adequate_safeguards_fundamental_rights/1, 'celex:32024R1689/oj#art_2').
provenance(intermediary_services_liability_provisions_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(sole_purpose_scientific_research_development/1, 'celex:32024R1689/oj#art_2').
provenance(personal_data_protection_law_applies/1, 'celex:32024R1689/oj#art_2').
provenance(research_testing_development_prior_to_market/1, 'celex:32024R1689/oj#art_2').
provenance(real_world_testing_not_excluded/1, 'celex:32024R1689/oj#art_2').
provenance(consumer_protection_product_safety_rules_unaffected/1, 'celex:32024R1689/oj#art_2').
provenance(purely_personal_non_professional_activity/1, 'celex:32024R1689/oj#art_2').
provenance(more_favourable_worker_protection_permitted/1, 'celex:32024R1689/oj#art_2').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_2').
provenance(prohibited_practice/1, 'celex:32024R1689/oj#art_2').
provenance(transparency_obligation_article_50/1, 'celex:32024R1689/oj#art_2').
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
declared(must_ensure_ai_literacy/2, 'provider or deployer must ensure sufficient AI literacy of staff and persons dealing with operation and use', 'celex:32024R1689/oj#art_4').
must_ensure_ai_literacy(P, S) :-
    provider(P),
    ai_system(S),
    ai_literacy_measure(P, S).
must_ensure_ai_literacy(D, S) :-
    deployer(D),
    ai_system(S),
    ai_literacy_measure(D, S).
declared(ai_literacy_measure/2, 'measures taken to ensure sufficient AI literacy considering technical knowledge, experience, education, training, context of use, and affected persons', 'celex:32024R1689/oj#art_4').
ai_literacy_measure(A, S) :-
    staff_or_persons_dealing_with_operation_and_use(A, S, Persons),
    technical_knowledge(Persons),
    experience(Persons),
    education(Persons),
    training(Persons),
    context_of_use(S, Context),
    persons_or_groups_affected(S, Affected),
    sufficient_level_achieved(Persons, Context, Affected).
declared(staff_or_persons_dealing_with_operation_and_use/3, 'staff and other persons dealing with operation and use of AI system on behalf of actor', 'celex:32024R1689/oj#art_4').
declared(technical_knowledge/1, 'persons have technical knowledge', 'celex:32024R1689/oj#art_4').
declared(experience/1, 'persons have experience', 'celex:32024R1689/oj#art_4').
declared(education/1, 'persons have education', 'celex:32024R1689/oj#art_4').
declared(training/1, 'persons have training', 'celex:32024R1689/oj#art_4').
declared(context_of_use/2, 'context in which AI system is to be used', 'celex:32024R1689/oj#art_4').
declared(persons_or_groups_affected/2, 'persons or groups of persons on whom the AI system is to be used', 'celex:32024R1689/oj#art_4').
declared(sufficient_level_achieved/3, 'sufficient level of AI literacy achieved considering persons, context, and affected persons', 'celex:32024R1689/oj#art_4').
provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measure/2, 'celex:32024R1689/oj#art_4').
provenance(staff_or_persons_dealing_with_operation_and_use/3, 'celex:32024R1689/oj#art_4').
provenance(technical_knowledge/1, 'celex:32024R1689/oj#art_4').
provenance(experience/1, 'celex:32024R1689/oj#art_4').
provenance(education/1, 'celex:32024R1689/oj#art_4').
provenance(training/1, 'celex:32024R1689/oj#art_4').
provenance(context_of_use/2, 'celex:32024R1689/oj#art_4').
provenance(persons_or_groups_affected/2, 'celex:32024R1689/oj#art_4').
provenance(sufficient_level_achieved/3, 'celex:32024R1689/oj#art_4').

% ==== celex:32024R1689/oj#art_5 ====
declared(prohibited_subliminal_manipulation/1, 'AI system deploying subliminal or manipulative techniques distorting behaviour causing significant harm', 'celex:32024R1689/oj#art_5').
declared(prohibited_exploitation_of_vulnerabilities/1, 'AI system exploiting vulnerabilities of persons due to age, disability or social/economic situation', 'celex:32024R1689/oj#art_5').
declared(prohibited_social_scoring/1, 'AI system for social scoring leading to detrimental or unfavourable treatment', 'celex:32024R1689/oj#art_5').
declared(prohibited_risk_assessment_criminal_offence/1, 'AI system for risk assessment of criminal offence based solely on profiling or personality traits', 'celex:32024R1689/oj#art_5').
declared(prohibited_untargeted_facial_recognition_database_creation/1, 'AI system creating or expanding facial recognition databases through untargeted scraping', 'celex:32024R1689/oj#art_5').
declared(prohibited_emotion_recognition_workplace_education/1, 'AI system inferring emotions in workplace or education institutions', 'celex:32024R1689/oj#art_5').
declared(prohibited_biometric_categorisation/1, 'biometric categorisation system deducing race, political opinions, trade union membership, religious beliefs, sex life or sexual orientation', 'celex:32024R1689/oj#art_5').
declared(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'use of real-time remote biometric identification in publicly accessible spaces for law enforcement without authorisation', 'celex:32024R1689/oj#art_5').
declared(permitted_real_time_remote_biometric_identification_law_enforcement/1, 'use of real-time remote biometric identification in publicly accessible spaces for law enforcement permitted under strict conditions', 'celex:32024R1689/oj#art_5').
declared(objective_targeted_search_victims/1, 'targeted search for specific victims of abduction, trafficking or sexual exploitation, or missing persons', 'celex:32024R1689/oj#art_5').
declared(objective_prevention_threat/1, 'prevention of specific, substantial and imminent threat to life or physical safety, or genuine and present/foreseeable terrorist threat', 'celex:32024R1689/oj#art_5').
declared(objective_localisation_suspect/1, 'localisation or identification of person suspected of criminal offence for investigation, prosecution or execution of penalty', 'celex:32024R1689/oj#art_5').
declared(serious_criminal_offence/1, 'criminal offence punishable by custodial sentence or detention order of at least four years maximum period', 'celex:32024R1689/oj#art_5').
declared(supports_human_assessment/1, 'AI system used to support human assessment of involvement in criminal activity based on objective and verifiable facts', 'celex:32024R1689/oj#art_5').
declared(labelling_or_filtering_biometric_dataset/1, 'labelling or filtering of lawfully acquired biometric datasets', 'celex:32024R1689/oj#art_5').
declared(biometric_categorisation_law_enforcement/1, 'categorising of biometric data in the area of law enforcement', 'celex:32024R1689/oj#art_5').
declared(emotion_recognition_medical_or_safety/1, 'emotion recognition intended for medical or safety reasons', 'celex:32024R1689/oj#art_5').
declared(prior_authorisation_obtained/1, 'prior authorisation granted by judicial authority or independent administrative authority with binding decision', 'celex:32024R1689/oj#art_5').
declared(fundamental_rights_impact_assessment_completed/1, 'fundamental rights impact assessment completed as provided for in Article 27', 'celex:32024R1689/oj#art_5').
declared(registered_in_eu_database/1, 'system registered in EU database according to Article 49', 'celex:32024R1689/oj#art_5').
declared(authorisation_requested_within_24_hours/1, 'authorisation requested without undue delay, at latest within 24 hours in urgent case', 'celex:32024R1689/oj#art_5').
declared(registration_completed_without_undue_delay/1, 'registration completed without undue delay in urgent case', 'celex:32024R1689/oj#art_5').
declared(use_confirmed_identity_specifically_targeted/1, 'use deployed only to confirm identity of specifically targeted individual', 'celex:32024R1689/oj#art_5').
declared(takes_into_account_nature_of_situation/1, 'takes into account nature of situation: seriousness, probability and scale of harm if system not used', 'celex:32024R1689/oj#art_5').
declared(takes_into_account_consequences_for_rights/1, 'takes into account consequences for rights and freedoms: seriousness, probability and scale', 'celex:32024R1689/oj#art_5').
declared(complies_with_safeguards_and_conditions/1, 'complies with necessary and proportionate safeguards and conditions: temporal, geographic and personal limitations', 'celex:32024R1689/oj#art_5').
declared(authorisation_granted_on_objective_evidence/1, 'authorisation granted on basis of objective evidence or clear indications that use is necessary and proportionate', 'celex:32024R1689/oj#art_5').
declared(use_limited_to_strictly_necessary/1, 'use limited to what is strictly necessary concerning period, geographic and personal scope', 'celex:32024R1689/oj#art_5').
declared(no_adverse_decision_solely_on_output/1, 'no decision producing adverse legal effect taken based solely on output of real-time remote biometric identification system', 'celex:32024R1689/oj#art_5').
declared(notified_to_market_surveillance_authority/1, 'use notified to relevant market surveillance authority', 'celex:32024R1689/oj#art_5').
declared(notified_to_data_protection_authority/1, 'use notified to national data protection authority', 'celex:32024R1689/oj#art_5').
declared(notification_contains_minimum_information/1, 'notification contains at minimum information specified under Article 5(6)', 'celex:32024R1689/oj#art_5').
declared(notification_excludes_sensitive_operational_data/1, 'notification does not include sensitive operational data', 'celex:32024R1689/oj#art_5').
declared(member_state_may_authorise/1, 'Member State may decide to provide for possibility to authorise use within limits and conditions', 'celex:32024R1689/oj#art_5').
declared(national_law_lays_down_detailed_rules/1, 'Member State lays down necessary detailed rules in national law for request, issuance, exercise, supervision and reporting of authorisations', 'celex:32024R1689/oj#art_5').
declared(national_rules_specify_objectives/1, 'national rules specify which objectives and criminal offences competent authorities may be authorised for', 'celex:32024R1689/oj#art_5').
declared(member_state_notifies_commission_within_30_days/1, 'Member State notifies rules to Commission at latest 30 days following adoption', 'celex:32024R1689/oj#art_5').
declared(member_state_may_introduce_more_restrictive_laws/1, 'Member State may introduce more restrictive laws on use of remote biometric identification systems', 'celex:32024R1689/oj#art_5').
declared(must_submit_annual_report/2, 'national market surveillance authority and data protection authority submit annual reports to Commission on use', 'celex:32024R1689/oj#art_5').
declared(commission_provides_template/1, 'Commission provides template for annual reports including information on decisions taken and their result', 'celex:32024R1689/oj#art_5').
declared(commission_publishes_annual_reports/1, 'Commission publishes annual reports based on aggregated data from Member States', 'celex:32024R1689/oj#art_5').
declared(annual_reports_exclude_sensitive_operational_data/1, 'annual reports do not include sensitive operational data of law enforcement activities', 'celex:32024R1689/oj#art_5').
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_subliminal_techniques_beyond_consciousness(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    deploys_purposefully_manipulative_or_deceptive_techniques(S).
prohibited_subliminal_manipulation(S) :-
    ai_system(S),
    objective_or_effect_materially_distorting_behaviour(S),
    appreciably_impairs_informed_decision(S),
    causes_or_likely_to_cause_significant_harm(S).
prohibited_exploitation_of_vulnerabilities(S) :-
    ai_system(S),
    exploits_vulnerabilities_of_person_or_group(S),
    due_to_age_disability_or_social_economic_situation(S),
    objective_or_effect_materially_distorting_behaviour(S),
    causes_or_likely_to_cause_significant_harm(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_over_period(S),
    based_on_social_behaviour_or_personal_characteristics(S),
    social_score_leads_to_detrimental_or_unfavourable_treatment(S),
    in_social_contexts_unrelated_to_original_data_context(S).
prohibited_social_scoring(S) :-
    ai_system(S),
    evaluates_or_classifies_natural_persons_over_period(S),
    based_on_social_behaviour_or_personal_characteristics(S),
    social_score_leads_to_detrimental_or_unfavourable_treatment(S),
    treatment_unjustified_or_disproportionate(S).
prohibited_risk_assessment_criminal_offence(S) :-
    ai_system(S),
    makes_risk_assessment_of_natural_person(S),
    assesses_or_predicts_risk_of_criminal_offence(S),
    based_solely_on_profiling(S).
prohibited_risk_assessment_criminal_offence(S) :-
    ai_system(S),
    makes_risk_assessment_of_natural_person(S),
    assesses_or_predicts_risk_of_criminal_offence(S),
    based_on_assessing_personality_traits_and_characteristics(S).
prohibited_risk_assessment_criminal_offence(S) :-
    ai_system(S),
    makes_risk_assessment_of_natural_person(S),
    assesses_or_predicts_risk_of_criminal_offence(S),
    based_solely_on_profiling(S),
    \+ supports_human_assessment(S).
prohibited_risk_assessment_criminal_offence(S) :-
    ai_system(S),
    makes_risk_assessment_of_natural_person(S),
    assesses_or_predicts_risk_of_criminal_offence(S),
    based_on_assessing_personality_traits_and_characteristics(S),
    \+ supports_human_assessment(S).
supports_human_assessment(S) :-
    ai_system(S),
    used_to_support_human_assessment_of_involvement_in_criminal_activity(S),
    based_on_objective_and_verifiable_facts_directly_linked_to_criminal_activity(S).
prohibited_untargeted_facial_recognition_database_creation(S) :-
    ai_system(S),
    creates_or_expands_facial_recognition_database(S),
    through_untargeted_scraping_of_facial_images(S),
    from_internet_or_cctv_footage(S).
prohibited_emotion_recognition_workplace_education(S) :-
    emotion_recognition_system(S),
    infers_emotions_of_natural_person(S),
    in_area_of_workplace_or_education_institution(S),
    \+ emotion_recognition_medical_or_safety(S).
emotion_recognition_medical_or_safety(S) :-
    emotion_recognition_system(S),
    intended_for_medical_or_safety_reasons(S).
prohibited_biometric_categorisation(S) :-
    biometric_categorisation_system(S),
    categorises_individually_natural_persons(S),
    based_on_biometric_data(S),
    deduce_or_infer_race_political_opinions_trade_union_membership_religious_beliefs_sex_life_sexual_orientation(S),
    \+ labelling_or_filtering_biometric_dataset(S),
    \+ biometric_categorisation_law_enforcement(S).
labelling_or_filtering_biometric_dataset(S) :-
    biometric_categorisation_system(S),
    labels_or_filters_lawfully_acquired_biometric_dataset(S).
biometric_categorisation_law_enforcement(S) :-
    biometric_categorisation_system(S),
    categorises_biometric_data_in_area_of_law_enforcement(S).
prohibited_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    \+ permitted_real_time_remote_biometric_identification_law_enforcement(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    use_confirmed_identity_specifically_targeted(S),
    takes_into_account_nature_of_situation(S),
    takes_into_account_consequences_for_rights(S),
    complies_with_safeguards_and_conditions(S),
    fundamental_rights_impact_assessment_completed(S),
    registered_in_eu_database(S),
    prior_authorisation_obtained(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    use_confirmed_identity_specifically_targeted(S),
    takes_into_account_nature_of_situation(S),
    takes_into_account_consequences_for_rights(S),
    complies_with_safeguards_and_conditions(S),
    fundamental_rights_impact_assessment_completed(S),
    urgency_justified(S),
    registration_completed_without_undue_delay(S),
    prior_authorisation_obtained(S).
permitted_real_time_remote_biometric_identification_law_enforcement(S) :-
    real_time_remote_biometric_identification_system(S),
    used_in_publicly_accessible_space(S),
    for_purposes_of_law_enforcement(S),
    strictly_necessary_for_permitted_objective(S),
    use_confirmed_identity_specifically_targeted(S),
    takes_into_account_nature_of_situation(S),
    takes_into_account_consequences_for_rights(S),
    complies_with_safeguards_and_conditions(S),
    fundamental_rights_impact_assessment_completed(S),
    registered_in_eu_database(S),
    urgency_justified(S),
    authorisation_requested_within_24_hours(S).
strictly_necessary_for_permitted_objective(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_targeted_search_victims(S).
strictly_necessary_for_permitted_objective(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_prevention_threat(S).
strictly_necessary_for_permitted_objective(S) :-
    real_time_remote_biometric_identification_system(S),
    objective_localisation_suspect(S),
    serious_criminal_offence(S).
objective_targeted_search_victims(S) :-
    real_time_remote_biometric_identification_system(S),
    targeted_search_for_specific_victims_of_abduction_trafficking_sexual_exploitation(S).
objective_targeted_search_victims(S) :-
    real_time_remote_biometric_identification_system(S),
    search_for_missing_persons(S).
objective_prevention_threat(S) :-
    real_time_remote_biometric_identification_system(S),
    prevention_of_specific_substantial_imminent_threat_to_life_or_physical_safety(S).
objective_prevention_threat(S) :-
    real_time_remote_biometric_identification_system(S),
    prevention_of_genuine_and_present_or_foreseeable_threat_of_terrorist_attack(S).
objective_localisation_suspect(S) :-
    real_time_remote_biometric_identification_system(S),
    localisation_or_identification_of_person_suspected_of_criminal_offence(S),
    for_purpose_of_criminal_investigation_or_prosecution_or_executing_criminal_penalty(S).
serious_criminal_offence(S) :-
    real_time_remote_biometric_identification_system(S),
    offence_referred_to_in_annex_2(S),
    punishable_by_custodial_sentence_or_detention_order_maximum_period_at_least_four_years(S).
use_confirmed_identity_specifically_targeted(S) :-
    real_time_remote_biometric_identification_system(S),
    deployed_only_to_confirm_identity_of_specifically_targeted_individual(S).
takes_into_account_nature_of_situation(S) :-
    real_time_remote_biometric_identification_system(S),
    takes_into_account_seriousness_probability_scale_of_harm_if_not_used(S).
takes_into_account_consequences_for_rights(S) :-
    real_time_remote_biometric_identification_system(S),
    takes_into_account_seriousness_probability_scale_of_consequences_for_rights_and_freedoms(S).
complies_with_safeguards_and_conditions(S) :-
    real_time_remote_biometric_identification_system(S),
    complies_with_necessary_and_proportionate_safeguards(S),
    temporal_geographic_and_personal_limitations_applied(S),
    in_accordance_with_national_law_authorising_use(S).
fundamental_rights_impact_assessment_completed(S) :-
    real_time_remote_biometric_identification_system(S),
    fundamental_rights_impact_assessment_completed_as_per_article_27(S).
registered_in_eu_database(S) :-
    real_time_remote_biometric_identification_system(S),
    registered_in_eu_database_according_to_article_49(S).
prior_authorisation_obtained(S) :-
    real_time_remote_biometric_identification_system(S),
    prior_authorisation_granted_by_judicial_authority_or_independent_administrative_authority(S),
    decision_is_binding(S),
    issued_upon_reasoned_request(S),
    in_accordance_with_detailed_rules_of_national_law(S).
prior_authorisation_obtained(S) :-
    real_time_remote_biometric_identification_system(S),
    urgency_justified(S),
    authorisation_requested_without_undue_delay_at_latest_within_24_hours(S).
authorisation_granted_on_objective_evidence(S) :-
    real_time_remote_biometric_identification_system(S),
    authorisation_granted_on_basis_of_objective_evidence_or_clear_indications(S),
    use_is_necessary_for_and_proportionate_to_achieving_objective(S).
use_limited_to_strictly_necessary(S) :-
    real_time_remote_biometric_identification_system(S),
    limited_to_what_is_strictly_necessary_concerning_period_geographic_and_personal_scope(S).
no_adverse_decision_solely_on_output(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ decision_producing_adverse_legal_effect_taken_based_solely_on_output(S).
notified_to_market_surveillance_authority(S) :-
    real_time_remote_biometric_identification_system(S),
    notified_to_relevant_market_surveillance_authority(S),
    in_accordance_with_national_rules(S).
notified_to_data_protection_authority(S) :-
    real_time_remote_biometric_identification_system(S),
    notified_to_national_data_protection_authority(S),
    in_accordance_with_national_rules(S).
notification_contains_minimum_information(S) :-
    real_time_remote_biometric_identification_system(S),
    notification_contains_information_specified_under_article_5_par_6(S).
notification_excludes_sensitive_operational_data(S) :-
    real_time_remote_biometric_identification_system(S),
    \+ notification_includes_sensitive_operational_data(S).
member_state_may_authorise(S) :-
    member_state(S),
    decides_to_provide_for_possibility_to_authorise_use(S),
    within_limits_and_conditions_of_article_5_par_1_h_and_par_2_and_par_3(S).
national_law_lays_down_detailed_rules(S) :-
    member_state(S),
    lays_down_in_national_law_necessary_detailed_rules(S),
    for_request_issuance_exercise_supervision_and_reporting_of_authorisations(S).
national_rules_specify_objectives(S) :-
    member_state(S),
    specifies_in_national_rules_which_objectives_listed_in_article_5_par_1_h(S),
    including_which_criminal_offences_referred_to_in_point_h_iii(S),
    competent_authorities_may_be_authorised_for(S).
member_state_notifies_commission_within_30_days(S) :-
    member_state(S),
    notifies_rules_to_commission(S),
    at_latest_30_days_following_adoption(S).
member_state_may_introduce_more_restrictive_laws(S) :-
    member_state(S),
    introduces_more_restrictive_laws_on_use_of_remote_biometric_identification_systems(S),
    in_accordance_with_union_law(S).
must_submit_annual_report(Authority, Use) :-
    market_surveillance_authority(Authority),
    national_data_protection_authority(Authority),
    member_state(Authority),
    notified_of_use_of_real_time_remote_biometric_identification(Authority, Use),
    for_law_enforcement_purposes(Use),
    in_publicly_accessible_space(Use).
must_submit_annual_report(Authority, Use) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    notified_of_use_of_real_time_remote_biometric_identification(Authority, Use),
    for_law_enforcement_purposes(Use),
    in_publicly_accessible_space(Use).
must_submit_annual_report(Authority, Use) :-
    national_data_protection_authority(Authority),
    member_state(Authority),
    notified_of_use_of_real_time_remote_biometric_identification(Authority, Use),
    for_law_enforcement_purposes(Use),
    in_publicly_accessible_space(Use).
commission_provides_template(S) :-
    ai_office(S),
    provides_template_to_member_states_and_authorities(S),
    including_information_on_number_of_decisions_taken_by_competent_authorities(S),
    and_their_result(S).
commission_publishes_annual_reports(S) :-
    ai_office(S),
    publishes_annual_reports_on_use_of_real_time_remote_biometric_identification(S),
    in_publicly_accessible_spaces_for_law_enforcement_purposes(S),
    based_on_aggregated_data_in_member_states(S),
    on_basis_of_annual_reports_referred_to_in_article_5_par_6(S).
annual_reports_exclude_sensitive_operational_data(S) :-
    ai_office(S),
    annual_reports_do_not_include_sensitive_operational_data(S),
    of_related_law_enforcement_activities(S).
provenance(prohibited_subliminal_manipulation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_exploitation_of_vulnerabilities/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_social_scoring/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_risk_assessment_criminal_offence/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_untargeted_facial_recognition_database_creation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_emotion_recognition_workplace_education/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_biometric_categorisation/1, 'celex:32024R1689/oj#art_5').
provenance(prohibited_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(permitted_real_time_remote_biometric_identification_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(objective_targeted_search_victims/1, 'celex:32024R1689/oj#art_5').
provenance(objective_prevention_threat/1, 'celex:32024R1689/oj#art_5').
provenance(objective_localisation_suspect/1, 'celex:32024R1689/oj#art_5').
provenance(serious_criminal_offence/1, 'celex:32024R1689/oj#art_5').
provenance(supports_human_assessment/1, 'celex:32024R1689/oj#art_5').
provenance(labelling_or_filtering_biometric_dataset/1, 'celex:32024R1689/oj#art_5').
provenance(biometric_categorisation_law_enforcement/1, 'celex:32024R1689/oj#art_5').
provenance(emotion_recognition_medical_or_safety/1, 'celex:32024R1689/oj#art_5').
provenance(prior_authorisation_obtained/1, 'celex:32024R1689/oj#art_5').
provenance(fundamental_rights_impact_assessment_completed/1, 'celex:32024R1689/oj#art_5').
provenance(registered_in_eu_database/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_requested_within_24_hours/1, 'celex:32024R1689/oj#art_5').
provenance(registration_completed_without_undue_delay/1, 'celex:32024R1689/oj#art_5').
provenance(use_confirmed_identity_specifically_targeted/1, 'celex:32024R1689/oj#art_5').
provenance(takes_into_account_nature_of_situation/1, 'celex:32024R1689/oj#art_5').
provenance(takes_into_account_consequences_for_rights/1, 'celex:32024R1689/oj#art_5').
provenance(complies_with_safeguards_and_conditions/1, 'celex:32024R1689/oj#art_5').
provenance(authorisation_granted_on_objective_evidence/1, 'celex:32024R1689/oj#art_5').
provenance(use_limited_to_strictly_necessary/1, 'celex:32024R1689/oj#art_5').
provenance(no_adverse_decision_solely_on_output/1, 'celex:32024R1689/oj#art_5').
provenance(notified_to_market_surveillance_authority/1, 'celex:32024R1689/oj#art_5').
provenance(notified_to_data_protection_authority/1, 'celex:32024R1689/oj#art_5').
provenance(notification_contains_minimum_information/1, 'celex:32024R1689/oj#art_5').
provenance(notification_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_authorise/1, 'celex:32024R1689/oj#art_5').
provenance(national_law_lays_down_detailed_rules/1, 'celex:32024R1689/oj#art_5').
provenance(national_rules_specify_objectives/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_notifies_commission_within_30_days/1, 'celex:32024R1689/oj#art_5').
provenance(member_state_may_introduce_more_restrictive_laws/1, 'celex:32024R1689/oj#art_5').
provenance(must_submit_annual_report/2, 'celex:32024R1689/oj#art_5').
provenance(commission_provides_template/1, 'celex:32024R1689/oj#art_5').
provenance(commission_publishes_annual_reports/1, 'celex:32024R1689/oj#art_5').
provenance(annual_reports_exclude_sensitive_operational_data/1, 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h').
references('celex:32024R1689/oj#art_5', 'celex:32016R0679/oj#art_9').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_2').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_5').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_3').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_4').
references('celex:32024R1689/oj#art_5', 'celex:32024R1689/oj#art_5/par_6').

% ==== celex:32024R1689/oj#art_6 ====
declared(intended_as_safety_component_of_product/1, 'AI system intended to be used as a safety component of a product', 'celex:32024R1689/oj#art_6').
declared(ai_system_is_product/1, 'AI system is itself a product', 'celex:32024R1689/oj#art_6').
declared(product_covered_by_union_harmonisation_legislation/1, 'product covered by Union harmonisation legislation listed in Annex I', 'celex:32024R1689/oj#art_6').
declared(product_requires_third_party_conformity_assessment/1, 'product required to undergo third-party conformity assessment', 'celex:32024R1689/oj#art_6').
declared(ai_system_referred_to_in_annex_3/1, 'AI system referred to in Annex III', 'celex:32024R1689/oj#art_6').
declared(poses_no_significant_risk_of_harm/1, 'does not pose a significant risk of harm to health, safety or fundamental rights of natural persons', 'celex:32024R1689/oj#art_6').
declared(does_not_materially_influence_decision_making/1, 'does not materially influence the outcome of decision making', 'celex:32024R1689/oj#art_6').
declared(intended_to_perform_narrow_procedural_task/1, 'AI system intended to perform a narrow procedural task', 'celex:32024R1689/oj#art_6').
declared(intended_to_improve_result_of_previously_completed_human_activity/1, 'AI system intended to improve the result of a previously completed human activity', 'celex:32024R1689/oj#art_6').
declared(intended_to_detect_decision_making_patterns/1, 'AI system intended to detect decision-making patterns or deviations from prior decision-making patterns', 'celex:32024R1689/oj#art_6').
declared(not_meant_to_replace_or_influence_human_assessment/1, 'not meant to replace or influence the previously completed human assessment without proper human review', 'celex:32024R1689/oj#art_6').
declared(intended_to_perform_preparatory_task/1, 'AI system intended to perform a preparatory task to an assessment relevant for Annex III use cases', 'celex:32024R1689/oj#art_6').
declared(performs_profiling_of_natural_persons/1, 'AI system performs profiling of natural persons', 'celex:32024R1689/oj#art_6').
declared(provider_documents_assessment/2, 'provider documents assessment that AI system is not high-risk before placing on market or putting into service', 'celex:32024R1689/oj#art_6').
declared(provider_subject_to_registration_obligation/1, 'provider subject to registration obligation under Article 49(2)', 'celex:32024R1689/oj#art_6').
declared(provider_provides_documentation_upon_request/2, 'provider provides documentation of assessment upon request of national competent authorities', 'celex:32024R1689/oj#art_6').
declared(commission_provides_guidelines/0, 'Commission provides guidelines on practical implementation of Article 6', 'celex:32024R1689/oj#art_6').
declared(commission_empowered_to_adopt_delegated_acts_to_add_conditions/0, 'Commission empowered to adopt delegated acts to add or modify conditions in Article 6(3)', 'celex:32024R1689/oj#art_6').
declared(commission_must_adopt_delegated_acts_to_delete_conditions/0, 'Commission must adopt delegated acts to delete conditions where necessary', 'celex:32024R1689/oj#art_6').
declared(amendment_does_not_decrease_level_of_protection/1, 'amendment does not decrease overall level of protection of health, safety and fundamental rights', 'celex:32024R1689/oj#art_6').
declared(amendment_ensures_consistency_with_delegated_acts/1, 'amendment ensures consistency with delegated acts adopted pursuant to Article 7(1)', 'celex:32024R1689/oj#art_6').
declared(amendment_takes_account_of_market_and_technological_developments/1, 'amendment takes account of market and technological developments', 'celex:32024R1689/oj#art_6').
declared(concrete_and_reliable_evidence_exists/1, 'concrete and reliable evidence exists of AI systems falling under Annex III scope but not posing significant risk', 'celex:32024R1689/oj#art_6').
declared(concrete_and_reliable_evidence_necessary_to_maintain_protection/1, 'concrete and reliable evidence that deletion is necessary to maintain level of protection', 'celex:32024R1689/oj#art_6').
high_risk_ai_system(S) :-
    ai_system(S),
    intended_as_safety_component_of_product(S),
    product_covered_by_union_harmonisation_legislation(S),
    product_requires_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_is_product(S),
    product_covered_by_union_harmonisation_legislation(S),
    product_requires_third_party_conformity_assessment(S).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_referred_to_in_annex_3(S),
    \+ exempt_from_high_risk_classification(S).
exempt_from_high_risk_classification(S) :-
    ai_system_referred_to_in_annex_3(S),
    poses_no_significant_risk_of_harm(S),
    does_not_materially_influence_decision_making(S),
    narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S).
narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_perform_narrow_procedural_task(S).
narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_improve_result_of_previously_completed_human_activity(S).
narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_detect_decision_making_patterns(S),
    not_meant_to_replace_or_influence_human_assessment(S).
narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task(S) :-
    intended_to_perform_preparatory_task(S).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_referred_to_in_annex_3(S),
    performs_profiling_of_natural_persons(S).
must_document_assessment(P, S) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).
must_comply_with_registration(P, S) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S).
must_provide(P, documentation(assessment(S))) :-
    provider(P),
    ai_system_referred_to_in_annex_3(S),
    concluded_not_high_risk(S),
    national_competent_authority(_A).
commission_provides_guidelines.
commission_empowered_to_adopt_delegated_acts_to_add_conditions :-
    concrete_and_reliable_evidence_exists(_E).
commission_must_adopt_delegated_acts_to_delete_conditions :-
    concrete_and_reliable_evidence_necessary_to_maintain_protection(_E).
amendment_does_not_decrease_level_of_protection(A) :-
    amendment_to_conditions(A).
amendment_ensures_consistency_with_delegated_acts(A) :-
    amendment_to_conditions(A).
amendment_takes_account_of_market_and_technological_developments(A) :-
    amendment_to_conditions(A).
amendment_to_conditions(A) :-
    delegated_act_concerning_ai_safety_components(A).
provenance(intended_as_safety_component_of_product/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_is_product/1, 'celex:32024R1689/oj#art_6').
provenance(product_covered_by_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_6').
provenance(product_requires_third_party_conformity_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(ai_system_referred_to_in_annex_3/1, 'celex:32024R1689/oj#art_6').
provenance(poses_no_significant_risk_of_harm/1, 'celex:32024R1689/oj#art_6').
provenance(does_not_materially_influence_decision_making/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_perform_narrow_procedural_task/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_improve_result_of_previously_completed_human_activity/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_detect_decision_making_patterns/1, 'celex:32024R1689/oj#art_6').
provenance(not_meant_to_replace_or_influence_human_assessment/1, 'celex:32024R1689/oj#art_6').
provenance(intended_to_perform_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(performs_profiling_of_natural_persons/1, 'celex:32024R1689/oj#art_6').
provenance(provider_documents_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(provider_subject_to_registration_obligation/1, 'celex:32024R1689/oj#art_6').
provenance(provider_provides_documentation_upon_request/2, 'celex:32024R1689/oj#art_6').
provenance(commission_provides_guidelines/0, 'celex:32024R1689/oj#art_6').
provenance(commission_empowered_to_adopt_delegated_acts_to_add_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(commission_must_adopt_delegated_acts_to_delete_conditions/0, 'celex:32024R1689/oj#art_6').
provenance(amendment_does_not_decrease_level_of_protection/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_ensures_consistency_with_delegated_acts/1, 'celex:32024R1689/oj#art_6').
provenance(amendment_takes_account_of_market_and_technological_developments/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_and_reliable_evidence_exists/1, 'celex:32024R1689/oj#art_6').
provenance(concrete_and_reliable_evidence_necessary_to_maintain_protection/1, 'celex:32024R1689/oj#art_6').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_6').
provenance(exempt_from_high_risk_classification/1, 'celex:32024R1689/oj#art_6').
provenance(narrow_procedural_task_or_improvement_or_pattern_detection_or_preparatory_task/1, 'celex:32024R1689/oj#art_6').
provenance(must_document_assessment/2, 'celex:32024R1689/oj#art_6').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_6').
provenance(must_provide/2, 'celex:32024R1689/oj#art_6').
provenance(amendment_to_conditions/1, 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_3/unp_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_96').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_6', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_7 ====
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_7').
declared(delegated_act/1, 'delegated act adopted by the Commission', 'celex:32024R1689/oj#art_7').
declared(amend_annex_3/1, 'delegated act amending Annex III', 'celex:32024R1689/oj#art_7').
declared(add_use_case/1, 'delegated act adds a use-case of high-risk AI system to Annex III', 'celex:32024R1689/oj#art_7').
declared(modify_use_case/1, 'delegated act modifies a use-case of high-risk AI system in Annex III', 'celex:32024R1689/oj#art_7').
declared(remove_high_risk_ai_system/1, 'delegated act removes a high-risk AI system from Annex III', 'celex:32024R1689/oj#art_7').
declared(intended_for_area_in_annex_3/1, 'AI system intended to be used in an area listed in Annex III', 'celex:32024R1689/oj#art_7').
declared(poses_risk_equivalent_or_greater/1, 'AI system poses risk of harm to health and safety or adverse impact on fundamental rights equivalent to or greater than existing high-risk AI systems in Annex III', 'celex:32024R1689/oj#art_7').
declared(no_longer_poses_significant_risk/1, 'high-risk AI system no longer poses significant risks to fundamental rights, health or safety', 'celex:32024R1689/oj#art_7').
declared(deletion_does_not_decrease_protection/1, 'deletion does not decrease overall level of protection of health, safety and fundamental rights under Union law', 'celex:32024R1689/oj#art_7').
declared(criterion_intended_purpose/1, 'criterion: intended purpose of the AI system', 'celex:32024R1689/oj#art_7').
declared(criterion_extent_of_use/1, 'criterion: extent to which AI system has been used or is likely to be used', 'celex:32024R1689/oj#art_7').
declared(criterion_nature_amount_data/1, 'criterion: nature and amount of data processed, in particular special categories of personal data', 'celex:32024R1689/oj#art_7').
declared(criterion_autonomy_human_override/1, 'criterion: extent of autonomy and possibility for human override', 'celex:32024R1689/oj#art_7').
declared(criterion_past_harm_or_concerns/1, 'criterion: extent to which use has already caused harm or given rise to significant concerns', 'celex:32024R1689/oj#art_7').
declared(criterion_potential_extent_harm/1, 'criterion: potential extent of harm or adverse impact in terms of intensity and ability to affect multiple persons or particular groups', 'celex:32024R1689/oj#art_7').
declared(criterion_dependence_on_outcome/1, 'criterion: extent to which persons are dependent on outcome and cannot reasonably opt-out', 'celex:32024R1689/oj#art_7').
declared(criterion_imbalance_of_power/1, 'criterion: extent of imbalance of power or vulnerable position of persons potentially harmed', 'celex:32024R1689/oj#art_7').
declared(criterion_corrigibility_reversibility/1, 'criterion: extent to which outcome is easily corrigible or reversible', 'celex:32024R1689/oj#art_7').
declared(criterion_magnitude_likelihood_benefit/1, 'criterion: magnitude and likelihood of benefit of deployment for individuals, groups, or society', 'celex:32024R1689/oj#art_7').
declared(criterion_existing_union_law_redress/1, 'criterion: extent to which existing Union law provides for effective measures of redress', 'celex:32024R1689/oj#art_7').
declared(criterion_existing_union_law_prevention/1, 'criterion: extent to which existing Union law provides for effective measures to prevent or minimise risks', 'celex:32024R1689/oj#art_7').
declared(outcome_not_easily_corrigible/1, 'outcome having adverse impact on health, safety or fundamental rights is not easily corrigible or reversible', 'celex:32024R1689/oj#art_7').
commission(commission).
amend_annex_3(A) :-
    delegated_act(A),
    commission_adopts(A).
add_use_case(A) :-
    amend_annex_3(A),
    adds_use_case(A).
modify_use_case(A) :-
    amend_annex_3(A),
    modifies_use_case(A).
remove_high_risk_ai_system(A) :-
    delegated_act(A),
    commission_adopts(A),
    removes_from_annex_3(A).
permitted_add_use_case(A, S) :-
    add_use_case(A),
    ai_system(S),
    intended_for_area_in_annex_3(S),
    poses_risk_equivalent_or_greater(S).
permitted_modify_use_case(A, S) :-
    modify_use_case(A),
    ai_system(S),
    intended_for_area_in_annex_3(S),
    poses_risk_equivalent_or_greater(S).
permitted_remove_high_risk_ai_system(A, S) :-
    remove_high_risk_ai_system(A),
    high_risk_ai_system(S),
    no_longer_poses_significant_risk(S),
    deletion_does_not_decrease_protection(S).
intended_for_area_in_annex_3(S) :-
    ai_system(S),
    intended_purpose(S),
    area_listed_in_annex_3(S).
poses_risk_equivalent_or_greater(S) :-
    ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    risk_equivalent_or_greater_than_existing(S).
no_longer_poses_significant_risk(S) :-
    high_risk_ai_system(S),
    \+ significant_risk_to_fundamental_rights_health_safety(S).
deletion_does_not_decrease_protection(S) :-
    high_risk_ai_system(S),
    overall_protection_level_maintained(S).
criterion_intended_purpose(S) :-
    ai_system(S),
    intended_purpose(S).
criterion_extent_of_use(S) :-
    ai_system(S),
    used_or_likely_to_be_used(S).
criterion_nature_amount_data(S) :-
    ai_system(S),
    processes_data(S),
    nature_and_amount_assessed(S).
criterion_nature_amount_data(S) :-
    ai_system(S),
    processes_data(S),
    special_categories_of_personal_data(S).
criterion_autonomy_human_override(S) :-
    ai_system(S),
    acts_autonomously(S),
    human_can_override(S).
criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    caused_harm_to_health_safety(S).
criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    had_adverse_impact_on_fundamental_rights(S).
criterion_past_harm_or_concerns(S) :-
    ai_system(S),
    gave_rise_to_significant_concerns(S).
criterion_potential_extent_harm(S) :-
    ai_system(S),
    potential_harm_intensity_assessed(S),
    affects_multiple_persons_or_group(S).
criterion_dependence_on_outcome(S) :-
    ai_system(S),
    persons_dependent_on_outcome(S),
    not_reasonably_possible_to_opt_out(S).
criterion_imbalance_of_power(S) :-
    ai_system(S),
    imbalance_of_power_exists(S).
criterion_imbalance_of_power(S) :-
    ai_system(S),
    persons_in_vulnerable_position(S).
criterion_corrigibility_reversibility(S) :-
    ai_system(S),
    outcome_corrigible_or_reversible(S).
outcome_not_easily_corrigible(S) :-
    ai_system(S),
    outcome_has_adverse_impact(S),
    adverse_impact_on_health_safety_or_fundamental_rights(S).
criterion_magnitude_likelihood_benefit(S) :-
    ai_system(S),
    benefit_for_individuals_groups_society_assessed(S).
criterion_existing_union_law_redress(S) :-
    ai_system(S),
    existing_union_law_provides_redress(S).
criterion_existing_union_law_prevention(S) :-
    ai_system(S),
    existing_union_law_provides_prevention_or_minimisation(S).
provenance(commission/1, 'celex:32024R1689/oj#art_7').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_7').
provenance(amend_annex_3/1, 'celex:32024R1689/oj#art_7').
provenance(add_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(modify_use_case/1, 'celex:32024R1689/oj#art_7').
provenance(remove_high_risk_ai_system/1, 'celex:32024R1689/oj#art_7').
provenance(intended_for_area_in_annex_3/1, 'celex:32024R1689/oj#art_7').
provenance(poses_risk_equivalent_or_greater/1, 'celex:32024R1689/oj#art_7').
provenance(no_longer_poses_significant_risk/1, 'celex:32024R1689/oj#art_7').
provenance(deletion_does_not_decrease_protection/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_intended_purpose/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_extent_of_use/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_nature_amount_data/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_autonomy_human_override/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_past_harm_or_concerns/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_potential_extent_harm/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_dependence_on_outcome/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_imbalance_of_power/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_corrigibility_reversibility/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_magnitude_likelihood_benefit/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_redress/1, 'celex:32024R1689/oj#art_7').
provenance(criterion_existing_union_law_prevention/1, 'celex:32024R1689/oj#art_7').
provenance(outcome_not_easily_corrigible/1, 'celex:32024R1689/oj#art_7').
provenance(permitted_add_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_modify_use_case/2, 'celex:32024R1689/oj#art_7').
provenance(permitted_remove_high_risk_ai_system/2, 'celex:32024R1689/oj#art_7').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_7', 'celex:32024R1689/oj#art_7/par_2').

% ==== celex:32024R1689/oj#art_8 ====
must_ensure_compliance(S, requirements(chapter_3_section_2)) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    generally_acknowledged_state_of_the_art(S),
    risk_management_system_taken_into_account(S).
risk_management_system_taken_into_account(S) :-
    high_risk_ai_system(S),
    risk_management_system_referred_to_in_article_9(S).
risk_management_system_referred_to_in_article_9(S) :-
    high_risk_ai_system(S).
generally_acknowledged_state_of_the_art(S) :-
    high_risk_ai_system(S).
must_ensure_compliance(P, product_fully_compliant(Product)) :-
    provider(P),
    product_contains_ai_system(Product),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_in_product(Product, S),
    must_ensure_compliance(S, requirements(chapter_3_section_2)).
product_contains_ai_system(Product) :-
    provider(_P),
    ai_system_in_product(Product, _S).
ai_system_in_product(Product, S) :-
    product_contains_ai_system(Product),
    ai_system(S).
high_risk_ai_system_in_product(Product, S) :-
    product_contains_ai_system(Product),
    ai_system_in_product(Product, S),
    high_risk_ai_system(S).
may_integrate_testing_and_reporting_processes(P, Product) :-
    provider(P),
    product_contains_ai_system(Product),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_in_product(Product, S),
    must_ensure_compliance(S, requirements(chapter_3_section_2)),
    existing_documentation_and_procedures_required(Product).
existing_documentation_and_procedures_required(Product) :-
    union_harmonisation_legislation_applies(Product),
    other_union_harmonisation_legislation(Product).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_taken_into_account/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_referred_to_in_article_9/1, 'celex:32024R1689/oj#art_8').
provenance(generally_acknowledged_state_of_the_art/1, 'celex:32024R1689/oj#art_8').
provenance(product_contains_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(ai_system_in_product/2, 'celex:32024R1689/oj#art_8').
provenance(high_risk_ai_system_in_product/2, 'celex:32024R1689/oj#art_8').
provenance(may_integrate_testing_and_reporting_processes/2, 'celex:32024R1689/oj#art_8').
provenance(existing_documentation_and_procedures_required/1, 'celex:32024R1689/oj#art_8').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').

% ==== celex:32024R1689/oj#art_9 ====
declared(risk_management_system/1, 'risk management system established, implemented, documented and maintained for a high-risk AI system', 'celex:32024R1689/oj#art_9').
declared(risk_management_system_continuous_iterative/1, 'risk management system is a continuous iterative process planned and run throughout the entire lifecycle', 'celex:32024R1689/oj#art_9').
declared(risk_management_system_regular_review/1, 'risk management system requires regular systematic review and updating', 'celex:32024R1689/oj#art_9').
declared(risk_identification_and_analysis/1, 'risk management system includes identification and analysis of known and reasonably foreseeable risks to health, safety or fundamental rights', 'celex:32024R1689/oj#art_9').
declared(risk_estimation_and_evaluation/1, 'risk management system includes estimation and evaluation of risks under intended purpose and reasonably foreseeable misuse', 'celex:32024R1689/oj#art_9').
declared(risk_evaluation_from_post_market_monitoring/1, 'risk management system includes evaluation of other risks based on post-market monitoring data', 'celex:32024R1689/oj#art_9').
declared(risk_management_measures_adopted/1, 'risk management system includes adoption of appropriate and targeted risk management measures', 'celex:32024R1689/oj#art_9').
declared(risk_mitigable_through_design/1, 'risk can be reasonably mitigated or eliminated through development, design or technical information', 'celex:32024R1689/oj#art_9').
declared(risk_management_measures_consider_combined_requirements/1, 'risk management measures give due consideration to effects and interaction from combined application of Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_9').
declared(residual_risk_acceptable/1, 'relevant residual risk associated with each hazard and overall residual risk is judged acceptable', 'celex:32024R1689/oj#art_9').
declared(risk_elimination_or_reduction/1, 'elimination or reduction of risks through adequate design and development as far as technically feasible', 'celex:32024R1689/oj#art_9').
declared(mitigation_control_measures_for_non_eliminable_risks/1, 'adequate mitigation and control measures implemented for risks that cannot be eliminated', 'celex:32024R1689/oj#art_9').
declared(information_and_training_provided/1, 'information required under Article 13 and training to deployers provided where appropriate', 'celex:32024R1689/oj#art_9').
declared(technical_knowledge_considered/1, 'due consideration given to technical knowledge, experience, education, training expected by deployer, and presumable context of use', 'celex:32024R1689/oj#art_9').
declared(tested_for_risk_management/1, 'high-risk AI system tested for purpose of identifying most appropriate and targeted risk management measures', 'celex:32024R1689/oj#art_9').
declared(testing_ensures_consistent_performance/1, 'testing ensures high-risk AI systems perform consistently for intended purpose and comply with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_9').
declared(testing_in_real_world_conditions_permitted/1, 'testing procedures may include testing in real-world conditions in accordance with Article 60', 'celex:32024R1689/oj#art_9').
declared(testing_performed_during_development/1, 'testing performed at any time throughout development process and prior to placing on market or putting into service', 'celex:32024R1689/oj#art_9').
declared(testing_against_defined_metrics/1, 'testing carried out against prior defined metrics and probabilistic thresholds appropriate to intended purpose', 'celex:32024R1689/oj#art_9').
declared(adverse_impact_on_minors_considered/1, 'provider gives consideration to whether high-risk AI system is likely to have adverse impact on persons under 18 and other vulnerable groups', 'celex:32024R1689/oj#art_9').
declared(risk_management_combined_with_other_union_law/1, 'risk management aspects may be part of or combined with risk management procedures under other Union law', 'celex:32024R1689/oj#art_9').
must_establish_risk_management_system(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S).
risk_management_system(S) :-
    high_risk_ai_system(S),
    risk_management_system_established(S),
    risk_management_system_implemented(S),
    risk_management_system_documented(S),
    risk_management_system_maintained(S).
risk_management_system_continuous_iterative(S) :-
    risk_management_system(S),
    planned_throughout_lifecycle(S),
    run_throughout_lifecycle(S).
risk_management_system_regular_review(S) :-
    risk_management_system_continuous_iterative(S),
    regular_systematic_review(S),
    systematic_updating(S).
risk_identification_and_analysis(S) :-
    risk_management_system(S),
    identifies_known_risks(S),
    identifies_reasonably_foreseeable_risks(S),
    risks_to_health(S),
    risks_to_safety(S),
    risks_to_fundamental_rights(S),
    use_in_accordance_with_intended_purpose(S).
risk_estimation_and_evaluation(S) :-
    risk_management_system(S),
    estimates_risks_intended_purpose(S),
    evaluates_risks_intended_purpose(S),
    estimates_risks_reasonably_foreseeable_misuse(S),
    evaluates_risks_reasonably_foreseeable_misuse(S).
risk_evaluation_from_post_market_monitoring(S) :-
    risk_management_system(S),
    post_market_monitoring_system(S),
    analyses_data_from_post_market_monitoring(S),
    evaluates_other_risks_possibly_arising(S).
risk_management_measures_adopted(S) :-
    risk_management_system(S),
    adopts_appropriate_measures(S),
    adopts_targeted_measures(S),
    addresses_risks_identified(S).
risk_mitigable_through_design(R) :-
    risk(R),
    reasonably_mitigated_through_development(R).
risk_mitigable_through_design(R) :-
    risk(R),
    reasonably_mitigated_through_design(R).
risk_mitigable_through_design(R) :-
    risk(R),
    eliminated_through_provision_of_technical_information(R).
risk_management_measures_consider_combined_requirements(S) :-
    risk_management_measures_adopted(S),
    gives_due_consideration_to_combined_effects(S),
    considers_interaction_of_requirements(S),
    minimises_risks_more_effectively(S),
    achieves_appropriate_balance(S).
residual_risk_acceptable(S) :-
    risk_management_measures_adopted(S),
    residual_risk_per_hazard_acceptable(S),
    overall_residual_risk_acceptable(S).
risk_elimination_or_reduction(S) :-
    risk_management_measures_adopted(S),
    eliminates_or_reduces_risks(S),
    as_far_as_technically_feasible(S),
    through_adequate_design_and_development(S).
mitigation_control_measures_for_non_eliminable_risks(S) :-
    risk_management_measures_adopted(S),
    risks_cannot_be_eliminated(S),
    implements_adequate_mitigation_measures(S),
    implements_adequate_control_measures(S).
information_and_training_provided(S) :-
    risk_management_measures_adopted(S),
    provides_information_required_art_13(S),
    provides_training_to_deployers_where_appropriate(S).
technical_knowledge_considered(S) :-
    risk_management_measures_adopted(S),
    considers_technical_knowledge(S),
    considers_experience(S),
    considers_education(S),
    considers_training_expected_by_deployer(S),
    considers_presumable_context_of_use(S).
tested_for_risk_management(S) :-
    high_risk_ai_system(S),
    tested_to_identify_appropriate_risk_management_measures(S),
    tested_to_identify_targeted_risk_management_measures(S).
testing_ensures_consistent_performance(S) :-
    tested_for_risk_management(S),
    performs_consistently_for_intended_purpose(S),
    complies_with_chapter_3_section_2_requirements(S).
testing_in_real_world_conditions_permitted(S) :-
    tested_for_risk_management(S),
    testing_includes_real_world_conditions(S),
    in_accordance_with_art_60(S).
testing_performed_during_development(S) :-
    tested_for_risk_management(S),
    performed_throughout_development_process(S),
    performed_prior_to_placing_on_market(S).
testing_against_defined_metrics(S) :-
    tested_for_risk_management(S),
    tested_against_prior_defined_metrics(S),
    tested_against_probabilistic_thresholds(S),
    metrics_appropriate_to_intended_purpose(S).
adverse_impact_on_minors_considered(S) :-
    provider(S),
    high_risk_ai_system(S),
    implements_risk_management_system(S),
    considers_adverse_impact_on_persons_under_18(S),
    considers_adverse_impact_on_vulnerable_groups_where_appropriate(S).
risk_management_combined_with_other_union_law(S) :-
    provider(S),
    high_risk_ai_system(S),
    subject_to_internal_risk_management_under_other_union_law(S),
    risk_management_aspects_part_of_other_procedures(S).
provenance(must_establish_risk_management_system/2, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_continuous_iterative/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_system_regular_review/1, 'celex:32024R1689/oj#art_9').
provenance(risk_identification_and_analysis/1, 'celex:32024R1689/oj#art_9').
provenance(risk_estimation_and_evaluation/1, 'celex:32024R1689/oj#art_9').
provenance(risk_evaluation_from_post_market_monitoring/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_adopted/1, 'celex:32024R1689/oj#art_9').
provenance(risk_mitigable_through_design/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_measures_consider_combined_requirements/1, 'celex:32024R1689/oj#art_9').
provenance(residual_risk_acceptable/1, 'celex:32024R1689/oj#art_9').
provenance(risk_elimination_or_reduction/1, 'celex:32024R1689/oj#art_9').
provenance(mitigation_control_measures_for_non_eliminable_risks/1, 'celex:32024R1689/oj#art_9').
provenance(information_and_training_provided/1, 'celex:32024R1689/oj#art_9').
provenance(technical_knowledge_considered/1, 'celex:32024R1689/oj#art_9').
provenance(tested_for_risk_management/1, 'celex:32024R1689/oj#art_9').
provenance(testing_ensures_consistent_performance/1, 'celex:32024R1689/oj#art_9').
provenance(testing_in_real_world_conditions_permitted/1, 'celex:32024R1689/oj#art_9').
provenance(testing_performed_during_development/1, 'celex:32024R1689/oj#art_9').
provenance(testing_against_defined_metrics/1, 'celex:32024R1689/oj#art_9').
provenance(adverse_impact_on_minors_considered/1, 'celex:32024R1689/oj#art_9').
provenance(risk_management_combined_with_other_union_law/1, 'celex:32024R1689/oj#art_9').
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
declared(required_data_governance_practices/1, 'training, validation and testing data sets subject to data governance and management practices appropriate for intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_design_choices/1, 'data governance practices concern relevant design choices', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_data_collection/1, 'data governance practices concern data collection processes and origin of data, and original purpose of personal data collection', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_preparation_operations/1, 'data governance practices concern relevant data-preparation processing operations such as annotation, labelling, cleaning, updating, enrichment and aggregation', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_assumptions/1, 'data governance practices concern formulation of assumptions about what data measure and represent', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_availability_assessment/1, 'data governance practices concern assessment of availability, quantity and suitability of data sets needed', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_bias_examination/1, 'data governance practices concern examination for possible biases affecting health, safety, fundamental rights or leading to prohibited discrimination', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_bias_mitigation/1, 'data governance practices concern appropriate measures to detect, prevent and mitigate possible biases', 'celex:32024R1689/oj#art_10').
declared(data_governance_practice_data_gaps/1, 'data governance practices concern identification of relevant data gaps or shortcomings and how to address them', 'celex:32024R1689/oj#art_10').
declared(data_set_relevant/1, 'data set is relevant for intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_set_sufficiently_representative/1, 'data set is sufficiently representative for intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_set_free_of_errors/1, 'data set is to the best extent possible free of errors', 'celex:32024R1689/oj#art_10').
declared(data_set_complete/1, 'data set is complete in view of intended purpose', 'celex:32024R1689/oj#art_10').
declared(data_set_appropriate_statistical_properties/1, 'data set has appropriate statistical properties including as regards persons or groups of persons', 'celex:32024R1689/oj#art_10').
declared(data_set_contextual_characteristics/1, 'data set takes into account characteristics or elements particular to specific geographical, contextual, behavioural or functional setting', 'celex:32024R1689/oj#art_10').
declared(permitted_processing_special_categories_for_bias_correction/1, 'provider may exceptionally process special categories of personal data for bias detection and correction', 'celex:32024R1689/oj#art_10').
declared(bias_correction_ineffective_with_other_data/1, 'bias detection and correction cannot be effectively fulfilled by processing other data including synthetic or anonymised data', 'celex:32024R1689/oj#art_10').
declared(special_categories_technical_limitations/1, 'special categories of personal data subject to technical limitations on re-use and state-of-the-art security and privacy-preserving measures including pseudonymisation', 'celex:32024R1689/oj#art_10').
declared(special_categories_security_measures/1, 'special categories of personal data subject to measures ensuring security, protection, suitable safeguards, strict controls and documentation of access with appropriate confidentiality obligations', 'celex:32024R1689/oj#art_10').
declared(special_categories_not_transmitted/1, 'special categories of personal data not transmitted, transferred or otherwise accessed by other parties', 'celex:32024R1689/oj#art_10').
declared(special_categories_deleted_after_bias_correction/1, 'special categories of personal data deleted once bias corrected or retention period ends, whichever comes first', 'celex:32024R1689/oj#art_10').
declared(special_categories_processing_records_include_reasons/1, 'records of processing activities include reasons why processing special categories was strictly necessary and why objective could not be achieved with other data', 'celex:32024R1689/oj#art_10').
declared(training_technique_used/1, 'high-risk AI system makes use of techniques involving training of AI models with data', 'celex:32024R1689/oj#art_10').
declared(no_training_technique_used/1, 'high-risk AI system does not use techniques involving training of AI models with data', 'celex:32024R1689/oj#art_10').
required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    training_data(D),
    uses_data_set(S, D).
required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    validation_data_set(D),
    uses_data_set(S, D).
required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    training_technique_used(S),
    testing_data(D),
    uses_data_set(S, D).
required_data_governance_practices(S) :-
    high_risk_ai_system(S),
    no_training_technique_used(S),
    testing_data(D),
    uses_data_set(S, D).
data_governance_practice_design_choices(S) :-
    required_data_governance_practices(S).
data_governance_practice_data_collection(S) :-
    required_data_governance_practices(S).
data_governance_practice_preparation_operations(S) :-
    required_data_governance_practices(S).
data_governance_practice_assumptions(S) :-
    required_data_governance_practices(S).
data_governance_practice_availability_assessment(S) :-
    required_data_governance_practices(S).
data_governance_practice_bias_examination(S) :-
    required_data_governance_practices(S).
data_governance_practice_bias_mitigation(S) :-
    required_data_governance_practices(S).
data_governance_practice_data_gaps(S) :-
    required_data_governance_practices(S).
data_set_relevant(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).
data_set_sufficiently_representative(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).
data_set_free_of_errors(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D).
data_set_complete(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).
data_set_appropriate_statistical_properties(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).
data_set_contextual_characteristics(D) :-
    high_risk_ai_system(S),
    uses_data_set(S, D),
    intended_purpose(S).
permitted_processing_special_categories_for_bias_correction(S) :-
    high_risk_ai_system(S),
    provider(S),
    bias_correction_ineffective_with_other_data(S),
    special_categories_technical_limitations(S),
    special_categories_security_measures(S),
    special_categories_not_transmitted(S),
    special_categories_deleted_after_bias_correction(S),
    special_categories_processing_records_include_reasons(S).
provenance(required_data_governance_practices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_design_choices/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_data_collection/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_preparation_operations/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_assumptions/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_availability_assessment/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_bias_examination/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_bias_mitigation/1, 'celex:32024R1689/oj#art_10').
provenance(data_governance_practice_data_gaps/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_relevant/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_sufficiently_representative/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_free_of_errors/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_complete/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_appropriate_statistical_properties/1, 'celex:32024R1689/oj#art_10').
provenance(data_set_contextual_characteristics/1, 'celex:32024R1689/oj#art_10').
provenance(permitted_processing_special_categories_for_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(bias_correction_ineffective_with_other_data/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_technical_limitations/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_security_measures/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_not_transmitted/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_deleted_after_bias_correction/1, 'celex:32024R1689/oj#art_10').
provenance(special_categories_processing_records_include_reasons/1, 'celex:32024R1689/oj#art_10').
provenance(training_technique_used/1, 'celex:32024R1689/oj#art_10').
provenance(no_training_technique_used/1, 'celex:32024R1689/oj#art_10').
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
declared(drawn_up_before_placing_on_market_or_putting_into_service/1, 'technical documentation drawn up before placing on market or putting into service', 'celex:32024R1689/oj#art_11').
declared(demonstrates_compliance_with_requirements/1, 'technical documentation demonstrates compliance with requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_11').
declared(provides_information_to_authorities/1, 'technical documentation provides necessary information to national competent authorities and notified bodies in clear and comprehensive form', 'celex:32024R1689/oj#art_11').
declared(contains_minimum_elements_annex_4/1, 'technical documentation contains at minimum the elements set out in Annex IV', 'celex:32024R1689/oj#art_11').
declared(sme/1, 'small and medium-sized enterprise including start-up', 'celex:32024R1689/oj#art_11').
declared(simplified_technical_documentation_form/1, 'simplified technical documentation form targeted at needs of small and microenterprises established by Commission', 'celex:32024R1689/oj#art_11').
declared(uses_simplified_form/1, 'SME opts to provide information in simplified manner using the form', 'celex:32024R1689/oj#art_11').
declared(notified_body_accepts_simplified_form/1, 'notified body accepts the simplified form for purposes of conformity assessment', 'celex:32024R1689/oj#art_11').
declared(single_set_technical_documentation/1, 'single set of technical documentation drawn up for high-risk AI system related to product covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_11').
declared(product_covered_by_union_harmonisation_legislation_annex_1_section_1/1, 'product covered by Union harmonisation legislation listed in Annex I Section 1', 'celex:32024R1689/oj#art_11').
declared(commission_empowered_to_adopt_delegated_acts/1, 'Commission empowered to adopt delegated acts to amend Annex IV', 'celex:32024R1689/oj#art_11').
must_draw_up_technical_documentation(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    technical_documentation(S).
must_keep_technical_documentation_up_to_date(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S).
technical_documentation_demonstrates_compliance(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    demonstrates_compliance_with_requirements(S).
technical_documentation_provides_information_to_authorities(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    provides_information_to_authorities(S).
technical_documentation_contains_minimum_elements(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    contains_minimum_elements_annex_4(S).
sme_may_provide_simplified(S) :-
    high_risk_ai_system(S),
    technical_documentation(S),
    sme(Provider),
    provider(Provider),
    simplified_technical_documentation_form(Form),
    uses_simplified_form(S).
notified_body_accepts_simplified_form_for_conformity_assessment(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    technical_documentation(S),
    sme(Provider),
    provider(Provider),
    uses_simplified_form(S),
    notified_body_accepts_simplified_form(S).
single_set_technical_documentation_required(S) :-
    high_risk_ai_system(S),
    product_covered_by_union_harmonisation_legislation_annex_1_section_1(S),
    single_set_technical_documentation(S).
single_set_technical_documentation_contains_all_information(S) :-
    single_set_technical_documentation_required(S),
    technical_documentation(S),
    contains_minimum_elements_annex_4(S).
commission_empowered_to_amend_annex_4 :-
    commission_empowered_to_adopt_delegated_acts(act(amend_annex_4)).
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(drawn_up_before_placing_on_market_or_putting_into_service/1, 'celex:32024R1689/oj#art_11').
provenance(demonstrates_compliance_with_requirements/1, 'celex:32024R1689/oj#art_11').
provenance(provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(contains_minimum_elements_annex_4/1, 'celex:32024R1689/oj#art_11').
provenance(sme/1, 'celex:32024R1689/oj#art_11').
provenance(simplified_technical_documentation_form/1, 'celex:32024R1689/oj#art_11').
provenance(uses_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation/1, 'celex:32024R1689/oj#art_11').
provenance(product_covered_by_union_harmonisation_legislation_annex_1_section_1/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_11').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_11').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_demonstrates_compliance/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_provides_information_to_authorities/1, 'celex:32024R1689/oj#art_11').
provenance(technical_documentation_contains_minimum_elements/1, 'celex:32024R1689/oj#art_11').
provenance(sme_may_provide_simplified/1, 'celex:32024R1689/oj#art_11').
provenance(notified_body_accepts_simplified_form_for_conformity_assessment/2, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation_required/1, 'celex:32024R1689/oj#art_11').
provenance(single_set_technical_documentation_contains_all_information/1, 'celex:32024R1689/oj#art_11').
provenance(commission_empowered_to_amend_annex_4/0, 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_11', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_12 ====
declared(logging_capability/1, 'high-risk AI system has logging capability', 'celex:32024R1689/oj#art_12').
declared(automatic_recording_of_events/1, 'high-risk AI system technically allows automatic recording of events over its lifetime', 'celex:32024R1689/oj#art_12').
declared(logging_enables_recording/2, 'logging capability enables recording of events relevant for a purpose', 'celex:32024R1689/oj#art_12').
declared(traceability_appropriate_to_intended_purpose/1, 'level of traceability of functioning is appropriate to intended purpose', 'celex:32024R1689/oj#art_12').
declared(minimum_logging_capability/1, 'logging capabilities provide at minimum the specified elements for Annex III point 1(a) systems', 'celex:32024R1689/oj#art_12').
declared(records_period_of_each_use/1, 'logs record period of each use with start and end date and time', 'celex:32024R1689/oj#art_12').
declared(records_reference_database/1, 'logs record reference database against which input data has been checked', 'celex:32024R1689/oj#art_12').
declared(records_input_data_leading_to_match/1, 'logs record input data for which search has led to a match', 'celex:32024R1689/oj#art_12').
declared(records_identification_of_natural_persons/1, 'logs record identification of natural persons involved in verification of results', 'celex:32024R1689/oj#art_12').
automatic_recording_of_events(S) :-
    high_risk_ai_system(S),
    logging_capability(S).
logging_capability(S) :-
    high_risk_ai_system(S),
    technically_allows_automatic_recording(S).
technically_allows_automatic_recording(S) :-
    high_risk_ai_system(S),
    automatic_recording_of_events(S).
traceability_appropriate_to_intended_purpose(S) :-
    high_risk_ai_system(S),
    logging_capability(S),
    intended_purpose(S).
logging_enables_recording(S, identify_risk_situation) :-
    high_risk_ai_system(S),
    logging_capability(S),
    traceability_appropriate_to_intended_purpose(S).
logging_enables_recording(S, facilitate_post_market_monitoring) :-
    high_risk_ai_system(S),
    logging_capability(S),
    traceability_appropriate_to_intended_purpose(S).
logging_enables_recording(S, monitor_operation) :-
    high_risk_ai_system(S),
    logging_capability(S),
    traceability_appropriate_to_intended_purpose(S).
minimum_logging_capability(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    logging_capability(S),
    records_period_of_each_use(S),
    records_reference_database(S),
    records_input_data_leading_to_match(S),
    records_identification_of_natural_persons(S).
records_period_of_each_use(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    logging_capability(S),
    period_in_which_system_is_in_use(S).
records_reference_database(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    logging_capability(S).
records_input_data_leading_to_match(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    logging_capability(S).
records_identification_of_natural_persons(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    logging_capability(S).
provenance(logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(automatic_recording_of_events/1, 'celex:32024R1689/oj#art_12').
provenance(logging_enables_recording/2, 'celex:32024R1689/oj#art_12').
provenance(traceability_appropriate_to_intended_purpose/1, 'celex:32024R1689/oj#art_12').
provenance(minimum_logging_capability/1, 'celex:32024R1689/oj#art_12').
provenance(records_period_of_each_use/1, 'celex:32024R1689/oj#art_12').
provenance(records_reference_database/1, 'celex:32024R1689/oj#art_12').
provenance(records_input_data_leading_to_match/1, 'celex:32024R1689/oj#art_12').
provenance(records_identification_of_natural_persons/1, 'celex:32024R1689/oj#art_12').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_26/par_5').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_12', 'celex:32024R1689/oj#art_14/par_5').

% ==== celex:32024R1689/oj#art_13 ====
declared(sufficiently_transparent_operation/1, 'high-risk AI system operation is sufficiently transparent to enable deployers to interpret output and use it appropriately', 'celex:32024R1689/oj#art_13').
declared(appropriate_type_and_degree_of_transparency/1, 'appropriate type and degree of transparency ensured with view to achieving compliance with provider and deployer obligations', 'celex:32024R1689/oj#art_13').
declared(accompanied_by_instructions_for_use/1, 'high-risk AI system accompanied by instructions for use in appropriate digital format or otherwise', 'celex:32024R1689/oj#art_13').
declared(instructions_concise_complete_correct_clear/1, 'instructions for use are concise, complete, correct and clear', 'celex:32024R1689/oj#art_13').
declared(instructions_relevant_accessible_comprehensible/1, 'instructions for use are relevant, accessible and comprehensible to deployers', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_provider_identity_and_contact/1, 'instructions for use contain identity and contact details of provider and where applicable authorised representative', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_characteristics_capabilities_limitations/1, 'instructions for use contain characteristics, capabilities and limitations of performance', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_intended_purpose/1, 'instructions for use contain intended purpose of high-risk AI system', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_accuracy_robustness_cybersecurity_metrics/1, 'instructions for use contain level of accuracy including metrics, robustness and cybersecurity against which system has been tested and validated', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_known_foreseeable_circumstances_impacting_accuracy/1, 'instructions for use contain any known and foreseeable circumstances that may have impact on expected level of accuracy, robustness and cybersecurity', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_risk_circumstances_health_safety_fundamental_rights/1, 'instructions for use contain any known or foreseeable circumstance related to use in accordance with intended purpose or under conditions of reasonably foreseeable misuse which may lead to risks to health and safety or fundamental rights', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_technical_capabilities_for_explaining_output/1, 'instructions for use contain where applicable technical capabilities and characteristics to provide information relevant to explain output', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_performance_specific_persons_or_groups/1, 'instructions for use contain when appropriate performance regarding specific persons or groups of persons on which system is intended to be used', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_input_data_specifications/1, 'instructions for use contain when appropriate specifications for input data or any other relevant information in terms of training, validation and testing data sets used', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_information_to_interpret_output/1, 'instructions for use contain where applicable information to enable deployers to interpret output and use it appropriately', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_predetermined_changes/1, 'instructions for use contain changes to high-risk AI system and its performance which have been pre-determined by provider at moment of initial conformity assessment', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_human_oversight_measures/1, 'instructions for use contain human oversight measures including technical measures put in place to facilitate interpretation of outputs by deployers', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_computational_hardware_resources/1, 'instructions for use contain computational and hardware resources needed', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_expected_lifetime/1, 'instructions for use contain expected lifetime of high-risk AI system', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_maintenance_care_measures/1, 'instructions for use contain necessary maintenance and care measures including their frequency to ensure proper functioning including as regards software updates', 'celex:32024R1689/oj#art_13').
declared(instructions_contain_log_mechanisms_description/1, 'instructions for use contain where relevant description of mechanisms included within high-risk AI system that allows deployers to properly collect, store and interpret logs', 'celex:32024R1689/oj#art_13').
sufficiently_transparent_operation(S) :-
    high_risk_ai_system(S).
appropriate_type_and_degree_of_transparency(S) :-
    high_risk_ai_system(S),
    sufficiently_transparent_operation(S).
accompanied_by_instructions_for_use(S) :-
    high_risk_ai_system(S),
    instructions_for_use(S).
instructions_concise_complete_correct_clear(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_relevant_accessible_comprehensible(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_provider_identity_and_contact(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_characteristics_capabilities_limitations(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_intended_purpose(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    intended_purpose(S).
instructions_contain_accuracy_robustness_cybersecurity_metrics(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).
instructions_contain_known_foreseeable_circumstances_impacting_accuracy(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).
instructions_contain_risk_circumstances_health_safety_fundamental_rights(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    reasonably_foreseeable_misuse_conditions(S).
instructions_contain_technical_capabilities_for_explaining_output(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).
instructions_contain_performance_specific_persons_or_groups(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).
instructions_contain_input_data_specifications(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S),
    training_data(S).
instructions_contain_information_to_interpret_output(S) :-
    high_risk_ai_system(S),
    instructions_contain_characteristics_capabilities_limitations(S).
instructions_contain_predetermined_changes(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_human_oversight_measures(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_computational_hardware_resources(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_expected_lifetime(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_maintenance_care_measures(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
instructions_contain_log_mechanisms_description(S) :-
    high_risk_ai_system(S),
    accompanied_by_instructions_for_use(S).
provenance(sufficiently_transparent_operation/1, 'celex:32024R1689/oj#art_13').
provenance(appropriate_type_and_degree_of_transparency/1, 'celex:32024R1689/oj#art_13').
provenance(accompanied_by_instructions_for_use/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_concise_complete_correct_clear/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_relevant_accessible_comprehensible/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_provider_identity_and_contact/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_characteristics_capabilities_limitations/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_intended_purpose/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_accuracy_robustness_cybersecurity_metrics/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_known_foreseeable_circumstances_impacting_accuracy/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_risk_circumstances_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_technical_capabilities_for_explaining_output/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_performance_specific_persons_or_groups/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_input_data_specifications/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_information_to_interpret_output/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_predetermined_changes/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_human_oversight_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_computational_hardware_resources/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_expected_lifetime/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_maintenance_care_measures/1, 'celex:32024R1689/oj#art_13').
provenance(instructions_contain_log_mechanisms_description/1, 'celex:32024R1689/oj#art_13').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#chp_3/sec_3').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_9/par_2').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_13', 'celex:32024R1689/oj#art_12').

% ==== celex:32024R1689/oj#art_14 ====
declared(effective_human_oversight/1, 'high-risk AI system can be effectively overseen by natural persons during use', 'celex:32024R1689/oj#art_14').
declared(human_oversight_measures/1, 'measures for human oversight of high-risk AI system', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_commensurate/1, 'oversight measures commensurate with risks, level of autonomy and context of use', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_built_in_by_provider/1, 'oversight measures identified and built into system by provider before placing on market or putting into service', 'celex:32024R1689/oj#art_14').
declared(oversight_measures_for_deployer/1, 'oversight measures identified by provider before placing on market or putting into service and appropriate for deployer to implement', 'celex:32024R1689/oj#art_14').
declared(deployer_enabled_to_understand_capacities_limitations/1, 'natural persons assigned human oversight enabled to properly understand relevant capacities and limitations and monitor operation', 'celex:32024R1689/oj#art_14').
declared(deployer_enabled_to_monitor_operation/1, 'natural persons assigned human oversight enabled to duly monitor operation including detecting and addressing anomalies, dysfunctions and unexpected performance', 'celex:32024R1689/oj#art_14').
declared(deployer_aware_of_automation_bias/1, 'natural persons assigned human oversight remain aware of possible tendency of automatically relying or over-relying on output (automation bias)', 'celex:32024R1689/oj#art_14').
declared(deployer_enabled_to_interpret_output/1, 'natural persons assigned human oversight enabled to correctly interpret output taking into account interpretation tools and methods available', 'celex:32024R1689/oj#art_14').
declared(deployer_enabled_to_decide_not_to_use/1, 'natural persons assigned human oversight enabled to decide not to use system or disregard, override or reverse output', 'celex:32024R1689/oj#art_14').
declared(deployer_enabled_to_intervene_or_interrupt/1, 'natural persons assigned human oversight enabled to intervene in operation or interrupt system through stop button or similar procedure to halt in safe state', 'celex:32024R1689/oj#art_14').
declared(separate_verification_by_two_persons_required/1, 'no action or decision taken on basis of identification unless separately verified and confirmed by at least two natural persons', 'celex:32024R1689/oj#art_14').
declared(annex_3_point_1_a_system/1, 'high-risk AI system referred to in Annex III point 1(a)', 'celex:32024R1689/oj#art_14').
effective_human_oversight(S) :-
    high_risk_ai_system(S),
    designed_for_effective_oversight(S).
designed_for_effective_oversight(S) :-
    high_risk_ai_system(S),
    has_appropriate_human_machine_interface_tools(S),
    overseen_by_natural_persons_during_use(S).
human_oversight_measures(S) :-
    high_risk_ai_system(S),
    oversight_aims_to_prevent_or_minimise_risks(S).
oversight_aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    aims_to_prevent_or_minimise_risks_to_health_safety_fundamental_rights(S),
    risks_persist_despite_other_requirements(S).
risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    used_in_accordance_with_intended_purpose(S).
risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse_conditions(S).
oversight_measures_commensurate(S) :-
    high_risk_ai_system(S),
    commensurate_with_risks(S),
    commensurate_with_level_of_autonomy(S),
    commensurate_with_context_of_use(S).
human_oversight_measures(S) :-
    oversight_measures_commensurate(S),
    ensured_through_built_in_measures(S).
human_oversight_measures(S) :    oversight_measures_commensurate(S),
    ensured_through_deployer_measures(S).
human_oversight_measures(S) :-
    oversight_measures_commensurate(S),
    ensured_through_built_in_measures(S),
    ensured_through_deployer_measures(S).
ensured_through_built_in_measures(S) :-
    oversight_measures_built_in_by_provider(S).
ensured_through_deployer_measures(S) :-
    oversight_measures_for_deployer(S).
oversight_measures_built_in_by_provider(S) :-
    high_risk_ai_system(S),
    provider_identified_and_built(S),
    technically_feasible(S),
    before_placing_on_market_or_putting_into_service(S).
oversight_measures_for_deployer(S) :-
    high_risk_ai_system(S),
    provider_identified(S),
    before_placing_on_market_or_putting_into_service(S),
    appropriate_for_deployer_to_implement(S).
deployer_enabled_to_understand_capacities_limitations(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    enabled_to_understand_capacities_and_limitations(D, S).
deployer_enabled_to_monitor_operation(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    able_to_detect_anomalies_dysfunctions_unexpected_performance(D, S).
deployer_aware_of_automation_bias(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    aware_of_automation_bias(D, S).
deployer_enabled_to_interpret_output(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    interpretation_methods_available(D, S).
deployer_enabled_to_decide_not_to_use(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    can_decide_not_to_use(D, S).
deployer_enabled_to_intervene_or_interrupt(S) :-
    high_risk_ai_system(S),
    assigned_human_oversight(D, S),
    can_intervene_or_interrupt(D, S).
separate_verification_by_two_persons_required(S) :-
    annex_3_point_1_a_system(S),
    high_risk_ai_system(S),
    identification_based_action_or_decision(S),
    \+ separately_verified_and_confirmed(S).
separate_verification_by_two_persons_required(S) :-
    annex_3_point_1_a_system(S),
    high_risk_ai_system(S),
    identification_based_action_or_decision(S),
    separately_verified_and_confirmed(S),
    \+ verified_by_at_least_two_natural_persons(S).
annex_3_point_1_a_system(S) :-
    high_risk_ai_system(S),
    referred_to_in_annex_3_point_1_a(S).
exempt_separate_verification_law_enforcement(S) :-
    annex_3_point_1_a_system(S),
    for_purposes_of_law_enforcement(S),
    union_law_considers_application_disproportionate(S).
exempt_separate_verification_law_enforcement(S) :-
    annex_3_point_1_a_system(S),
    for_purposes_of_law_enforcement(S),
    in_accordance_with_national_rules(S),
    union_law_considers_application_disproportionate(S).
exempt_separate_verification_migration_border_asylum(S) :-
    annex_3_point_1_a_system(S),
    used_for_migration_border_control_or_asylum(S),
    union_law_considers_application_disproportionate(S).
exempt_separate_verification_migration_border_asylum(S) :-
    annex_3_point_1_a_system(S),
    used_for_migration_border_control_or_asylum(S),
    in_accordance_with_national_rules(S),
    union_law_considers_application_disproportionate(S).
must_enable_deployer_capabilities(Provider, S) :-
    high_risk_ai_system(S),
    provider(Provider),
    deployer_enabled_to_understand_capacities_limitations(S),
    deployer_enabled_to_monitor_operation(S),
    deployer_aware_of_automation_bias(S),
    deployer_enabled_to_interpret_output(S),
    deployer_enabled_to_decide_not_to_use(S),
    deployer_enabled_to_intervene_or_interrupt(S).
provenance(effective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_commensurate/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_built_in_by_provider/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measures_for_deployer/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_understand_capacities_limitations/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_monitor_operation/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_aware_of_automation_bias/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_interpret_output/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_decide_not_to_use/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_enabled_to_intervene_or_interrupt/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons_required/1, 'celex:32024R1689/oj#art_14').
provenance(annex_3_point_1_a_system/1, 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').

% ==== celex:32024R1689/oj#art_15 ====
declared(required_accuracy_robustness_cybersecurity/1, 'high-risk AI system designed and developed to achieve appropriate level of accuracy, robustness and cybersecurity throughout lifecycle', 'celex:32024R1689/oj#art_15').
declared(required_declaration_of_accuracy_metrics/1, 'levels of accuracy and relevant accuracy metrics declared in accompanying instructions of use', 'celex:32024R1689/oj#art_15').
declared(required_resilience_against_errors_faults_inconsistencies/1, 'high-risk AI system resilient as possible regarding errors, faults or inconsistencies within system or environment', 'celex:32024R1689/oj#art_15').
declared(required_feedback_loop_mitigation/1, 'high-risk AI system that continues to learn after placing on market or putting into service developed to eliminate or reduce risk of biased outputs influencing future operations and ensure feedback loops duly addressed', 'celex:32024R1689/oj#art_15').
declared(required_cybersecurity_technical_solutions/1, 'technical solutions aiming to ensure cybersecurity of high-risk AI system appropriate to relevant circumstances and risks', 'celex:32024R1689/oj#art_15').
declared(required_ai_specific_vulnerability_measures/1, 'technical solutions to address AI specific vulnerabilities include measures to prevent, detect, respond to, resolve and control for attacks', 'celex:32024R1689/oj#art_15').
required_accuracy_robustness_cybersecurity(S) :-
    high_risk_ai_system(S),
    appropriate_level(S, accuracy),
    appropriate_level(S, robustness),
    appropriate_level(S, cybersecurity),
    consistent_performance_throughout_lifecycle(S).
must_encourage_development(ai_office, benchmarks_and_measurement_methodologies) :-
    cooperation_with_stakeholders,
    cooperation_with_metrology_and_benchmarking_authorities.
required_declaration_of_accuracy_metrics(S) :-
    high_risk_ai_system(S),
    accuracy_levels_declared(S, instructions_for_use(S)),
    relevant_accuracy_metrics_declared(S, instructions_for_use(S)).
required_resilience_against_errors_faults_inconsistencies(S) :-
    high_risk_ai_system(S),
    resilient_as_possible(S, errors_faults_inconsistencies),
    technical_and_organisational_measures_taken(S).
required_feedback_loop_mitigation(S) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S),
    eliminates_or_reduces_biased_output_risk(S),
    feedback_loops_duly_addressed(S),
    appropriate_mitigation_measures(S).
must_be_resilient_against_unauthorised_alteration(S) :-
    high_risk_ai_system(S).
required_cybersecurity_technical_solutions(S) :-
    high_risk_ai_system(S),
    cybersecurity_technical_solution(S),
    appropriate_to_circumstances_and_risks(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_data_poisoning(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_poisoning(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_adversarial_examples(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_evasion(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_confidentiality_attacks(S).
required_ai_specific_vulnerability_measures(S) :-
    high_risk_ai_system(S),
    measures_against_model_flaws(S).
provenance(required_accuracy_robustness_cybersecurity/1, 'celex:32024R1689/oj#art_15').
provenance(required_declaration_of_accuracy_metrics/1, 'celex:32024R1689/oj#art_15').
provenance(required_resilience_against_errors_faults_inconsistencies/1, 'celex:32024R1689/oj#art_15').
provenance(required_feedback_loop_mitigation/1, 'celex:32024R1689/oj#art_15').
provenance(required_cybersecurity_technical_solutions/1, 'celex:32024R1689/oj#art_15').
provenance(required_ai_specific_vulnerability_measures/1, 'celex:32024R1689/oj#art_15').
provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_15').
provenance(must_be_resilient_against_unauthorised_alteration/1, 'celex:32024R1689/oj#art_15').
references('celex:32024R1689/oj#art_15', 'celex:32024R1689/oj#art_15/par_1').

% ==== celex:32024R1689/oj#art_16 ====
declared(must_indicate_identification/2, 'provider indicates name, registered trade name or registered trade mark, and contact address on the high-risk AI system or its packaging or accompanying documentation', 'celex:32024R1689/oj#art_16').
declared(must_have_quality_management_system/2, 'provider has a quality management system in place which complies with Article 17', 'celex:32024R1689/oj#art_16').
declared(must_undergo_conformity_assessment/2, 'provider ensures high-risk AI system undergoes relevant conformity assessment procedure prior to being placed on the market or put into service', 'celex:32024R1689/oj#art_16').
declared(must_affix_ce_marking/2, 'provider affixes CE marking to high-risk AI system or its packaging or accompanying documentation to indicate conformity with the regulation', 'celex:32024R1689/oj#art_16').
declared(must_demonstrate_conformity/3, 'provider demonstrates conformity of high-risk AI system with requirements upon reasoned request of national competent authority', 'celex:32024R1689/oj#art_16').
declared(must_comply_with_accessibility_requirements/2, 'provider ensures high-risk AI system complies with accessibility requirements in accordance with Directive (EU) 2016/2102 and Directive (EU) 2019/882', 'celex:32024R1689/oj#art_16').
must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req),
    compliant_with(S, Req).
must_indicate_identification(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    indicates_on_system_or_packaging_or_documentation(P, S, identification(name, registered_trade_name, registered_trade_mark, contact_address)).
must_have_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_in_place(P),
    complies_with_article_17(P).
must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_referred_to_in_article_18(Doc),
    keep_at_disposal(P, Doc).
logs_under_control(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_automatically_generated(S),
    logs_referred_to_in_article_19(S),
    under_control_of(P, S).
must_undergo_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc),
    procedure_referred_to_in_article_43(Proc),
    undergoes(S, Proc),
    before_placing_on_market_or_putting_into_service(S).
must_draw_up_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    draws_up_eu_declaration_of_conformity(P, S),
    in_accordance_with_article_47(P, S).
must_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    affixes_ce_marking(P, S),
    on_system_or_packaging_or_documentation(P, S),
    indicates_conformity_with_regulation(S),
    in_accordance_with_article_48(P, S).
must_comply_with_registration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    registration_obligations_referred_to_in_article_49_par_1(Obl),
    complies_with(P, Obl).
must_take_necessary_steps(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    takes_corrective_actions(P, S),
    provides_information_as_required_in_article_20(P, S).
must_provide(P, information(conformity(S)), A) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    reasoned_request(A, P),
    demonstrates_conformity(P, S, requirements_set_out_in_chapter_3_section_2).
must_demonstrate_conformity(P, S, A) :-
    provider(P),
    high_risk_ai_system(S),
    national_competent_authority(A),
    from_competent_authority(reasoned_request, A),
    demonstrates_conformity_with_requirements(P, S, chapter_3_section_2).
must_comply_with_accessibility_requirements(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    complies_with_accessibility_requirements(S, directive_eu_2016_2102),
    complies_with_accessibility_requirements(S, directive_eu_2019_882).
compliant_with(S, Req) :-
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req).
indicates_on_system_or_packaging_or_documentation(P, S, identification(Name, TradeName, TradeMark, Address)) :-
    provider(P),
    high_risk_ai_system(S),
    (indicates_on_system(P, S, identification(Name, TradeName, TradeMark, Address));
     (indicates_on_packaging(P, S, identification(Name, TradeName, TradeMark, Address));
      indicates_on_accompanying_documentation(P, S, identification(Name, TradeName, TradeMark, Address)))).
quality_management_system_in_place(P) :-
    provider(P).
complies_with_article_17(P) :-
    provider(P),
    quality_management_system_in_place(P).
documentation_referred_to_in_article_18(Doc) :-
    information_and_documentation(Doc).
logs_automatically_generated(S) :-
    high_risk_ai_system(S),
    automatically_generated(S).
logs_referred_to_in_article_19(S) :-
    high_risk_ai_system(S),
    automatically_generated(S).
under_control_of(P, S) :-
    provider(P),
    high_risk_ai_system(S).
conformity_assessment_procedure(Proc) :-
    conformity_assessment(Proc).
procedure_referred_to_in_article_43(Proc) :-
    conformity_assessment_procedure(Proc).
undergoes(S, Proc) :-
    high_risk_ai_system(S),
    conformity_assessment_procedure(Proc).
before_placing_on_market_or_putting_into_service(S) :-
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).
draws_up_eu_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).
in_accordance_with_article_47(P, S) :-
    provider(P),
    high_risk_ai_system(S).
affixes_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    ce_marking(S).
on_system_or_packaging_or_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S).
indicates_conformity_with_regulation(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
in_accordance_with_article_48(P, S) :-
    provider(P),
    high_risk_ai_system(S).
registration_obligations_referred_to_in_article_49_par_1(Obl) :-
    registered_in_eu_database(Obl).
complies_with(P, Obl) :-
    provider(P),
    registered_in_eu_database(Obl).
takes_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_take_corrective_actions(P, S).
provides_information_as_required_in_article_20(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_provide(P, information(article_20), national_competent_authority).
reasoned_request(A, P) :-
    national_competent_authority(A),
    from_competent_authority(reasoned_request, A).
demonstrates_conformity(P, S, Req) :-
    provider(P),
    high_risk_ai_system(S),
    requirements_set_out_in_chapter_3_section_2(Req).
demonstrates_conformity_with_requirements(P, S, chapter_3_section_2) :-
    provider(P),
    high_risk_ai_system(S).
complies_with_accessibility_requirements(S, directive_eu_2016_2102) :-
    high_risk_ai_system(S).
complies_with_accessibility_requirements(S, directive_eu_2019_882) :-
    high_risk_ai_system(S).
requirements_set_out_in_chapter_3_section_2(Req) :-
    article_31_requirements(Req).
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(must_indicate_identification/2, 'celex:32024R1689/oj#art_16').
provenance(must_have_quality_management_system/2, 'celex:32024R1689/oj#art_16').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_16').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_16').
provenance(must_undergo_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(must_draw_up_eu_declaration/2, 'celex:32024R1689/oj#art_16').
provenance(must_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_registration/2, 'celex:32024R1689/oj#art_16').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_16').
provenance(must_provide/3, 'celex:32024R1689/oj#art_16').
provenance(must_demonstrate_conformity/3, 'celex:32024R1689/oj#art_16').
provenance(must_comply_with_accessibility_requirements/2, 'celex:32024R1689/oj#art_16').
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
declared(quality_management_system/1, 'quality management system ensuring compliance with the regulation', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_documented/1, 'quality management system documented in systematic and orderly manner as written policies, procedures and instructions', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_includes/2, 'quality management system includes aspect', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_proportionate/1, 'implementation of quality management system aspects is proportionate to size of provider organisation', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_respects_rigour/1, 'provider respects degree of rigour and level of protection required to ensure compliance', 'celex:32024R1689/oj#art_17').
declared(quality_management_system_may_integrate_sectoral/1, 'provider subject to sectoral Union law quality management obligations may include aspects as part of that system', 'celex:32024R1689/oj#art_17').
declared(financial_institution_quality_management_deemed_fulfilled/1, 'financial institution provider complying with Union financial services law internal governance rules has quality management obligation deemed fulfilled except for points g, h, i', 'celex:32024R1689/oj#art_17').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to internal governance requirements under Union financial services law', 'celex:32024R1689/oj#art_17').
must_put_in_place_quality_management_system(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system_for(P, S).
quality_management_system_for(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    quality_management_system(QMS),
    quality_management_system_documented(QMS),
    quality_management_system_includes(QMS, regulatory_compliance_strategy),
    quality_management_system_includes(QMS, design_control_and_verification),
    quality_management_system_includes(QMS, development_quality_control_and_assurance),
    quality_management_system_includes(QMS, examination_test_validation_procedures),
    quality_management_system_includes(QMS, technical_specifications_and_standards),
    quality_management_system_includes(QMS, data_management_systems_and_procedures),
    quality_management_system_includes(QMS, risk_management_system),
    quality_management_system_includes(QMS, post_market_monitoring_system),
    quality_management_system_includes(QMS, serious_incident_reporting_procedures),
    quality_management_system_includes(QMS, communication_handling),
    quality_management_system_includes(QMS, record_keeping_systems_and_procedures),
    quality_management_system_includes(QMS, resource_management),
    quality_management_system_includes(QMS, accountability_framework),
    quality_management_system_proportionate(QMS),
    quality_management_system_respects_rigour(QMS).
quality_management_system_documented(QMS) :-
    quality_management_system(QMS).
quality_management_system_proportionate(QMS) :-
    quality_management_system(QMS).
quality_management_system_respects_rigour(QMS) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, regulatory_compliance_strategy) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, design_control_and_verification) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, development_quality_control_and_assurance) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, examination_test_validation_procedures) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, technical_specifications_and_standards) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, data_management_systems_and_procedures) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, risk_management_system) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, post_market_monitoring_system) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, serious_incident_reporting_procedures) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, communication_handling) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, record_keeping_systems_and_procedures) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, resource_management) :-
    quality_management_system(QMS).
quality_management_system_includes(QMS, accountability_framework) :-
    quality_management_system(QMS).
quality_management_system_may_integrate_sectoral(P) :-
    provider(P),
    high_risk_ai_system(_S),
    subject_to_sectoral_quality_management_obligations(P).
subject_to_sectoral_quality_management_obligations(P) :-
    provider(P).
financial_institution_quality_management_deemed_fulfilled(P) :-
    financial_institution_provider(P),
    complies_with_financial_services_internal_governance(P).
financial_institution_provider(P) :-
    provider(P).
complies_with_financial_services_internal_governance(P) :-
    financial_institution_provider(P).
must_put_in_place_quality_management_system(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    financial_institution_quality_management_deemed_fulfilled(P),
    quality_management_system_includes(QMS, risk_management_system),
    quality_management_system_includes(QMS, post_market_monitoring_system),
    quality_management_system_includes(QMS, serious_incident_reporting_procedures).
provenance(quality_management_system/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_documented/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_includes/2, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_proportionate/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_respects_rigour/1, 'celex:32024R1689/oj#art_17').
provenance(quality_management_system_may_integrate_sectoral/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_quality_management_deemed_fulfilled/1, 'celex:32024R1689/oj#art_17').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_17').
provenance(must_put_in_place_quality_management_system/2, 'celex:32024R1689/oj#art_17').
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
declared(period/2, 'period with duration and reference point', 'celex:32024R1689/oj#art_18').
declared(years/1, 'number of years', 'celex:32024R1689/oj#art_18').
declared(after/1, 'after a reference event', 'celex:32024R1689/oj#art_18').
declared(placed_on_market_or_put_into_service/1, 'AI system placed on market or put into service', 'celex:32024R1689/oj#art_18').
declared(technical_documentation/1, 'technical documentation referred to in Article 11', 'celex:32024R1689/oj#art_18').
declared(quality_management_system_documentation/1, 'documentation concerning quality management system referred to in Article 17', 'celex:32024R1689/oj#art_18').
declared(approved_changes_documentation/1, 'documentation concerning changes approved by notified bodies', 'celex:32024R1689/oj#art_18').
declared(notified_body_decisions/1, 'decisions and other documents issued by notified bodies', 'celex:32024R1689/oj#art_18').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity referred to in Article 47', 'celex:32024R1689/oj#art_18').
declared(documentation_art_18_par_1/1, 'documentation referred to in Article 18(1)', 'celex:32024R1689/oj#art_18').
declared(provider_or_authorised_representative_bankrupt_or_ceased/2, 'provider or authorised representative goes bankrupt or ceases activity', 'celex:32024R1689/oj#art_18').
declared(financial_institution_provider/1, 'provider that is a financial institution subject to Union financial services law requirements', 'celex:32024R1689/oj#art_18').
declared(maintains_technical_documentation_as_part_of/2, 'provider maintains technical documentation as part of documentation kept under relevant law', 'celex:32024R1689/oj#art_18').
must_keep_documentation(Provider, technical_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, technical_documentation(S), period(years(10), after(S))).
must_keep_documentation(Provider, quality_management_system_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, quality_management_system_documentation(S), period(years(10), after(S))).
must_keep_documentation(Provider, approved_changes_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, approved_changes_documentation(S), period(years(10), after(S))).
must_keep_documentation(Provider, notified_body_decisions(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, notified_body_decisions(S), period(years(10), after(S))).
must_keep_documentation(Provider, eu_declaration_of_conformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    keep_at_disposal(Provider, eu_declaration_of_conformity(S), period(years(10), after(S))).
keep_at_disposal(Provider, Doc, period(years(10), after(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    must_keep_documentation(Provider, Doc).
placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).
documentation_art_18_par_1(Doc) :-
    Doc = technical_documentation(_).
documentation_art_18_par_1(Doc) :-
    Doc = quality_management_system_documentation(_).
documentation_art_18_par_1(Doc) :-
    Doc = approved_changes_documentation(_).
documentation_art_18_par_1(Doc) :-
    Doc = notified_body_decisions(_).
documentation_art_18_par_1(Doc) :-
    Doc = eu_declaration_of_conformity(_).
must_keep_documentation(Provider, documentation_art_18_par_1(Doc)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    documentation_art_18_par_1(Doc),
    keep_at_disposal(Provider, Doc, period(years(10), after(S))).
provider_or_authorised_representative_bankrupt_or_ceased(Provider, MemberState) :-
    provider(Provider),
    member_state(MemberState),
    provider_established_in_territory(Provider, MemberState).
provider_or_authorised_representative_bankrupt_or_ceased(Representative, MemberState) :-
    authorised_representative(Representative),
    member_state(MemberState),
    representative_established_in_territory(Representative, MemberState).
declared(provider_established_in_territory/2, 'provider established in territory of Member State', 'celex:32024R1689/oj#art_18').
declared(representative_established_in_territory/2, 'authorised representative established in territory of Member State', 'celex:32024R1689/oj#art_18').
declared(member_state_determines_conditions/2, 'Member State determines conditions for documentation availability', 'celex:32024R1689/oj#art_18').
member_state_determines_conditions(MemberState, documentation_art_18_par_1(Doc)) :-
    member_state(MemberState),
    documentation_art_18_par_1(Doc),
    provider_or_authorised_representative_bankrupt_or_ceased(_Provider, MemberState).
financial_institution_provider(Provider) :-
    provider(Provider),
    subject_to_union_financial_services_law(Provider).
declared(subject_to_union_financial_services_law/1, 'subject to requirements regarding internal governance under Union financial services law', 'celex:32024R1689/oj#art_18').
maintains_technical_documentation_as_part_of(Provider, relevant_union_financial_services_law) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(S),
    technical_documentation(S),
    must_keep_documentation(Provider, technical_documentation(S)).
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(period/2, 'celex:32024R1689/oj#art_18').
provenance(years/1, 'celex:32024R1689/oj#art_18').
provenance(after/1, 'celex:32024R1689/oj#art_18').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_18').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(quality_management_system_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(approved_changes_documentation/1, 'celex:32024R1689/oj#art_18').
provenance(notified_body_decisions/1, 'celex:32024R1689/oj#art_18').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_art_18_par_1/1, 'celex:32024R1689/oj#art_18').
provenance(provider_or_authorised_representative_bankrupt_or_ceased/2, 'celex:32024R1689/oj#art_18').
provenance(provider_established_in_territory/2, 'celex:32024R1689/oj#art_18').
provenance(representative_established_in_territory/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').
provenance(subject_to_union_financial_services_law/1, 'celex:32024R1689/oj#art_18').
provenance(maintains_technical_documentation_as_part_of/2, 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').

% ==== celex:32024R1689/oj#art_19 ====
declared(provider/1, 'entity that develops or places an AI system', 'reconciled').
declared(financial_institution/1, 'financial institution subject to Union financial services law', 'celex:32024R1689/oj#art_19').
declared(subject_to_financial_services_law/1, 'subject to requirements regarding internal governance, arrangements or processes under Union financial services law', 'celex:32024R1689/oj#art_19').
declared(keep_logs/2, 'provider keeps logs for a period', 'celex:32024R1689/oj#art_19').
declared(appropriate_period/2, 'period appropriate to intended purpose of high-risk AI system', 'celex:32024R1689/oj#art_19').
declared(minimum_period/1, 'minimum period of six months', 'celex:32024R1689/oj#art_19').
declared(logs_as_part_of_financial_documentation/1, 'logs maintained as part of documentation kept under relevant financial services law', 'celex:32024R1689/oj#art_19').
must_keep_logs(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    logs_under_control(Provider, S),
    automatically_generated(S).
keep_logs(Provider, S) :-
    must_keep_logs(Provider, S),
    appropriate_period(Period, S),
    minimum_period(Period).
appropriate_period(Period, S) :-
    intended_purpose(S),
    period_appropriate_to_intended_purpose(Period, S).
minimum_period(months(6)).
period_appropriate_to_intended_purpose(Period, S) :-
    intended_purpose(S),
    period_at_least(Period, months(6)).
period_at_least(Period, Minimum) :-
    Period = months(N),
    Minimum = months(M),
    N >= M.
logs_as_part_of_financial_documentation(Provider) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_financial_services_law(Provider),
    high_risk_ai_system(S),
    must_keep_logs(Provider, S).
must_keep_logs(Provider, S) :-
    provider(Provider),
    financial_institution(Provider),
    subject_to_financial_services_law(Provider),
    high_risk_ai_system(S),
    logs_as_part_of_financial_documentation(Provider).
provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(appropriate_period/2, 'celex:32024R1689/oj#art_19').
provenance(minimum_period/1, 'celex:32024R1689/oj#art_19').
provenance(logs_as_part_of_financial_documentation/1, 'celex:32024R1689/oj#art_19').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_19').
provenance(subject_to_financial_services_law/1, 'celex:32024R1689/oj#art_19').
provenance(period_appropriate_to_intended_purpose/2, 'celex:32024R1689/oj#art_19').
provenance(period_at_least/2, 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').

% ==== celex:32024R1689/oj#art_20 ====
declared(nonconformity_considered/2, 'provider considers or has reason to consider that high-risk AI system is not in conformity', 'celex:32024R1689/oj#art_20').
declared(corrective_action_taken/2, 'provider takes necessary corrective actions to bring system into conformity, withdraw, disable, or recall', 'celex:32024R1689/oj#art_20').
declared(informed_distributors/2, 'provider informs distributors of the high-risk AI system concerned', 'celex:32024R1689/oj#art_20').
declared(informed_deployers/2, 'provider informs deployers where applicable', 'celex:32024R1689/oj#art_20').
declared(informed_authorised_representative/2, 'provider informs authorised representative where applicable', 'celex:32024R1689/oj#art_20').
declared(informed_importers/2, 'provider informs importers where applicable', 'celex:32024R1689/oj#art_20').
declared(risk_investigated/2, 'provider investigates causes of risk in collaboration with reporting deployer', 'celex:32024R1689/oj#art_20').
declared(informed_market_surveillance_authorities/2, 'provider informs market surveillance authorities competent for the high-risk AI system', 'celex:32024R1689/oj#art_20').
declared(informed_notified_body/2, 'provider informs notified body that issued certificate where applicable', 'celex:32024R1689/oj#art_20').
nonconformity_considered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S).
nonconformity_considered(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).
must_take_corrective_actions(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S).
must_inform(P, distributors(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    distributor(D),
    informed_distributors(P, D).
must_inform(P, deployers(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    deployer(D),
    informed_deployers(P, D).
must_inform(P, authorised_representative(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    authorised_representative(AR),
    informed_authorised_representative(P, AR).
must_inform(P, importers(S)) :-
    provider(P),
    high_risk_ai_system(S),
    nonconformity_considered(P, S),
    importer(I),
    informed_importers(P, I).
must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    deployer(D),
    risk_investigated(P, D).
must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    market_surveillance_authority(MSA),
    informed_market_surveillance_authorities(P, MSA).
must_notify_market_surveillance_authority(P, nonconformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    market_surveillance_authority(MSA),
    informed_market_surveillance_authorities(P, MSA).
must_inform(P, notified_body(S, certificate(S))) :-
    provider(P),
    high_risk_ai_system(S),
    presents_risk(S),
    notified_body(NB),
    certificate(C),
    informed_notified_body(P, NB).
provenance(nonconformity_considered/2, 'celex:32024R1689/oj#art_20').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_20').
provenance(informed_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(informed_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(informed_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(informed_importers/2, 'celex:32024R1689/oj#art_20').
provenance(risk_investigated/2, 'celex:32024R1689/oj#art_20').
provenance(informed_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(informed_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').

% ==== celex:32024R1689/oj#art_21 ====
must_provide(Provider, information_and_documentation(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    from_competent_authority(request, Authority),
    national_competent_authority(Authority),
    easily_understood_language(language(Language)),
    member_state(MemberState),
    indicates_official_language(MemberState, Language).
must_provide(Provider, access_to_logs(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    from_competent_authority(request, Authority),
    national_competent_authority(Authority),
    automatically_generated(Logs),
    logs_under_control(Provider, Logs),
    logs_of_system(Logs, S).
must_treat_information_confidentially(Authority, information(Info)) :-
    national_competent_authority(Authority),
    obtained_pursuant_to(Info, 'celex:32024R1689/oj#art_21').
provenance(must_provide/2, 'celex:32024R1689/oj#art_21').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_21').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_21', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_22 ====
declared(must_keep_declaration_up_to_date/2, 'must keep EU declaration of conformity up-to-date', 'reconciled').
declared(must_appoint_authorised_representative/2, 'third-country provider must appoint authorised representative before making high-risk AI system available on Union market', 'celex:32024R1689/oj#art_22').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform tasks specified in mandate', 'celex:32024R1689/oj#art_22').
declared(must_perform_mandated_tasks/2, 'authorised representative must perform tasks specified in mandate', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_verification/2, 'mandate empowers authorised representative to verify EU declaration, technical documentation and conformity assessment', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_keep_at_disposal/2, 'mandate empowers authorised representative to keep documents at disposal for 10 years', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_provide_information/2, 'mandate empowers authorised representative to provide information and documentation upon reasoned request', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_cooperate/2, 'mandate empowers authorised representative to cooperate with competent authorities', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_registration/2, 'mandate empowers authorised representative to comply with registration obligations', 'celex:32024R1689/oj#art_22').
declared(mandate_empowers_be_addressed/2, 'mandate empowers authorised representative to be addressed by competent authorities', 'celex:32024R1689/oj#art_22').
declared(must_terminate_mandate/2, 'authorised representative must terminate mandate if provider acts contrary to obligations', 'celex:32024R1689/oj#art_22').
must_appoint_authorised_representative(P, S) :-
    third_country_provider(P),
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S).
must_enable_authorised_representative(P, AR) :-
    provider(P),
    authorised_representative(AR),
    mandate_received_from(P, AR).
must_perform_mandated_tasks(AR, Mandate) :-
    authorised_representative(AR),
    mandate_received_from(_P, AR),
    tasks_specified_in(Mandate, AR).
mandate_empowers_verification(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration(_P, S),
    must_keep_technical_documentation_up_to_date(_P, S),
    conformity_assessment_procedure(S).
mandate_empowers_keep_at_disposal(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    placed_on_market(S),
    keep_at_disposal(AR, years(10)).
mandate_empowers_provide_information(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    from_competent_authority(Request, AR),
    must_provide(AR, information_and_documentation(S), Request).
mandate_empowers_cooperate(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    from_competent_authority(Request, AR),
    must_cooperate_with_authorities(AR, action(Request, S)).
mandate_empowers_registration(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    must_comply_with_registration(AR, S).
mandate_empowers_be_addressed(AR, _S) :-
    authorised_representative(AR).
must_terminate_mandate(AR, P) :-
    authorised_representative(AR),
    provider(P),
    acting_contrary_to_obligations(P).
must_inform_market_surveillance_authority(AR, termination(P, Reasons)) :-
    authorised_representative(AR),
    provider(P),
    acting_contrary_to_obligations(P),
    must_terminate_mandate(AR, P),
    without_delay(AR).
must_notify_market_surveillance_authority(AR, termination(P, Reasons)) :-
    authorised_representative(AR),
    provider(P),
    acting_contrary_to_obligations(P),
    must_terminate_mandate(AR, P).
submit_copy_upon_request(AR, mandate) :-
    authorised_representative(AR),
    from_competent_authority(Request, AR),
    easily_understood_language(mandate).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').
provenance(must_perform_mandated_tasks/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_verification/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_keep_at_disposal/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_provide_information/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_cooperate/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_registration/2, 'celex:32024R1689/oj#art_22').
provenance(mandate_empowers_be_addressed/2, 'celex:32024R1689/oj#art_22').
provenance(must_terminate_mandate/2, 'celex:32024R1689/oj#art_22').
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
declared(must_verify_conformity_before_placing/2, 'importer must verify conformity of high-risk AI system before placing on market', 'celex:32024R1689/oj#art_23').
declared(conformity_assessment_carried_out_by_provider/1, 'relevant conformity assessment procedure carried out by provider of high-risk AI system', 'celex:32024R1689/oj#art_23').
declared(technical_documentation_drawn_up_by_provider/1, 'provider has drawn up technical documentation in accordance with Article 11 and Annex IV', 'celex:32024R1689/oj#art_23').
declared(system_bears_ce_marking_and_accompanied/1, 'system bears required CE marking and is accompanied by EU declaration of conformity and instructions for use', 'celex:32024R1689/oj#art_23').
declared(provider_has_appointed_authorised_representative/1, 'provider has appointed authorised representative in accordance with Article 22(1)', 'celex:32024R1689/oj#art_23').
declared(sufficient_reason_to_consider_non_conformity/2, 'importer has sufficient reason to consider high-risk AI system not in conformity, falsified, or accompanied by falsified documentation', 'celex:32024R1689/oj#art_23').
declared(must_not_place_on_market_until_conformity/2, 'importer must not place system on market until brought into conformity', 'celex:32024R1689/oj#art_23').
declared(must_indicate_name_trade_name_or_trade_mark_and_address/2, 'importer must indicate name, registered trade name or registered trade mark, and contact address on system, packaging or accompanying documentation', 'celex:32024R1689/oj#art_23').
declared(must_ensure_storage_transport_conditions_do_not_jeopardise_compliance/2, 'importer must ensure storage or transport conditions do not jeopardise compliance with requirements', 'celex:32024R1689/oj#art_23').
declared(must_keep_copy_of_certificate_instructions_declaration/2, 'importer must keep copy of certificate, instructions for use, and EU declaration of conformity for 10 years after placing on market or putting into service', 'celex:32024R1689/oj#art_23').
declared(must_provide_information_and_documentation_upon_reasoned_request/2, 'importer must provide competent authorities with necessary information and documentation upon reasoned request to demonstrate conformity', 'celex:32024R1689/oj#art_23').
declared(must_ensure_technical_documentation_available_to_authorities/2, 'importer must ensure technical documentation can be made available to competent authorities', 'celex:32024R1689/oj#art_23').
declared(must_cooperate_with_competent_authorities/2, 'importer must cooperate with competent authorities in any action relating to high-risk AI system placed on market', 'celex:32024R1689/oj#art_23').
must_verify_conformity_before_placing(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    conformity_assessment_carried_out_by_provider(S),
    technical_documentation_drawn_up_by_provider(S),
    system_bears_ce_marking_and_accompanied(S),
    provider_has_appointed_authorised_representative(S).
conformity_assessment_carried_out_by_provider(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    conformity_assessment_procedure(CA),
    carried_out_by(CA, P).
technical_documentation_drawn_up_by_provider(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    up_to_date(TD),
    technical_documentation(TD, S).
system_bears_ce_marking_and_accompanied(S) :-
    high_risk_ai_system(S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use(IU),
    accompanies(IU, S).
provider_has_appointed_authorised_representative(S) :-
    high_risk_ai_system(S),
    provider(P),
    provider(P, S),
    authorised_representative(AR),
    appointed_by(AR, P).
must_not_place_on_market_until_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_conformity(Importer, S).
sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).
sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    falsified(S).
sufficient_reason_to_consider_non_conformity(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    accompanied_by_falsified_documentation(S).
must_inform_provider_representative_and_market_surveillance_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    presents_risk(S),
    provider(P),
    provider(P, S),
    authorised_representative(AR),
    appointed_by(AR, P),
    market_surveillance_authority(MSA),
    must_inform_risk(Importer, risk(S, P, AR, MSA)).
must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, S),
    indicated_on(CA, S).
must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, packaging(S)),
    indicated_on(CA, packaging(S)).
must_indicate_name_trade_name_or_trade_mark_and_address(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    name_trade_name_or_trade_mark(Importer, NTN),
    contact_address(Importer, CA),
    indicated_on(NTN, accompanying_documentation(S)),
    indicated_on(CA, accompanying_documentation(S)).
must_ensure_storage_transport_conditions_do_not_jeopardise_compliance(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    under_responsibility_of(S, Importer),
    storage_or_transport_conditions(C),
    \+ jeopardise_compliance(C, S).
must_keep_copy_of_certificate_instructions_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market(S),
    period(years(10), after(S)),
    certificate(C),
    issued_by_notified_body(C),
    instructions_for_use(IU),
    eu_declaration_of_conformity_accompanies(S),
    keep_at_disposal(Importer, copy(C, IU, declaration(S))).
must_keep_copy_of_certificate_instructions_declaration(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    putting_into_service(S),
    period(years(10), after(S)),
    certificate(C),
    issued_by_notified_body(C),
    instructions_for_use(IU),
    eu_declaration_of_conformity_accompanies(S),
    keep_at_disposal(Importer, copy(C, IU, declaration(S))).
must_provide_information_and_documentation_upon_reasoned_request(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    from_competent_authority(Request, Authority),
    reasoned_request(Request),
    must_provide(Importer, information_and_documentation(S), Authority),
    easily_understood_language(Language),
    language(Language, Authority).
must_ensure_technical_documentation_available_to_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    technical_documentation(TD, S),
    can_be_made_available(TD, Authority),
    relevant_competent_authority(Authority).
must_cooperate_with_competent_authorities(Importer, S) :-
    importer(Importer),
    high_risk_ai_system(S),
    placed_on_market_by(S, Importer),
    relevant_competent_authority(Authority),
    action_taken_by(Authority, S),
    must_cooperate_with_authorities(Importer, Authority, action(S)).
provenance(must_verify_conformity_before_placing/2, 'celex:32024R1689/oj#art_23').
provenance(conformity_assessment_carried_out_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(technical_documentation_drawn_up_by_provider/1, 'celex:32024R1689/oj#art_23').
provenance(system_bears_ce_marking_and_accompanied/1, 'celex:32024R1689/oj#art_23').
provenance(provider_has_appointed_authorised_representative/1, 'celex:32024R1689/oj#art_23').
provenance(sufficient_reason_to_consider_non_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_not_place_on_market_until_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform_provider_representative_and_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_name_trade_name_or_trade_mark_and_address/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_transport_conditions_do_not_jeopardise_compliance/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_copy_of_certificate_instructions_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_information_and_documentation_upon_reasoned_request/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_technical_documentation_available_to_authorities/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_23').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_24 ====
declared(must_verify_before_making_available/2, 'distributor verifies CE marking, EU declaration of conformity, instructions for use, and provider/importer compliance before making high-risk AI system available on market', 'celex:32024R1689/oj#art_24').
declared(must_not_make_available_nonconforming/2, 'distributor shall not make high-risk AI system available on market if it considers system not in conformity with requirements', 'celex:32024R1689/oj#art_24').
declared(must_inform_provider_or_importer_of_risk/2, 'distributor informs provider or importer when high-risk AI system presents a risk', 'celex:32024R1689/oj#art_24').
declared(must_ensure_storage_transport_conditions/2, 'distributor ensures storage or transport conditions do not jeopardise compliance of high-risk AI system', 'celex:32024R1689/oj#art_24').
declared(must_take_corrective_actions_nonconforming/2, 'distributor takes corrective actions, withdraws, or recalls nonconforming high-risk AI system, or ensures provider, importer or operator takes those actions', 'celex:32024R1689/oj#art_24').
declared(must_immediately_inform_of_risk_noncompliance/2, 'distributor immediately informs provider, importer and competent authorities when high-risk AI system presents risk, giving details of non-compliance and corrective actions', 'celex:32024R1689/oj#art_24').
declared(must_provide_information_and_documentation/2, 'distributor provides all information and documentation regarding actions to competent authority upon reasoned request', 'celex:32024R1689/oj#art_24').
declared(must_cooperate_with_competent_authorities/2, 'distributor cooperates with relevant competent authorities in any action relating to high-risk AI system', 'celex:32024R1689/oj#art_24').
must_verify_before_making_available(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    before_making_available_on_market(D, S),
    ce_marking(S),
    eu_declaration_of_conformity_accompanies(S),
    instructions_for_use(S),
    provider_complied_obligations(S),
    importer_complied_obligations(S).
must_not_make_available_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    considers_nonconforming(D, S),
    \+ brought_into_conformity(S).
must_inform_provider_or_importer_of_risk(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    presents_risk(S),
    considers_nonconforming(D, S).
must_ensure_storage_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    under_responsibility_of(D, S),
    storage_or_transport_conditions(D, S),
    \+ jeopardise_compliance(S).
must_take_corrective_actions_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    considers_nonconforming(D, S).
must_immediately_inform_of_risk_noncompliance(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    presents_risk(S),
    considers_nonconforming(D, S).
must_provide_information_and_documentation(D, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    from_competent_authority(reasoned_request, A),
    must_provide(D, information_and_documentation(S, A)).
must_cooperate_with_competent_authorities(D, A) :-
    distributor(D),
    high_risk_ai_system(S),
    made_available_on_market(D, S),
    relevant_competent_authority(A),
    action_relating_to(S, A).
before_making_available_on_market(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    \+ made_available_on_market(D, S).
considers_nonconforming(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    based_on_information_in_possession(D, S),
    not_in_conformity_with_requirements(S).
brought_into_conformity(S) :-
    high_risk_ai_system(S),
    in_conformity_with_requirements(S).
under_responsibility_of(D, S) :-
    distributor(D),
    high_risk_ai_system(S).
storage_or_transport_conditions(D, S) :-
    distributor(D),
    high_risk_ai_system(S).
jeopardise_compliance(S) :-
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).
made_available_on_market(D, S) :-
    distributor(D),
    high_risk_ai_system(S),
    making_available_on_market(S).
based_on_information_in_possession(D, _S) :-
    distributor(D).
not_in_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    \+ in_conformity_with_requirements(S).
in_conformity_with_requirements(S) :-
    high_risk_ai_system(S),
    meets_requirements(S).
provider_complied_obligations(S) :-
    high_risk_ai_system(S),
    provider(P),
    placing_on_market(P, S),
    must_ensure_compliance(P, S).
importer_complied_obligations(S) :-
    high_risk_ai_system(S),
    importer(I),
    placing_on_market(I, S),
    must_ensure_compliance(I, S).
relevant_competent_authority(A) :-
    national_competent_authority(A).
action_relating_to(S, A) :-
    high_risk_ai_system(S),
    national_competent_authority(A),
    action_taken_by(A, S).
meets_requirements(S) :-
    high_risk_ai_system(S).
placing_on_market(P, S) :-
    provider(P),
    high_risk_ai_system(S).
placing_on_market(I, S) :-
    importer(I),
    high_risk_ai_system(S).
action_taken_by(A, S) :-
    national_competent_authority(A),
    high_risk_ai_system(S).
provenance(must_verify_before_making_available/2, 'celex:32024R1689/oj#art_24').
provenance(must_not_make_available_nonconforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure_storage_transport_conditions/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_corrective_actions_nonconforming/2, 'celex:32024R1689/oj#art_24').
provenance(must_immediately_inform_of_risk_noncompliance/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide_information_and_documentation/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate_with_competent_authorities/2, 'celex:32024R1689/oj#art_24').
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
declared(considered_provider/1, 'distributor, importer, deployer or other third-party considered to be a provider of a high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(puts_name_or_trademark_on/2, 'party puts their name or trademark on a high-risk AI system already placed on the market or put into service', 'celex:32024R1689/oj#art_25').
declared(makes_substantial_modification/2, 'party makes a substantial modification to a high-risk AI system already placed on the market or put into service such that it remains high-risk', 'celex:32024R1689/oj#art_25').
declared(modifies_intended_purpose/2, 'party modifies the intended purpose of an AI system not classified as high-risk such that it becomes high-risk', 'celex:32024R1689/oj#art_25').
declared(initial_provider/1, 'provider that initially placed the AI system on the market or put it into service', 'celex:32024R1689/oj#art_25').
declared(no_longer_considered_provider/1, 'initial provider no longer considered to be a provider of that specific AI system', 'celex:32024R1689/oj#art_25').
declared(product_manufacturer_considered_provider/1, 'product manufacturer considered to be the provider of the high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(high_risk_ai_system_placed_with_product/2, 'high-risk AI system placed on the market together with the product under the name or trademark of the product manufacturer', 'celex:32024R1689/oj#art_25').
declared(high_risk_ai_system_put_into_service_under_product_manufacturer/2, 'high-risk AI system put into service under the name or trademark of the product manufacturer after the product has been placed on the market', 'celex:32024R1689/oj#art_25').
declared(written_agreement_specifies/3, 'provider and third party by written agreement specify necessary information, capabilities, technical access and other assistance', 'celex:32024R1689/oj#art_25').
declared(third_party_supplies/2, 'third party supplies an AI system, tools, services, components, or processes used or integrated in a high-risk AI system', 'celex:32024R1689/oj#art_25').
declared(free_and_open_source_licence/1, 'tools, services, processes, or components made accessible under a free and open-source licence', 'celex:32024R1689/oj#art_25').
declared(specified_not_to_be_changed_into_high_risk/1, 'initial provider has clearly specified that its AI system is not to be changed into a high-risk AI system', 'celex:32024R1689/oj#art_25').
considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    puts_name_or_trademark_on(P, S).
considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    distributor(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    importer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    deployer(P),
    high_risk_ai_system(S),
    putting_into_service(S),
    makes_substantial_modification(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    distributor(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    distributor(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    importer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    importer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    deployer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    deployer(P),
    ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    general_purpose_ai_system(S),
    \+ high_risk_ai_system(S),
    placed_on_market(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
considered_provider(P) :-
    general_purpose_ai_system(S),
    \+ high_risk_ai_system(S),
    putting_into_service(S),
    modifies_intended_purpose(P, S),
    high_risk_ai_system(S).
must_comply(considered_provider(P), obligations_of_provider_art_16).
no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    puts_name_or_trademark_on(NewP, S),
    P \= NewP.
no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    makes_substantial_modification(NewP, S),
    P \= NewP.
no_longer_considered_provider(P) :-
    initial_provider(P),
    ai_system(S),
    considered_provider(NewP),
    modifies_intended_purpose(NewP, S),
    P \= NewP.
must_cooperate_with_authorities(initial_provider(P), new_provider(NewP)) :-
    initial_provider(P),
    considered_provider(NewP),
    no_longer_considered_provider(P),
    P \= NewP.
must_provide(initial_provider(P), necessary_information_and_technical_access(NewP)) :-
    initial_provider(P),
    considered_provider(NewP),
    no_longer_considered_provider(P),
    P \= NewP,
    \+ specified_not_to_be_changed_into_high_risk(P).
product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_placed_with_product(S, M).
product_manufacturer_considered_provider(M) :-
    product_manufacturer(M),
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(Product),
    high_risk_ai_system_put_into_service_under_product_manufacturer(S, M).
must_comply(product_manufacturer_considered_provider(M), obligations_of_provider_art_16).
written_agreement_specifies(provider(P), third_party(T), information_capabilities_access_assistance) :-
    provider(P),
    high_risk_ai_system(S),
    third_party_supplies(T, S),
    \+ free_and_open_source_licence(T).
must_provide(ai_office, voluntary_model_terms_for_contracts).
voluntary_model_terms(P) :-
    ai_office(A),
    may_provide_guidance(A).
provenance(considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(puts_name_or_trademark_on/2, 'celex:32024R1689/oj#art_25').
provenance(makes_substantial_modification/2, 'celex:32024R1689/oj#art_25').
provenance(modifies_intended_purpose/2, 'celex:32024R1689/oj#art_25').
provenance(initial_provider/1, 'celex:32024R1689/oj#art_25').
provenance(no_longer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(product_manufacturer_considered_provider/1, 'celex:32024R1689/oj#art_25').
provenance(high_risk_ai_system_placed_with_product/2, 'celex:32024R1689/oj#art_25').
provenance(high_risk_ai_system_put_into_service_under_product_manufacturer/2, 'celex:32024R1689/oj#art_25').
provenance(written_agreement_specifies/3, 'celex:32024R1689/oj#art_25').
provenance(third_party_supplies/2, 'celex:32024R1689/oj#art_25').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_25').
provenance(specified_not_to_be_changed_into_high_risk/1, 'celex:32024R1689/oj#art_25').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_16').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_6').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_2').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_4').
references('celex:32024R1689/oj#art_25', 'celex:32024R1689/oj#art_25/par_3').

% ==== celex:32024R1689/oj#art_27 ====
declared(fundamental_rights_impact_assessment/1, 'assessment of the impact on fundamental rights that the use of a high-risk AI system may produce', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment_element/1, 'element of the fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(deployer_processes_description/1, 'description of the deployer processes in which the high-risk AI system will be used in line with its intended purpose', 'celex:32024R1689/oj#art_27').
declared(use_period_and_frequency_description/1, 'description of the period of time within which and the frequency with which each high-risk AI system is intended to be used', 'celex:32024R1689/oj#art_27').
declared(affected_persons_categories/1, 'categories of natural persons and groups likely to be affected by its use in the specific context', 'celex:32024R1689/oj#art_27').
declared(specific_risks_of_harm/1, 'specific risks of harm likely to have an impact on the categories of natural persons or groups identified', 'celex:32024R1689/oj#art_27').
declared(human_oversight_measures_description/1, 'description of the implementation of human oversight measures according to the instructions for use', 'celex:32024R1689/oj#art_27').
declared(risk_materialisation_measures/1, 'measures to be taken in the case of the materialisation of those risks including arrangements for internal governance and complaint mechanisms', 'celex:32024R1689/oj#art_27').
declared(must_perform_fundamental_rights_impact_assessment/2, 'deployer must perform fundamental rights impact assessment for system', 'celex:32024R1689/oj#art_27').
declared(must_update_fundamental_rights_impact_assessment/2, 'deployer must update fundamental rights impact assessment when elements have changed or are no longer up to date', 'celex:32024R1689/oj#art_27').
declared(must_notify_market_surveillance_authority_of_assessment/2, 'deployer must notify market surveillance authority of results of fundamental rights impact assessment', 'celex:32024R1689/oj#art_27').
declared(exempt_from_notification/2, 'deployer exempt from obligation to notify market surveillance authority', 'celex:32024R1689/oj#art_27').
declared(fundamental_rights_impact_assessment_complements_dpia/1, 'fundamental rights impact assessment complements data protection impact assessment', 'celex:32024R1689/oj#art_27').
declared(ai_office_must_develop_template/1, 'AI Office must develop template for questionnaire to facilitate deployers', 'celex:32024R1689/oj#art_27').
declared(deployer_obligation_applies_to_first_use/1, 'obligation applies to the first use of the high-risk AI system', 'celex:32024R1689/oj#art_27').
declared(may_rely_on_previous_assessment/2, 'deployer may rely on previously conducted fundamental rights impact assessments or existing impact assessments carried out by provider in similar cases', 'celex:32024R1689/oj#art_27').
fundamental_rights_impact_assessment_element(deployer_processes_description).
fundamental_rights_impact_assessment_element(use_period_and_frequency_description).
fundamental_rights_impact_assessment_element(affected_persons_categories).
fundamental_rights_impact_assessment_element(specific_risks_of_harm).
fundamental_rights_impact_assessment_element(human_oversight_measures_description).
fundamental_rights_impact_assessment_element(risk_materialisation_measures).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    body_governed_by_public_law_or_private_entity_providing_public_services(D).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    high_risk_ai_system_referred_to_in_annex_3_point_5_b(S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    high_risk_ai_system_referred_to_in_article_6_par_2(S),
    \+ high_risk_ai_system_intended_for_area_in_annex_3_point_2(S),
    high_risk_ai_system_referred_to_in_annex_3_point_5_c(S).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    before_putting_into_service(S),
    must_perform_fundamental_rights_impact_assessment_on_first_use(D, S).
must_perform_fundamental_rights_impact_assessment_on_first_use(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    deployer_obligation_applies_to_first_use(S).
fundamental_rights_impact_assessment(FRIA) :-
    deployer_processes_description(FRIA).
fundamental_rights_impact_assessment(FRIA) :-
    use_period_and_frequency_description(FRIA).
fundamental_rights_impact_assessment(FRIA) :-
    affected_persons_categories(FRIA).
fundamental_rights_impact_assessment(FRIA) :-
    specific_risks_of_harm(FRIA).
fundamental_rights_impact_assessment(FRIA) :-
    human_oversight_measures_description(FRIA).
fundamental_rights_impact_assessment(FRIA) :-
    risk_materialisation_measures(FRIA).
must_perform_fundamental_rights_impact_assessment(D, S) :-
    must_perform_fundamental_rights_impact_assessment(D, S),
    fundamental_rights_impact_assessment(FRIA),
    includes_element(FRIA, deployer_processes_description),
    includes_element(FRIA, use_period_and_frequency_description),
    includes_element(FRIA, affected_persons_categories),
    includes_element(FRIA, specific_risks_of_harm),
    includes_element(FRIA, human_oversight_measures_description),
    includes_element(FRIA, risk_materialisation_measures).
specific_risks_of_harm(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    takes_into_account(FRIA, information_given_by_provider_pursuant_to_article_13).
human_oversight_measures_description(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    according_to_instructions_for_use(FRIA).
may_rely_on_previous_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    similar_cases(D, S),
    previously_conducted_fundamental_rights_impact_assessment(FRIA),
    or_existing_impact_assessment_carried_out_by_provider(FRIA).
must_update_fundamental_rights_impact_assessment(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    during_use_of_high_risk_ai_system(D, S),
    element_changed_or_no_longer_up_to_date(D, S),
    must_take_necessary_steps(D, update_information).
must_notify_market_surveillance_authority_of_assessment(D, MSA) :-
    deployer(D),
    market_surveillance_authority(MSA),
    fundamental_rights_impact_assessment_performed(D),
    submits_filled_out_template(D, MSA),
    template_referred_to_in_article_27_par_5(template).
exempt_from_notification(D, notify_market_surveillance_authority) :-
    deployer(D),
    case_referred_to_in_article_46_par_1(D).
fundamental_rights_impact_assessment_complements_dpia(FRIA) :-
    fundamental_rights_impact_assessment(FRIA),
    data_protection_impact_assessment_conducted_pursuant_to_gdpr_article_35(DPIA),
    or_data_protection_impact_assessment_conducted_pursuant_to_led_article_27(DPIA),
    obligations_already_met_through_dpia(DPIA),
    complements(FRIA, DPIA).
ai_office_must_develop_template(ai_office) :-
    ai_office(AIO),
    develops_template_for_questionnaire(AIO),
    includes_automated_tool(AIO),
    facilitates_deployers_in_complying_with_obligations_under_article_27(AIO).
deployer_obligation_applies_to_first_use(S) :-
    high_risk_ai_system(S),
    first_use(S).
provenance(fundamental_rights_impact_assessment/1, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_element/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_processes_description/1, 'celex:32024R1689/oj#art_27').
provenance(use_period_and_frequency_description/1, 'celex:32024R1689/oj#art_27').
provenance(affected_persons_categories/1, 'celex:32024R1689/oj#art_27').
provenance(specific_risks_of_harm/1, 'celex:32024R1689/oj#art_27').
provenance(human_oversight_measures_description/1, 'celex:32024R1689/oj#art_27').
provenance(risk_materialisation_measures/1, 'celex:32024R1689/oj#art_27').
provenance(must_perform_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_update_fundamental_rights_impact_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(must_notify_market_surveillance_authority_of_assessment/2, 'celex:32024R1689/oj#art_27').
provenance(exempt_from_notification/2, 'celex:32024R1689/oj#art_27').
provenance(fundamental_rights_impact_assessment_complements_dpia/1, 'celex:32024R1689/oj#art_27').
provenance(ai_office_must_develop_template/1, 'celex:32024R1689/oj#art_27').
provenance(deployer_obligation_applies_to_first_use/1, 'celex:32024R1689/oj#art_27').
provenance(may_rely_on_previous_assessment/2, 'celex:32024R1689/oj#art_27').
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
declared(must_designate_notifying_authority/1, 'Member State must designate or establish at least one notifying authority', 'celex:32024R1689/oj#art_28').
declared(notifying_authority_responsible_for/2, 'notifying authority responsible for which procedures', 'celex:32024R1689/oj#art_28').
declared(procedures_developed_in_cooperation/1, 'procedures developed in cooperation between notifying authorities of all Member States', 'celex:32024R1689/oj#art_28').
declared(assessment_and_monitoring_by_national_accreditation_body/1, 'Member State may decide assessment and monitoring is carried out by national accreditation body', 'celex:32024R1689/oj#art_28').
declared(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'notifying authority established so no conflict of interest arises with conformity assessment bodies', 'celex:32024R1689/oj#art_28').
declared(objectivity_and_impartiality_safeguarded/1, 'objectivity and impartiality of notifying authority activities safeguarded', 'celex:32024R1689/oj#art_28').
declared(notification_decisions_by_different_persons/1, 'decisions on notification taken by persons different from those who carried out assessment', 'celex:32024R1689/oj#art_28').
declared(adequate_number_of_competent_personnel/1, 'notifying authority has adequate number of competent personnel', 'celex:32024R1689/oj#art_28').
declared(competent_personnel_expertise/2, 'competent personnel has necessary expertise in which fields', 'celex:32024R1689/oj#art_28').
must_designate_notifying_authority(MS) :-
    member_state(MS).
notifying_authority_responsible_for(NA, assessment_designation_notification) :-
    notifying_authority(NA).
notifying_authority_responsible_for(NA, monitoring) :-
    notifying_authority(NA).
procedures_developed_in_cooperation(NA) :-
    notifying_authority(NA).
assessment_and_monitoring_by_national_accreditation_body(MS) :-
    member_state(MS).
no_conflict_of_interest_with_conformity_assessment_bodies(NA) :-
    notifying_authority(NA).
objectivity_and_impartiality_safeguarded(NA) :-
    notifying_authority(NA).
notification_decisions_by_different_persons(NA) :-
    notifying_authority(NA).
must_not_provide_consultancy_services(NA) :-
    notifying_authority(NA).
must_treat_information_confidentially(NA, information_obtained) :-
    notifying_authority(NA).
adequate_number_of_competent_personnel(NA) :-
    notifying_authority(NA).
competent_personnel_expertise(P, information_technologies) :-
    competent_personnel(P).
competent_personnel_expertise(P, ai) :-
    competent_personnel(P).
competent_personnel_expertise(P, law) :-
    competent_personnel(P).
competent_personnel_expertise(P, supervision_of_fundamental_rights) :-
    competent_personnel(P).
provenance(must_designate_notifying_authority/1, 'celex:32024R1689/oj#art_28').
provenance(notifying_authority_responsible_for/2, 'celex:32024R1689/oj#art_28').
provenance(procedures_developed_in_cooperation/1, 'celex:32024R1689/oj#art_28').
provenance(assessment_and_monitoring_by_national_accreditation_body/1, 'celex:32024R1689/oj#art_28').
provenance(no_conflict_of_interest_with_conformity_assessment_bodies/1, 'celex:32024R1689/oj#art_28').
provenance(objectivity_and_impartiality_safeguarded/1, 'celex:32024R1689/oj#art_28').
provenance(notification_decisions_by_different_persons/1, 'celex:32024R1689/oj#art_28').
provenance(must_not_provide_consultancy_services/1, 'celex:32024R1689/oj#art_28').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_28').
provenance(adequate_number_of_competent_personnel/1, 'celex:32024R1689/oj#art_28').
provenance(competent_personnel_expertise/2, 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_28/par_1').
references('celex:32024R1689/oj#art_28', 'celex:32008R0765/oj').
references('celex:32024R1689/oj#art_28', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_29 ====
declared(must_submit_application_for_notification/2, 'conformity assessment body must submit application for notification to notifying authority of Member State where established', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_description/1, 'application for notification accompanied by description of conformity assessment activities, modules and types of AI systems', 'celex:32024R1689/oj#art_29').
declared(application_accompanied_by_accreditation_certificate/1, 'application for notification accompanied by accreditation certificate where one exists', 'celex:32024R1689/oj#art_29').
declared(valid_document_related_to_existing_designation/1, 'valid document related to existing designations under other Union harmonisation legislation added to application', 'celex:32024R1689/oj#art_29').
declared(must_provide_documentary_evidence/2, 'conformity assessment body must provide notifying authority with documentary evidence when no accreditation certificate', 'celex:32024R1689/oj#art_29').
declared(may_use_documents_to_support_designation/1, 'documents and certificates linked to designations under other Union harmonisation legislation may be used to support designation procedure', 'celex:32024R1689/oj#art_29').
declared(must_update_documentation/2, 'notified body must update documentation whenever relevant changes occur', 'celex:32024R1689/oj#art_29').
must_submit_application_for_notification(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    member_state(M),
    established_in(B, M),
    notifying_authority_of(A, M).
application_accompanied_by_description(A) :-
    application_for_notification(A),
    description_of_conformity_assessment_activities(A),
    conformity_assessment_module(A),
    types_of_ai_systems(A).
application_accompanied_by_accreditation_certificate(A) :-
    application_for_notification(A),
    accreditation_certificate(C),
    issued_by_national_accreditation_body(C),
    attests_compliance_with_requirements(C, art_31_requirements).
valid_document_related_to_existing_designation(A) :-
    application_for_notification(A),
    valid_document(D),
    related_to_existing_designation(D),
    other_union_harmonisation_legislation(L),
    designated_under(B, L),
    conformity_assessment_body(B),
    application_for_notification_of(B, A).
must_provide_documentary_evidence(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    \+ accreditation_certificate(C),
    issued_by_national_accreditation_body(C),
    conformity_assessment_body(B),
    application_for_notification_of(B, A),
    documentary_evidence(E),
    necessary_for_verification(E),
    necessary_for_recognition(E),
    necessary_for_regular_monitoring(E),
    compliance_with_requirements(E, art_31_requirements).
may_use_documents_to_support_designation(B) :-
    notified_body(B),
    designated_under(B, L),
    other_union_harmonisation_legislation(L),
    documents_and_certificates(D),
    linked_to_designations(D, B),
    may_be_used_to_support(D, designation_procedure(B)).
must_update_documentation(B, A) :-
    notified_body(B),
    designated_under(B, L),
    other_union_harmonisation_legislation(L),
    authority_responsible_for_notified_bodies(A),
    documentation(D),
    referred_to_in(D, art_29_par_2),
    referred_to_in(D, art_29_par_3),
    relevant_changes_occur(C),
    update_documentation(B, D, C),
    enable_monitoring_and_verification(A, continuous_compliance(B, art_31_requirements)).
provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(valid_document_related_to_existing_designation/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_documents_to_support_designation/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_30 ====
declared(notification_includes_details/1, 'notification includes full details of conformity assessment activities, modules, types of AI systems, and attestation of competence', 'celex:32024R1689/oj#art_30').
declared(notification_based_on_accreditation_certificate/1, 'notification is based on an accreditation certificate', 'celex:32024R1689/oj#art_30').
declared(notification_includes_documentary_evidence/1, 'notification includes documentary evidence attesting to competence and monitoring arrangements', 'celex:32024R1689/oj#art_30').
declared(may_perform_notified_body_activities/1, 'conformity assessment body may perform activities of a notified body', 'celex:32024R1689/oj#art_30').
declared(commission_consultations_entered/1, 'Commission enters into consultations with Member States and conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(commission_decides_authorisation_justified/1, 'Commission decides whether authorisation is justified', 'celex:32024R1689/oj#art_30').
must_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body).
must_notify_using_electronic_tool(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body).
must_inform_commission_and_member_states(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    meets_requirements_art_31(Body),
    member_state(_MS).
notification_includes_details(Notification) :-
    notification(Notification).
notification_based_on_accreditation_certificate(Notification) :-
    notification(Notification).
notification_includes_documentary_evidence(Notification) :-
    notification(Notification).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification(Notification),
    notification_of(Notification, Body),
    notification_includes_details(Notification),
    no_objection_within(weeks(2), Notification).
may_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    notification(Notification),
    notification_of(Notification, Body),
    notification_includes_details(Notification),
    notification_includes_documentary_evidence(Notification),
    no_objection_within(months(2), Notification).
must_enter_consultations(Commission, Body) :-
    ai_office(Commission),
    conformity_assessment_body(Body),
    objection_raised(Body).
must_decide_authorisation(Commission, Body) :-
    ai_office(Commission),
    conformity_assessment_body(Body),
    objection_raised(Body).
must_address_decision(Commission, MemberState, Body) :-
    ai_office(Commission),
    member_state(MemberState),
    conformity_assessment_body(Body),
    objection_raised(Body).
declared(notification/1, 'a notification of a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(notification_of/2, 'notification is of a conformity assessment body', 'celex:32024R1689/oj#art_30').
declared(objection_raised/1, 'objection raised by Commission or Member State to a notification', 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_using_electronic_tool/2, 'celex:32024R1689/oj#art_30').
provenance(must_inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_details/1, 'celex:32024R1689/oj#art_30').
provenance(notification_based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(notification_includes_documentary_evidence/1, 'celex:32024R1689/oj#art_30').
provenance(may_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/3, 'celex:32024R1689/oj#art_30').
provenance(notification/1, 'celex:32024R1689/oj#art_30').
provenance(notification_of/2, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').

% ==== celex:32024R1689/oj#art_31 ====
declared(established_under_national_law/1, 'notified body established under national law of a Member State', 'celex:32024R1689/oj#art_31').
declared(has_legal_personality/1, 'notified body has legal personality', 'celex:32024R1689/oj#art_31').
declared(satisfies_organisational_requirements/1, 'notified body satisfies organisational, quality management, resources and process requirements', 'celex:32024R1689/oj#art_31').
declared(suitable_cybersecurity_requirements/1, 'notified body satisfies suitable cybersecurity requirements', 'celex:32024R1689/oj#art_31').
declared(structure_ensures_confidence/1, 'organisational structure, allocation of responsibilities, reporting lines and operation ensure confidence in performance and results', 'celex:32024R1689/oj#art_31').
declared(independent_of_provider/2, 'notified body independent of provider of high-risk AI system', 'celex:32024R1689/oj#art_31').
declared(independent_of_economic_interest_operator/2, 'notified body independent of any other operator having economic interest in assessed high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(independent_of_competitors/2, 'notified body independent of competitors of the provider', 'celex:32024R1689/oj#art_31').
declared(use_of_assessed_systems_permitted/2, 'use of assessed high-risk AI systems permitted for operations of conformity assessment body or personal purposes', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_design/2, 'conformity assessment body, top-level management or personnel not directly involved in design of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_development/2, 'conformity assessment body, top-level management or personnel not directly involved in development of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_marketing/2, 'conformity assessment body, top-level management or personnel not directly involved in marketing of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(not_directly_involved_in_use/2, 'conformity assessment body, top-level management or personnel not directly involved in use of high-risk AI systems', 'celex:32024R1689/oj#art_31').
declared(does_not_represent_parties/2, 'conformity assessment body, top-level management or personnel does not represent parties engaged in design, development, marketing or use', 'celex:32024R1689/oj#art_31').
declared(no_conflicting_activity/2, 'conformity assessment body, top-level management or personnel does not engage in activity conflicting with independence of judgement or integrity', 'celex:32024R1689/oj#art_31').
declared(no_consultancy_services/1, 'conformity assessment body, top-level management or personnel does not engage in consultancy services', 'celex:32024R1689/oj#art_31').
declared(safeguards_independence_objectivity_impartiality/1, 'notified body organised and operated to safeguard independence, objectivity and impartiality', 'celex:32024R1689/oj#art_31').
declared(documented_impartiality_procedures/1, 'notified body documents and implements structure and procedures to safeguard impartiality', 'celex:32024R1689/oj#art_31').
declared(confidentiality_procedures/1, 'notified body has documented procedures ensuring confidentiality of information', 'celex:32024R1689/oj#art_31').
declared(professional_secrecy_observed/1, 'staff of notified body bound to observe professional secrecy', 'celex:32024R1689/oj#art_31').
declared(procedures_account_for_provider_size/2, 'notified body procedures take due account of size of provider, sector, structure and degree of complexity of AI system', 'celex:32024R1689/oj#art_31').
declared(liability_insurance_or_state_assumption/1, 'notified body has appropriate liability insurance or liability assumed by Member State', 'celex:32024R1689/oj#art_31').
declared(highest_professional_integrity/1, 'notified body capable of carrying out all tasks with highest degree of professional integrity and requisite competence', 'celex:32024R1689/oj#art_31').
declared(sufficient_internal_competences/1, 'notified body has sufficient internal competences to evaluate tasks conducted by external parties', 'celex:32024R1689/oj#art_31').
declared(permanent_availability_of_personnel/1, 'notified body has permanent availability of sufficient administrative, technical, legal and scientific personnel', 'celex:32024R1689/oj#art_31').
declared(personnel_experience_knowledge_data/1, 'personnel possess experience and knowledge relating to data and data computing', 'celex:32024R1689/oj#art_31').
declared(personnel_experience_knowledge_requirements/1, 'personnel possess experience and knowledge relating to requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_31').
declared(participates_in_coordination_activities/1, 'notified body participates in coordination activities referred to in Article 38', 'celex:32024R1689/oj#art_31').
declared(participates_in_standardisation/1, 'notified body takes part directly or is represented in European standardisation organisations', 'celex:32024R1689/oj#art_31').
declared(aware_of_relevant_standards/1, 'notified body is aware and up to date in respect of relevant standards', 'celex:32024R1689/oj#art_31').
must_be_established_under_national_law(B, M) :-
    notified_body(B),
    member_state(M),
    established_under_national_law(B).
must_have_legal_personality(B) :-
    notified_body(B),
    has_legal_personality(B).
must_satisfy_organisational_requirements(B) :-
    notified_body(B),
    satisfies_organisational_requirements(B).
must_satisfy_cybersecurity_requirements(B) :-
    notified_body(B),
    suitable_cybersecurity_requirements(B).
must_ensure_confidence_in_performance(B) :-
    notified_body(B),
    structure_ensures_confidence(B).
must_be_independent_of_provider(B, P) :-
    notified_body(B),
    provider(P),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    independent_of_provider(B, P).
must_be_independent_of_economic_interest_operator(B, O) :-
    notified_body(B),
    operator(O),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    independent_of_economic_interest_operator(B, O).
must_be_independent_of_competitors(B, P) :-
    notified_body(B),
    provider(P),
    independent_of_competitors(B, P).
permitted_use_of_assessed_systems(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    use_of_assessed_systems_permitted(B, S).
permitted_use_of_assessed_systems(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    conformity_assessment_activities(B, S),
    personal_purposes(B, S).
must_not_be_directly_involved_in_design(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_design(B, S).
must_not_be_directly_involved_in_development(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_development(B, S).
must_not_be_directly_involved_in_marketing(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_marketing(B, S).
must_not_be_directly_involved_in_use(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    not_directly_involved_in_use(B, S).
must_not_represent_parties(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    does_not_represent_parties(B, S).
must_not_engage_in_conflicting_activity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    no_conflicting_activity(B, S).
must_not_provide_consultancy_services(B) :-
    notified_body(B),
    no_consultancy_services(B).
must_safeguard_independence_objectivity_impartiality(B) :-
    notified_body(B),
    safeguards_independence_objectivity_impartiality(B).
must_document_and_implement_impartiality_procedures(B) :-
    notified_body(B),
    documented_impartiality_procedures(B).
must_maintain_confidentiality(B) :-
    notified_body(B),
    confidentiality_procedures(B).
must_observe_professional_secrecy(B) :-
    notified_body(B),
    professional_secrecy_observed(B).
must_take_account_of_provider_size(B, P) :-
    notified_body(B),
    provider(P),
    procedures_account_for_provider_size(B, P).
must_have_liability_insurance_or_state_assumption(B) :-
    notified_body(B),
    liability_insurance_or_state_assumption(B).
must_carry_out_tasks_with_professional_integrity(B) :-
    notified_body(B),
    highest_professional_integrity(B).
must_have_sufficient_internal_competences(B) :-
    notified_body(B),
    sufficient_internal_competences(B).
must_have_permanent_availability_of_personnel(B) :-
    notified_body(B),
    permanent_availability_of_personnel(B).
must_have_personnel_with_experience_knowledge_data(B) :-
    notified_body(B),
    personnel_experience_knowledge_data(B).
must_have_personnel_with_experience_knowledge_requirements(B) :-
    notified_body(B),
    personnel_experience_knowledge_requirements(B).
must_participate_in_coordination_activities(B) :-
    notified_body(B),
    participates_in_coordination_activities(B).
must_participate_in_standardisation_or_be_aware(B) :-
    notified_body(B),
    participates_in_standardisation(B).
must_participate_in_standardisation_or_be_aware(B) :-
    notified_body(B),
    aware_of_relevant_standards(B).
provenance(established_under_national_law/1, 'celex:32024R1689/oj#art_31').
provenance(has_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(satisfies_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(suitable_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(structure_ensures_confidence/1, 'celex:32024R1689/oj#art_31').
provenance(independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(independent_of_competitors/2, 'celex:32024R1689/oj#art_31').
provenance(use_of_assessed_systems_permitted/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(not_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(does_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(no_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(no_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(safeguards_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(documented_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(confidentiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(professional_secrecy_observed/1, 'celex:32024R1689/oj#art_31').
provenance(procedures_account_for_provider_size/2, 'celex:32024R1689/oj#art_31').
provenance(liability_insurance_or_state_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(highest_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(personnel_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(participates_in_standardisation/1, 'celex:32024R1689/oj#art_31').
provenance(aware_of_relevant_standards/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_established_under_national_law/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_legal_personality/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_organisational_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_satisfy_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_ensure_confidence_in_performance/1, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_provider/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_economic_interest_operator/2, 'celex:32024R1689/oj#art_31').
provenance(must_be_independent_of_competitors/2, 'celex:32024R1689/oj#art_31').
provenance(permitted_use_of_assessed_systems/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_design/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_development/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_marketing/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_be_directly_involved_in_use/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_represent_parties/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_engage_in_conflicting_activity/2, 'celex:32024R1689/oj#art_31').
provenance(must_not_provide_consultancy_services/1, 'celex:32024R1689/oj#art_31').
provenance(must_safeguard_independence_objectivity_impartiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_document_and_implement_impartiality_procedures/1, 'celex:32024R1689/oj#art_31').
provenance(must_maintain_confidentiality/1, 'celex:32024R1689/oj#art_31').
provenance(must_observe_professional_secrecy/1, 'celex:32024R1689/oj#art_31').
provenance(must_take_account_of_provider_size/2, 'celex:32024R1689/oj#art_31').
provenance(must_have_liability_insurance_or_state_assumption/1, 'celex:32024R1689/oj#art_31').
provenance(must_carry_out_tasks_with_professional_integrity/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_sufficient_internal_competences/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_permanent_availability_of_personnel/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_data/1, 'celex:32024R1689/oj#art_31').
provenance(must_have_personnel_with_experience_knowledge_requirements/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_coordination_activities/1, 'celex:32024R1689/oj#art_31').
provenance(must_participate_in_standardisation_or_be_aware/1, 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_31', 'celex:32024R1689/oj#art_38').

% ==== celex:32024R1689/oj#art_32 ====
declared(presumed_to_comply_with_requirements/1, 'conformity assessment body presumed to comply with requirements set out in Article 31', 'celex:32024R1689/oj#art_32').
declared(demonstrates_conformity_with_criteria/2, 'conformity assessment body demonstrates conformity with criteria laid down in harmonised standards', 'celex:32024R1689/oj#art_32').
presumed_to_comply_with_requirements(B) :-
    conformity_assessment_body(B),
    demonstrates_conformity_with_criteria(B, S),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    meets_requirements_art_31(R),
    harmonised_standard_covers(S, R).
demonstrates_conformity_with_criteria(B, S) :-
    conformity_assessment_body(B),
    harmonised_standard(S).
harmonised_standard_covers(S, R) :-
    harmonised_standard(S),
    meets_requirements_art_31(R).
provenance(presumed_to_comply_with_requirements/1, 'celex:32024R1689/oj#art_32').
provenance(demonstrates_conformity_with_criteria/2, 'celex:32024R1689/oj#art_32').
references('celex:32024R1689/oj#art_32', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_33 ====
declared(subcontracts_task/2, 'notified body subcontracts specific task connected with conformity assessment', 'celex:32024R1689/oj#art_33').
declared(has_recourse_to_subsidiary/2, 'notified body has recourse to a subsidiary', 'celex:32024R1689/oj#art_33').
declared(subcontractor_or_subsidiary/1, 'subcontractor or subsidiary used by notified body', 'celex:32024R1689/oj#art_33').
declared(subcontracted_or_carried_out_by_subsidiary/2, 'activity subcontracted or carried out by subsidiary', 'celex:32024R1689/oj#art_33').
declared(provider_agrees_to_subcontracting/2, 'provider agrees to subcontracting or use of subsidiary', 'celex:32024R1689/oj#art_33').
declared(list_of_subsidiaries_publicly_available/1, 'notified body makes list of subsidiaries publicly available', 'celex:32024R1689/oj#art_33').
declared(documents_concerning_subcontractor_assessment/1, 'documents concerning assessment of qualifications of subcontractor or subsidiary and work carried out', 'celex:32024R1689/oj#art_33').
declared(termination_date_of_subcontracting/2, 'termination date of subcontracting', 'celex:32024R1689/oj#art_33').
subcontractor_or_subsidiary(X) :-
    subcontracts_task(_, X).
subcontractor_or_subsidiary(X) :-
    has_recourse_to_subsidiary(_, X).
must_ensure_compliance(Body, subcontractor_or_subsidiary(X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X),
    meets_requirements_art_31(X).
must_inform_market_surveillance_authority(Body, subcontracting(Body, X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X).
must_take_necessary_steps(Body, full_responsibility_for_tasks(X)) :-
    notified_body(Body),
    subcontractor_or_subsidiary(X).
subcontracted_or_carried_out_by_subsidiary(Body, Activity) :-
    notified_body(Body),
    subcontracts_task(Body, Activity).
subcontracted_or_carried_out_by_subsidiary(Body, Activity) :-
    notified_body(Body),
    has_recourse_to_subsidiary(Body, Activity).
provider_agrees_to_subcontracting(Provider, Activity) :-
    subcontracted_or_carried_out_by_subsidiary(_, Activity),
    provider(Provider).
list_of_subsidiaries_publicly_available(Body) :-
    notified_body(Body),
    has_recourse_to_subsidiary(Body, _).
documents_concerning_subcontractor_assessment(Doc) :-
    subcontractor_or_subsidiary(X),
    assessment_of_qualifications(X, Doc).
documents_concerning_subcontractor_assessment(Doc) :-
    subcontractor_or_subsidiary(X),
    work_carried_out(X, Doc).
keep_at_disposal(Body, documents_concerning_subcontractor_assessment(Doc)) :-
    notified_body(Body),
    documents_concerning_subcontractor_assessment(Doc),
    termination_date_of_subcontracting(Body, Date),
    period(years(5), from(Date)).
provenance(subcontracts_task/2, 'celex:32024R1689/oj#art_33').
provenance(has_recourse_to_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(subcontractor_or_subsidiary/1, 'celex:32024R1689/oj#art_33').
provenance(subcontracted_or_carried_out_by_subsidiary/2, 'celex:32024R1689/oj#art_33').
provenance(provider_agrees_to_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(list_of_subsidiaries_publicly_available/1, 'celex:32024R1689/oj#art_33').
provenance(documents_concerning_subcontractor_assessment/1, 'celex:32024R1689/oj#art_33').
provenance(termination_date_of_subcontracting/2, 'celex:32024R1689/oj#art_33').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_33').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_33').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_33').
provenance(keep_at_disposal/2, 'celex:32024R1689/oj#art_33').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_33', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_34 ====
declared(must_verify_conformity/2, 'notified body verifies conformity of high-risk AI system', 'celex:32024R1689/oj#art_34').
declared(must_avoid_unnecessary_burdens/1, 'notified body avoids unnecessary burdens for providers', 'celex:32024R1689/oj#art_34').
declared(must_take_due_account_of_provider_characteristics/2, 'notified body takes due account of provider size, sector, structure and system complexity', 'celex:32024R1689/oj#art_34').
declared(must_respect_degree_of_rigour/1, 'notified body respects degree of rigour and level of protection required', 'celex:32024R1689/oj#art_34').
declared(must_make_available_documentation/2, 'notified body makes available and submits documentation upon request to notifying authority', 'celex:32024R1689/oj#art_34').
must_verify_conformity(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S).
must_avoid_unnecessary_burdens(Body) :-
    notified_body(Body).
must_take_due_account_of_provider_characteristics(Body, P) :-
    notified_body(Body),
    provider(P).
must_respect_degree_of_rigour(Body) :-
    notified_body(Body).
must_make_available_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).
provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/1, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account_of_provider_characteristics/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_degree_of_rigour/1, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').

% ==== celex:32024R1689/oj#art_35 ====
declared(must_assign_single_identification_number/2, 'Commission assigns a single identification number to a notified body', 'celex:32024R1689/oj#art_35').
declared(must_make_publicly_available_list_of_notified_bodies/1, 'Commission makes publicly available the list of notified bodies with identification numbers and notified activities', 'celex:32024R1689/oj#art_35').
declared(must_keep_list_up_to_date/1, 'Commission ensures the list of notified bodies is kept up to date', 'celex:32024R1689/oj#art_35').
must_assign_single_identification_number(commission, B) :-
    notified_body(B).
must_assign_single_identification_number(commission, B) :-
    notified_body(B),
    notified_under_multiple_union_acts(B).
notified_under_multiple_union_acts(B) :-
    notified_body(B),
    notified_under_union_act(B, _Act1),
    notified_under_union_act(B, _Act2),
    _Act1 \= _Act2.
notified_under_union_act(B, Act) :-
    notified_body(B),
    notified_under(B, Act).
must_make_publicly_available_list_of_notified_bodies(commission) :-
    list_of_notified_bodies(List),
    includes_identification_numbers(List),
    includes_notified_activities(List).
must_keep_list_up_to_date(commission) :-
    list_of_notified_bodies(List),
    up_to_date(List).
provenance(must_assign_single_identification_number/2, 'celex:32024R1689/oj#art_35').
provenance(must_make_publicly_available_list_of_notified_bodies/1, 'celex:32024R1689/oj#art_35').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#art_35', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_36 ====
declared(must_notify_changes/2, 'notifying authority must notify Commission and other Member States of relevant changes to notification of a notified body', 'celex:32024R1689/oj#art_36').
declared(extension_of_scope_notification/1, 'change to notification is an extension of its scope', 'celex:32024R1689/oj#art_36').
declared(other_change_to_notification/1, 'change to notification other than extension of its scope', 'celex:32024R1689/oj#art_36').
declared(procedures_for_extension_apply/1, 'procedures laid down in Articles 29 and 30 apply to the change', 'celex:32024R1689/oj#art_36').
declared(procedures_for_other_changes_apply/1, 'procedures laid down in paragraphs 3 to 9 apply to the change', 'celex:32024R1689/oj#art_36').
declared(planned_cessation/1, 'notified body decides to cease conformity assessment activities as a planned cessation', 'celex:32024R1689/oj#art_36').
declared(unplanned_cessation/1, 'notified body decides to cease conformity assessment activities not as a planned cessation', 'celex:32024R1689/oj#art_36').
declared(must_inform_cessation/2, 'notified body must inform notifying authority and providers concerned of cessation', 'celex:32024R1689/oj#art_36').
declared(certificate_valid_after_cessation/1, 'certificate remains valid for nine months after cessation of notified body activities', 'celex:32024R1689/oj#art_36').
declared(another_notified_body_assumes_responsibility/2, 'another notified body confirms in writing it will assume responsibilities for high-risk AI systems covered by certificates', 'celex:32024R1689/oj#art_36').
declared(full_assessment_completed/2, 'notified body completes full assessment of high-risk AI systems affected before issuing new certificates', 'celex:32024R1689/oj#art_36').
declared(must_withdraw_designation/2, 'notifying authority must withdraw designation where notified body has ceased its activity', 'celex:32024R1689/oj#art_36').
declared(sufficient_reason_to_consider/2, 'notifying authority has sufficient reason to consider notified body no longer meets requirements or is failing to fulfil obligations', 'celex:32024R1689/oj#art_36').
declared(must_investigate/2, 'notifying authority must without delay investigate the matter with utmost diligence', 'celex:32024R1689/oj#art_36').
declared(must_inform_objections/2, 'notifying authority must inform notified body about objections raised and give possibility to make views known', 'celex:32024R1689/oj#art_36').
declared(must_restrict_suspend_or_withdraw/2, 'notifying authority must restrict, suspend or withdraw designation as appropriate depending on seriousness of failure', 'celex:32024R1689/oj#art_36').
declared(must_immediately_inform_commission/2, 'notifying authority must immediately inform Commission and other Member States of restriction, suspension or withdrawal', 'celex:32024R1689/oj#art_36').
declared(designation_suspended_restricted_or_withdrawn/1, 'designation has been suspended, restricted, or fully or partially withdrawn', 'celex:32024R1689/oj#art_36').
declared(must_inform_providers_within_days/3, 'notified body must inform providers concerned within 10 days of suspension, restriction or withdrawal of designation', 'celex:32024R1689/oj#art_36').
declared(must_keep_files_and_make_available/2, 'notifying authority must take appropriate steps to ensure files are kept and made available to other notifying authorities and market surveillance authorities at their request', 'celex:32024R1689/oj#art_36').
declared(must_assess_impact_on_certificates/2, 'notifying authority must assess impact on certificates issued by notified body', 'celex:32024R1689/oj#art_36').
declared(must_submit_report_within_months/3, 'notifying authority must submit report on findings to Commission and other Member States within three months of notifying changes to designation', 'celex:32024R1689/oj#art_36').
declared(must_require_suspension_or_withdrawal_of_certificates/2, 'notifying authority must require notified body to suspend or withdraw unduly issued certificates within reasonable period', 'celex:32024R1689/oj#art_36').
declared(must_inform_about_certificate_suspension_or_withdrawal/2, 'notifying authority must inform Commission and Member States about certificates the suspension or withdrawal of which it has required', 'celex:32024R1689/oj#art_36').
declared(must_provide_information_to_national_authority/2, 'notifying authority must provide national competent authorities with all relevant information about certificates of which it has required suspension or withdrawal', 'celex:32024R1689/oj#art_36').
declared(certificate_unduly_issued/1, 'certificate was unduly issued', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid_suspended_restricted/1, 'certificate remains valid where designation has been suspended or restricted', 'celex:32024R1689/oj#art_36').
declared(no_risk_confirmed_within_month/2, 'notifying authority has confirmed within one month that there is no risk to health, safety or fundamental rights and outlined timeline for actions to remedy', 'celex:32024R1689/oj#art_36').
declared(no_new_certificates_issued/2, 'notifying authority has confirmed that no certificates relevant to suspension will be issued, amended or re-issued during suspension or restriction', 'celex:32024R1689/oj#art_36').
declared(notified_body_capable_of_supporting_certificates/1, 'notified body has capability of continuing to monitor and remain responsible for existing certificates', 'celex:32024R1689/oj#art_36').
declared(provider_confirms_alternative_notified_body/2, 'provider confirms in writing to national competent authorities that another qualified notified body is temporarily assuming functions', 'celex:32024R1689/oj#art_36').
declared(certificate_remains_valid_withdrawn/1, 'certificate remains valid for nine months where designation has been withdrawn', 'celex:32024R1689/oj#art_36').
declared(national_authority_confirms_no_risk/2, 'national competent authority has confirmed that there is no risk to health, safety or fundamental rights associated with high-risk AI systems concerned', 'celex:32024R1689/oj#art_36').
declared(another_notified_body_assumes_immediate_responsibility/2, 'another notified body has confirmed in writing it will assume immediate responsibility and completes assessment within 12 months', 'celex:32024R1689/oj#art_36').
declared(may_extend_provisional_validity/2, 'national competent authority may extend provisional validity of certificates for additional periods of three months not exceeding 12 months in total', 'celex:32024R1689/oj#art_36').
declared(must_immediately_inform_about_assumption/1, 'national competent authority or notified body assuming functions must immediately inform Commission, other Member States and other notified bodies', 'celex:32024R1689/oj#art_36').
must_notify_changes(Authority, Change) :-
    notifying_authority(Authority),
    relevant_change_to_notification(Change),
    notified_body(B),
    notification_of(B, Change).
procedures_for_extension_apply(Change) :-
    extension_of_scope_notification(Change).
procedures_for_other_changes_apply(Change) :-
    other_change_to_notification(Change).
extension_of_scope_notification(Change) :-
    change_to_notification(Change),
    extends_scope(Change).
other_change_to_notification(Change) :-
    change_to_notification(Change),
    \+ extension_of_scope_notification(Change).
must_inform_cessation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    decides_to_cease_activities(Body),
    planned_cessation(Body).
must_inform_cessation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    decides_to_cease_activities(Body),
    unplanned_cessation(Body).
certificate_valid_after_cessation(C) :-
    certificate(C),
    notified_body(B),
    certificate_issued_by(C, B),
    decides_to_cease_activities(B),
    another_notified_body_assumes_responsibility(B2, C),
    notified_body(B2),
    B2 \= B,
    full_assessment_completed(B2, C),
    within_period(months(9), after(cessation(B))).
must_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    has_ceased_activity(Body).
sufficient_reason_to_consider(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    \+ meets_requirements_art_31(Body).
sufficient_reason_to_consider(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    failing_to_fulfil_obligations(Body).
must_investigate(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider(Authority, Body).
must_inform_objections(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider(Authority, Body).
must_restrict_suspend_or_withdraw(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider(Authority, Body),
    concludes_failure(Authority, Body).
must_immediately_inform_commission(Authority, Action) :-
    notifying_authority(Authority),
    action(Action),
    action(restriction);
    action(suspension);
    action(withdrawal),
    must_restrict_suspend_or_withdraw(Authority, _Body).
must_inform_providers_within_days(Body, Providers, days(10)) :-
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body),
    providers_concerned(Body, Providers).
must_keep_files_and_make_available(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).
must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).
must_submit_report_within_months(Authority, Commission, months(3)) :-
    notifying_authority(Authority),
    member_state(Commission),
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body),
    notifying_authority(Authority),
    notified_changes_to_designation(Authority, Body).
must_require_suspension_or_withdrawal_of_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body),
    certificate_unduly_issued(C),
    certificate_issued_by(C, Body).
must_inform_about_certificate_suspension_or_withdrawal(Authority, Certificates) :-
    notifying_authority(Authority),
    designation_suspended_restricted_or_withdrawn(_Body),
    must_require_suspension_or_withdrawal_of_certificates(Authority, _Body),
    certificates_affected(Certificates).
must_provide_information_to_national_authority(Authority, NationalAuthority) :-
    notifying_authority(Authority),
    national_competent_authority(NationalAuthority),
    designation_suspended_restricted_or_withdrawn(Body),
    notified_body(Body),
    must_require_suspension_or_withdrawal_of_certificates(Authority, Body).
certificate_remains_valid_suspended_restricted(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended_restricted_or_withdrawn(Body),
    certificate_issued_by(C, Body),
    no_risk_confirmed_within_month(Authority, C),
    notifying_authority(Authority).
certificate_remains_valid_suspended_restricted(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended_restricted_or_withdrawn(Body),
    certificate_issued_by(C, Body),
    no_new_certificates_issued(Authority, C),
    notifying_authority(Authority),
    notified_body_capable_of_supporting_certificates(Body).
certificate_remains_valid_suspended_restricted(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended_restricted_or_withdrawn(Body),
    certificate_issued_by(C, Body),
    no_new_certificates_issued(Authority, C),
    notifying_authority(Authority),
    \+ notified_body_capable_of_supporting_certificates(Body),
    provider_confirms_alternative_notified_body(C, NationalAuthority),
    national_competent_authority(NationalAuthority),
    within_period(months(3), after(suspension_or_restriction(Body))).
certificate_remains_valid_withdrawn(C) :-
    certificate(C),
    \+ certificate_unduly_issued(C),
    designation_suspended_restricted_or_withdrawn(Body),
    withdrawal_of_designation(Body),
    certificate_issued_by(C, Body),
    national_authority_confirms_no_risk(NationalAuthority, C),
    national_competent_authority(NationalAuthority),
    another_notified_body_assumes_immediate_responsibility(Body2, C),
    notified_body(Body2),
    Body2 \= Body,
    completes_assessment_within(Body2, C, months(12)),
    within_period(months(9), after(withdrawal_of_designation(Body))).
may_extend_provisional_validity(NationalAuthority, C) :-
    national_competent_authority(NationalAuthority),
    certificate_remains_valid_withdrawn(C),
    extension_period(months(3)),
    total_extension_not_exceeding(months(12)).
must_immediately_inform_about_assumption(Authority) :-
    national_competent_authority(Authority),
    may_extend_provisional_validity(Authority, _C).
must_immediately_inform_about_assumption(Body) :-
    notified_body(Body),
    assumes_functions_of(_OtherBody),
    designation_suspended_restricted_or_withdrawn(_OtherBody).
provenance(must_notify_changes/2, 'celex:32024R1689/oj#art_36').
provenance(extension_of_scope_notification/1, 'celex:32024R1689/oj#art_36').
provenance(other_change_to_notification/1, 'celex:32024R1689/oj#art_36').
provenance(procedures_for_extension_apply/1, 'celex:32024R1689/oj#art_36').
provenance(procedures_for_other_changes_apply/1, 'celex:32024R1689/oj#art_36').
provenance(planned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(unplanned_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_cessation/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_valid_after_cessation/1, 'celex:32024R1689/oj#art_36').
provenance(another_notified_body_assumes_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(full_assessment_completed/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/2, 'celex:32024R1689/oj#art_36').
provenance(sufficient_reason_to_consider/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_objections/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform_commission/2, 'celex:32024R1689/oj#art_36').
provenance(designation_suspended_restricted_or_withdrawn/1, 'celex:32024R1689/oj#art_36').
provenance(must_inform_providers_within_days/3, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files_and_make_available/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report_within_months/3, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal_of_certificates/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_about_certificate_suspension_or_withdrawal/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information_to_national_authority/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_unduly_issued/1, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_suspended_restricted/1, 'celex:32024R1689/oj#art_36').
provenance(no_risk_confirmed_within_month/2, 'celex:32024R1689/oj#art_36').
provenance(no_new_certificates_issued/2, 'celex:32024R1689/oj#art_36').
provenance(notified_body_capable_of_supporting_certificates/1, 'celex:32024R1689/oj#art_36').
provenance(provider_confirms_alternative_notified_body/2, 'celex:32024R1689/oj#art_36').
provenance(certificate_remains_valid_withdrawn/1, 'celex:32024R1689/oj#art_36').
provenance(national_authority_confirms_no_risk/2, 'celex:32024R1689/oj#art_36').
provenance(another_notified_body_assumes_immediate_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform_about_assumption/1, 'celex:32024R1689/oj#art_36').
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
declared(must_investigate_competence/2, 'Commission investigates cases where reasons to doubt competence of notified body or continued fulfilment of requirements and responsibilities', 'celex:32024R1689/oj#art_37').
declared(must_provide_information_on_notification/2, 'notifying authority provides Commission with all relevant information relating to notification or maintenance of competence of notified body on request', 'celex:32024R1689/oj#art_37').
declared(must_treat_sensitive_information_confidentially/2, 'Commission treats sensitive information obtained in course of investigations confidentially', 'celex:32024R1689/oj#art_37').
declared(must_inform_notifying_member_state/2, 'Commission informs notifying Member State that notified body does not meet or no longer meets requirements for notification', 'celex:32024R1689/oj#art_37').
declared(must_take_corrective_measures_by_member_state/2, 'notifying Member State takes necessary corrective measures including suspension or withdrawal of notification if necessary', 'celex:32024R1689/oj#art_37').
declared(may_suspend_restrict_or_withdraw_designation/1, 'Commission may by implementing act suspend, restrict or withdraw designation where Member State fails to take necessary corrective measures', 'celex:32024R1689/oj#art_37').
must_investigate_competence(ai_office, B) :-
    notified_body(B),
    reasons_to_doubt_competence(B).
must_investigate_competence(ai_office, B) :-
    notified_body(B),
    reasons_to_doubt_continued_fulfilment(B).
reasons_to_doubt_competence(B) :-
    notified_body(B),
    doubt_competence(B).
reasons_to_doubt_continued_fulfilment(B) :-
    notified_body(B),
    doubt_continued_fulfilment_of_requirements(B),
    meets_requirements_art_31(B).
reasons_to_doubt_continued_fulfilment(B) :-
    notified_body(B),
    doubt_continued_fulfilment_of_responsibilities(B).
must_provide_information_on_notification(NA, B) :-
    notifying_authority(NA),
    notified_body(B),
    notification_relates_to(NA, B).
must_treat_sensitive_information_confidentially(ai_office, Info) :-
    sensitive_information(Info),
    obtained_in_investigation(ai_office, Info).
must_inform_notifying_member_state(ai_office, MS) :-
    member_state(MS),
    notifying_authority_in_member_state(MS, _NA),
    ascertains_non_compliance(ai_office, B),
    notified_body(B),
    notification_by_member_state(MS, B).
must_take_corrective_measures_by_member_state(MS, B) :-
    member_state(MS),
    notified_body(B),
    notification_by_member_state(MS, B),
    must_inform_notifying_member_state(ai_office, MS),
    ascertains_non_compliance(ai_office, B).
may_suspend_restrict_or_withdraw_designation(ai_office) :-
    member_state(MS),
    notified_body(B),
    notification_by_member_state(MS, B),
    ascertains_non_compliance(ai_office, B),
    must_inform_notifying_member_state(ai_office, MS),
    fails_to_take_corrective_measures(MS, B).
ascertains_non_compliance(ai_office, B) :-
    notified_body(B),
    does_not_meet_requirements_for_notification(B).
ascertains_non_compliance(ai_office, B) :-
    notified_body(B),
    no_longer_meets_requirements_for_notification(B).
fails_to_take_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    \+ takes_necessary_corrective_measures(MS, B).
takes_necessary_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    suspends_notification(MS, B).
takes_necessary_corrective_measures(MS, B) :-
    member_state(MS),
    notified_body(B),
    withdraws_notification(MS, B).
provenance(must_investigate_competence/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information_on_notification/2, 'celex:32024R1689/oj#art_37').
provenance(must_treat_sensitive_information_confidentially/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform_notifying_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(must_take_corrective_measures_by_member_state/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_or_withdraw_designation/1, 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_38 ====
declared(must_ensure_coordination/1, 'Commission ensures appropriate coordination and cooperation between notified bodies active in conformity assessment procedures for high-risk AI systems', 'celex:32024R1689/oj#art_38').
declared(sectoral_group_of_notified_bodies/1, 'sectoral group of notified bodies for coordination and cooperation', 'celex:32024R1689/oj#art_38').
declared(must_ensure_participation/2, 'notifying authority ensures notified bodies participate in sectoral group work', 'celex:32024R1689/oj#art_38').
declared(must_provide_exchange/2, 'Commission provides for exchange of knowledge and best practices between notifying authorities', 'celex:32024R1689/oj#art_38').
must_ensure_coordination(commission) :-
    sectoral_group_of_notified_bodies(G),
    operates_properly(G).
sectoral_group_of_notified_bodies(G) :-
    group_of_notified_bodies(G),
    sectoral(G).
operates_properly(G) :-
    coordination_and_cooperation_put_in_place(G),
    high_risk_ai_system_conformity_assessment_context(G).
group_of_notified_bodies(G) :-
    notified_body(B),
    member_of_group(B, G).
member_of_group(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).
coordination_and_cooperation_put_in_place(G) :-
    sectoral_group_of_notified_bodies(G).
high_risk_ai_system_conformity_assessment_context(G) :-
    sectoral_group_of_notified_bodies(G),
    conformity_assessment_procedure(P),
    high_risk_ai_system(S),
    relates_to(P, S).
relates_to(P, S) :-
    conformity_assessment_procedure(P),
    high_risk_ai_system(S).
sectoral(G) :-
    sectoral_group_of_notified_bodies(G).
must_ensure_participation(NA, G) :-
    notifying_authority(NA),
    sectoral_group_of_notified_bodies(G),
    bodies_notified_by(NA, B),
    participates_in_work(B, G).
bodies_notified_by(NA, B) :-
    notifying_authority(NA),
    notified_body(B),
    notified_by(NA, B).
notified_by(NA, B) :-
    notifying_authority(NA),
    notified_body(B).
participates_in_work(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G),
    directly_or_through_representatives(B, G).
directly_or_through_representatives(B, G) :-
    participates_directly(B, G).
directly_or_through_representatives(B, G) :-
    participates_through_designated_representatives(B, G).
participates_directly(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).
participates_through_designated_representatives(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G),
    designated_representatives(B, R),
    participates(R, G).
designated_representatives(B, R) :-
    notified_body(B),
    representative(R).
participates(R, G) :-
    sectoral_group_of_notified_bodies(G).
must_provide_exchange(commission, exchange(knowledge_and_best_practices, between_notifying_authorities)) :-
    notifying_authority(NA1),
    notifying_authority(NA2),
    NA1 \= NA2.
provenance(must_ensure_coordination/1, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').

% ==== celex:32024R1689/oj#art_39 ====
declared(third_country_conformity_assessment_body/1, 'conformity assessment body established under the law of a third country', 'celex:32024R1689/oj#art_39').
declared(agreement_with_union/1, 'Union has concluded an agreement with the third country', 'celex:32024R1689/oj#art_39').
declared(authorised_to_carry_out_notified_body_activities/1, 'conformity assessment body authorised to carry out activities of notified bodies', 'celex:32024R1689/oj#art_39').
declared(equivalent_level_of_compliance/1, 'body ensures an equivalent level of compliance', 'celex:32024R1689/oj#art_39').
authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(B),
    meets_requirements_art_31(B).
authorised_to_carry_out_notified_body_activities(B) :-
    third_country_conformity_assessment_body(B),
    agreement_with_union(B),
    equivalent_level_of_compliance(B).
provenance(third_country_conformity_assessment_body/1, 'celex:32024R1689/oj#art_39').
provenance(agreement_with_union/1, 'celex:32024R1689/oj#art_39').
provenance(authorised_to_carry_out_notified_body_activities/1, 'celex:32024R1689/oj#art_39').
provenance(equivalent_level_of_compliance/1, 'celex:32024R1689/oj#art_39').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_39', 'celex:32024R1689/oj#art_31').

% ==== celex:32024R1689/oj#art_40 ====
declared(presumed_conformity/1, 'high-risk AI system or general-purpose AI model presumed to be in conformity with requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(harmonised_standard_covers/2, 'harmonised standard or part thereof covers the requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_issued/1, 'Commission issues standardisation request covering requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_covers/2, 'standardisation request covers specific requirements or obligations', 'celex:32024R1689/oj#art_40').
declared(standardisation_request_includes_deliverables/1, 'standardisation request asks for deliverables on reporting, documentation, resource performance, or energy-efficient development', 'celex:32024R1689/oj#art_40').
declared(commission_consults_board_and_stakeholders/0, 'Commission consults the Board and relevant stakeholders including the advisory forum when preparing standardisation request', 'celex:32024R1689/oj#art_40').
declared(standards_must_be_clear_consistent/1, 'standards specified to be clear, consistent with sector standards for products under Union harmonisation legislation, and aiming to ensure conformity', 'celex:32024R1689/oj#art_40').
declared(commission_requests_evidence_of_best_efforts/1, 'Commission requests European standardisation organisations to provide evidence of best efforts to fulfil objectives', 'celex:32024R1689/oj#art_40').
declared(participants_promote_investment_innovation/1, 'participants in standardisation process seek to promote investment, innovation, legal certainty, competitiveness and growth', 'celex:32024R1689/oj#art_40').
declared(participants_strengthen_global_cooperation/1, 'participants contribute to strengthening global cooperation on standardisation', 'celex:32024R1689/oj#art_40').
declared(participants_take_into_account_international_standards/1, 'participants take into account existing international standards consistent with Union values, fundamental rights and interests', 'celex:32024R1689/oj#art_40').
declared(participants_enhance_multistakeholder_governance/1, 'participants enhance multi-stakeholder governance ensuring balanced representation and effective participation of all relevant stakeholders', 'celex:32024R1689/oj#art_40').
presumed_conformity(S) :-
    high_risk_ai_system(S),
    harmonised_standard(S),
    reference_published_in_official_journal(S),
    harmonised_standard_covers(S, requirements).
presumed_conformity(M) :-
    general_purpose_ai_model(M),
    harmonised_standard(M),
    reference_published_in_official_journal(M),
    harmonised_standard_covers(M, obligations).
harmonised_standard_covers(S, requirements) :-
    harmonised_standard(S),
    covers_requirements_set_out_in_chapter_3_section_2(S).
harmonised_standard_covers(M, obligations) :-
    harmonised_standard(M),
    covers_obligations_set_out_in_chapter_5_section_2(M).
harmonised_standard_covers(M, obligations) :-
    harmonised_standard(M),
    covers_obligations_set_out_in_chapter_5_section_3(M).
standardisation_request_issued(request(requirements, chapter_3_section_2)).
standardisation_request_issued(request(obligations, chapter_5_section_2)).
standardisation_request_issued(request(obligations, chapter_5_section_3)).
standardisation_request_covers(request(requirements, chapter_3_section_2), requirements).
standardisation_request_covers(request(obligations, chapter_5_section_2), obligations).
standardisation_request_covers(request(obligations, chapter_5_section_3), obligations).
standardisation_request_includes_deliverables(request(reporting_documentation_resource_performance)).
standardisation_request_includes_deliverables(request(energy_efficient_development_general_purpose_ai_models)).
commission_consults_board_and_stakeholders.
standards_must_be_clear_consistent(request).
commission_requests_evidence_of_best_efforts(request).
participants_promote_investment_innovation(participants).
participants_strengthen_global_cooperation(participants).
participants_take_into_account_international_standards(participants).
participants_enhance_multistakeholder_governance(participants).
provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_40').
provenance(harmonised_standard_covers/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_issued/1, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_covers/2, 'celex:32024R1689/oj#art_40').
provenance(standardisation_request_includes_deliverables/1, 'celex:32024R1689/oj#art_40').
provenance(commission_consults_board_and_stakeholders/0, 'celex:32024R1689/oj#art_40').
provenance(standards_must_be_clear_consistent/1, 'celex:32024R1689/oj#art_40').
provenance(commission_requests_evidence_of_best_efforts/1, 'celex:32024R1689/oj#art_40').
provenance(participants_promote_investment_innovation/1, 'celex:32024R1689/oj#art_40').
provenance(participants_strengthen_global_cooperation/1, 'celex:32024R1689/oj#art_40').
provenance(participants_take_into_account_international_standards/1, 'celex:32024R1689/oj#art_40').
provenance(participants_enhance_multistakeholder_governance/1, 'celex:32024R1689/oj#art_40').
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
declared(common_specification_adopted/1, 'Commission has adopted implementing act establishing common specifications', 'celex:32024R1689/oj#art_41').
declared(common_specification_covers/2, 'common specification covers requirement or obligation', 'celex:32024R1689/oj#art_41').
declared(presumed_conformity_with_common_specification/1, 'high-risk AI system or general-purpose AI model in conformity with common specifications is presumed conforming', 'celex:32024R1689/oj#art_41').
declared(condition_for_common_specification/1, 'conditions fulfilled for Commission to adopt common specifications', 'celex:32024R1689/oj#art_41').
declared(standardisation_request_not_accepted/1, 'request to European standardisation organisation not accepted', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_not_delivered_in_time/1, 'harmonised standards not delivered within deadline', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_insufficient_fundamental_rights/1, 'harmonised standards insufficiently address fundamental rights concerns', 'celex:32024R1689/oj#art_41').
declared(harmonised_standard_does_not_comply/1, 'harmonised standards do not comply with the request', 'celex:32024R1689/oj#art_41').
declared(no_harmonised_standard_reference_published/1, 'no reference to harmonised standards published in Official Journal and none expected within reasonable period', 'celex:32024R1689/oj#art_41').
declared(commission_requested_standardisation/1, 'Commission requested European standardisation organisation to draft harmonised standard', 'celex:32024R1689/oj#art_41').
declared(commission_consulted_advisory_forum/1, 'Commission consulted advisory forum when drafting common specifications', 'celex:32024R1689/oj#art_41').
declared(commission_informed_committee/1, 'Commission informed committee that conditions for common specifications are fulfilled', 'celex:32024R1689/oj#art_41').
declared(provider_justifies_alternative_solution/2, 'provider justifies technical solutions at least equivalent to common specifications', 'celex:32024R1689/oj#art_41').
declared(member_state_informs_commission/2, 'Member State informs Commission that common specification does not meet requirements', 'celex:32024R1689/oj#art_41').
declared(commission_assesses_member_state_information/1, 'Commission assesses information from Member State about common specification', 'celex:32024R1689/oj#art_41').
declared(commission_repeals_common_specification/1, 'Commission repeals implementing act when harmonised standard reference published', 'celex:32024R1689/oj#art_41').
condition_for_common_specification(C) :-
    commission_requested_standardisation(C),
    standardisation_failure_condition(C),
    no_harmonised_standard_reference_published(C).
standardisation_failure_condition(C) :-
    standardisation_request_not_accepted(C).
standardisation_failure_condition(C) :-
    harmonised_standard_not_delivered_in_time(C).
standardisation_failure_condition(C) :-
    harmonised_standard_insufficient_fundamental_rights(C).
standardisation_failure_condition(C) :-
    harmonised_standard_does_not_comply(C).
common_specification_adopted(C) :-
    condition_for_common_specification(C),
    commission_consulted_advisory_forum(C).
presumed_conformity_with_common_specification(S) :-
    high_risk_ai_system(S),
    common_specification_adopted(C),
    common_specification_covers(C, S),
    in_conformity_with(S, C).
presumed_conformity_with_common_specification(M) :-
    general_purpose_ai_model(M),
    common_specification_adopted(C),
    common_specification_covers(C, M),
    in_conformity_with(M, C).
in_conformity_with(S, C) :-
    conforms_to_common_specification(S, C).
in_conformity_with(S, C) :-
    conforms_to_part_of_common_specification(S, C).
must_justify_equivalent_solution(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    common_specification_adopted(C),
    common_specification_covers(C, S),
    \+ conforms_to_common_specification(S, C),
    provider_justifies_alternative_solution(P, equivalent_technical_solution(S, C)).
must_justify_equivalent_solution(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    common_specification_adopted(C),
    common_specification_covers(C, M),
    \+ conforms_to_common_specification(M, C),
    provider_justifies_alternative_solution(P, equivalent_technical_solution(M, C)).
must_inform_commission(MemberState, detailed_explanation(CommonSpecification)) :-
    member_state(MemberState),
    common_specification_adopted(C),
    member_state_considers_inadequate(MemberState, C),
    member_state_informs_commission(MemberState, detailed_explanation(C)).
must_assess_and_amend(Commission, Information) :-
    member_state_informs_commission(_, Information),
    commission_assesses_member_state_information(Information),
    may_amend_implementing_act(Commission, Information).
must_repeal_common_specification_act(Commission, C) :-
    common_specification_adopted(C),
    harmonised_standard_reference_published(C),
    commission_repeals_common_specification(C).
must_inform_committee_before_draft(Commission) :-
    commission_informed_committee(Commission),
    condition_for_common_specification(_).
provenance(common_specification_adopted/1, 'celex:32024R1689/oj#art_41').
provenance(common_specification_covers/2, 'celex:32024R1689/oj#art_41').
provenance(presumed_conformity_with_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(condition_for_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(standardisation_request_not_accepted/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_not_delivered_in_time/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_insufficient_fundamental_rights/1, 'celex:32024R1689/oj#art_41').
provenance(harmonised_standard_does_not_comply/1, 'celex:32024R1689/oj#art_41').
provenance(no_harmonised_standard_reference_published/1, 'celex:32024R1689/oj#art_41').
provenance(commission_requested_standardisation/1, 'celex:32024R1689/oj#art_41').
provenance(commission_consulted_advisory_forum/1, 'celex:32024R1689/oj#art_41').
provenance(commission_informed_committee/1, 'celex:32024R1689/oj#art_41').
provenance(provider_justifies_alternative_solution/2, 'celex:32024R1689/oj#art_41').
provenance(member_state_informs_commission/2, 'celex:32024R1689/oj#art_41').
provenance(commission_assesses_member_state_information/1, 'celex:32024R1689/oj#art_41').
provenance(commission_repeals_common_specification/1, 'celex:32024R1689/oj#art_41').
provenance(must_justify_equivalent_solution/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_41').
provenance(must_assess_and_amend/2, 'celex:32024R1689/oj#art_41').
provenance(must_repeal_common_specification_act/2, 'celex:32024R1689/oj#art_41').
provenance(must_inform_committee_before_draft/1, 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_10/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1/unp_1').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_41', 'celex:32024R1689/oj#art_41/par_1').
references('celex:32024R1689/oj#art_41', 'celex:32012R1025/oj#art_22').

% ==== celex:32024R1689/oj#art_42 ====
declared(trained_and_tested_on_representative_data/1, 'high-risk AI system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting within which it is intended to be used', 'celex:32024R1689/oj#art_42').
declared(presumed_to_comply_with_requirements/2, 'high-risk AI system presumed to comply with requirements', 'celex:32024R1689/oj#art_42').
declared(certified_under_cybersecurity_scheme/1, 'high-risk AI system certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation (EU) 2019/881 with references published in the Official Journal', 'celex:32024R1689/oj#art_42').
declared(cybersecurity_certificate_covers_requirements/2, 'cybersecurity certificate or statement of conformity or parts thereof cover the cybersecurity requirements', 'celex:32024R1689/oj#art_42').
presumed_to_comply_with_requirements(S, article_10_par_4_requirements) :-
    high_risk_ai_system(S),
    trained_and_tested_on_representative_data(S).
presumed_to_comply_with_requirements(S, article_15_cybersecurity_requirements) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme(S),
    cybersecurity_certificate_covers_requirements(S, article_15_cybersecurity_requirements).
provenance(trained_and_tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_to_comply_with_requirements/2, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_covers_requirements/2, 'celex:32024R1689/oj#art_42').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').

% ==== celex:32024R1689/oj#art_43 ====
declared(annex_3_point_2/1, 'high-risk AI system referred to in Annex III point 2', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_3/1, 'high-risk AI system referred to in Annex III point 3', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_4/1, 'high-risk AI system referred to in Annex III point 4', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_5/1, 'high-risk AI system referred to in Annex III point 5', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_6/1, 'high-risk AI system referred to in Annex III point 6', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_7/1, 'high-risk AI system referred to in Annex III point 7', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_8/1, 'high-risk AI system referred to in Annex III point 8', 'celex:32024R1689/oj#art_43').
declared(annex_3_point_2_to_8/1, 'high-risk AI system referred to in Annex III points 2 through 8', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_applied/2, 'provider has applied harmonised standard to AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_applied_partially/2, 'provider has applied only part of harmonised standard to AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_does_not_exist/1, 'harmonised standard does not exist for AI system', 'celex:32024R1689/oj#art_43').
declared(common_specification_available/1, 'common specification is available for AI system', 'celex:32024R1689/oj#art_43').
declared(common_specification_not_available/1, 'common specification is not available for AI system', 'celex:32024R1689/oj#art_43').
declared(common_specification_applied/2, 'provider has applied common specification to AI system', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_published_with_restriction/1, 'harmonised standard published with restriction', 'celex:32024R1689/oj#art_43').
declared(harmonised_standard_restricted_part_applied/2, 'provider applied only restricted part of harmonised standard', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_procedure_internal_control/1, 'conformity assessment procedure based on internal control per Annex VI', 'celex:32024R1689/oj#art_43').
declared(conformity_assessment_procedure_notified_body/1, 'conformity assessment procedure with notified body per Annex VII', 'celex:32024R1689/oj#art_43').
declared(provider_may_choose_notified_body/2, 'provider may choose any notified body for AI system', 'celex:32024R1689/oj#art_43').
declared(market_surveillance_authority_acts_as_notified_body/2, 'market surveillance authority acts as notified body for AI system', 'celex:32024R1689/oj#art_43').
declared(intended_for_law_enforcement_immigration_asylum/1, 'AI system intended to be put into service by law enforcement, immigration or asylum authorities', 'celex:32024R1689/oj#art_43').
declared(intended_for_union_institution_body_office_agency/1, 'AI system intended to be put into service by Union institutions, bodies, offices or agencies', 'celex:32024R1689/oj#art_43').
declared(must_follow_conformity_assessment/2, 'provider must follow conformity assessment procedure for AI system', 'celex:32024R1689/oj#art_43').
declared(notified_body_entitled_to_control_conformity/2, 'notified body entitled to control conformity of AI system with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(notified_body_compliance_assessed/2, 'compliance of notified body with Article 31 requirements assessed in notification procedure', 'celex:32024R1689/oj#art_43').
declared(product_manufacturer_may_opt_out_third_party/2, 'product manufacturer may opt out from third-party conformity assessment for product', 'celex:32024R1689/oj#art_43').
declared(product_manufacturer_opt_out_condition/2, 'product manufacturer opt-out condition: applied all harmonised standards covering all relevant requirements', 'celex:32024R1689/oj#art_43').
declared(product_manufacturer_opt_out_additional_condition/2, 'product manufacturer opt-out additional condition: applied harmonised standards or common specifications covering Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_43').
declared(predetermined_change/2, 'change to AI system predetermined by provider at initial conformity assessment', 'celex:32024R1689/oj#art_43').
declared(change_in_technical_documentation/2, 'change is part of information in technical documentation', 'celex:32024R1689/oj#art_43').
declared(not_substantial_modification/1, 'change does not constitute substantial modification', 'celex:32024R1689/oj#art_43').
annex_3_point_2_to_8(S) :- annex_3_point_2(S).
annex_3_point_2_to_8(S) :- annex_3_point_3(S).
annex_3_point_2_to_8(S) :- annex_3_point_4(S).
annex_3_point_2_to_8(S) :- annex_3_point_5(S).
annex_3_point_2_to_8(S) :- annex_3_point_6(S).
annex_3_point_2_to_8(S) :- annex_3_point_7(S).
annex_3_point_2_to_8(S) :- annex_3_point_8(S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_internal_control(annex_6)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    harmonised_standard_applied(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_internal_control(annex_6)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    common_specification_applied(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    harmonised_standard_applied(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    common_specification_applied(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    harmonised_standard_does_not_exist(S),
    common_specification_not_available(S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    harmonised_standard_applied_partially(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    common_specification_available(S),
    \+ common_specification_applied(P, S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_notified_body(annex_7)) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    harmonised_standard_published_with_restriction(S),
    harmonised_standard_restricted_part_applied(P, S).
provider_may_choose_notified_body(P, S) :-
    provider(P),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    \+ intended_for_law_enforcement_immigration_asylum(S),
    \+ intended_for_union_institution_body_office_agency(S).
market_surveillance_authority_acts_as_notified_body(A, S) :-
    market_surveillance_authority(A),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    intended_for_law_enforcement_immigration_asylum(S).
market_surveillance_authority_acts_as_notified_body(A, S) :-
    market_surveillance_authority(A),
    annex_3_point_1(S),
    high_risk_ai_system(S),
    intended_for_union_institution_body_office_agency(S).
must_follow_conformity_assessment(P, S, conformity_assessment_procedure_internal_control(annex_6)) :-
    provider(P),
    annex_3_point_2_to_8(S),
    high_risk_ai_system(S).
must_follow_conformity_assessment(P, S, procedure(union_harmonisation_legislation)) :-
    provider(P),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).
notified_body_entitled_to_control_conformity(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    notified_body_compliance_assessed(B, S).
notified_body_compliance_assessed(B, S) :-
    notified_body(B),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    meets_requirements_art_31(B).
product_manufacturer_may_opt_out_third_party(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    product_manufacturer_opt_out_condition(M, S),
    product_manufacturer_opt_out_additional_condition(M, S).
product_manufacturer_opt_out_condition(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    harmonised_standard_applied(M, S).
product_manufacturer_opt_out_additional_condition(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    harmonised_standard_applied(M, S).
product_manufacturer_opt_out_additional_condition(M, S) :-
    product_manufacturer(M),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    common_specification_applied(M, S).
new_conformity_assessment_required(S) :-
    high_risk_ai_system(S),
    substantial_modification(S).
not_substantial_modification(S) :-
    high_risk_ai_system(S),
    predetermined_change(S, Change),
    change_in_technical_documentation(S, Change).
predetermined_change(S, change(performance)) :-
    high_risk_ai_system(S),
    continues_to_learn_after_placement(S).
change_in_technical_documentation(S, change(performance)) :-
    high_risk_ai_system(S),
    technical_documentation_contains(S, predetermined_performance_change).
continues_to_learn_after_placement(S) :-
    high_risk_ai_system(S),
    placed_on_market(S).
continues_to_learn_after_placement(S) :-
    high_risk_ai_system(S),
    putting_into_service(S).
technical_documentation_contains(S, Item) :-
    high_risk_ai_system(S),
    up_to_date(S),
    contains(technical_documentation, Item).
contains(technical_documentation, predetermined_performance_change).
provenance(annex_3_point_2/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_3/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_4/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_5/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_6/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_7/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_8/1, 'celex:32024R1689/oj#art_43').
provenance(annex_3_point_2_to_8/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_applied/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_applied_partially/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_does_not_exist/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_available/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_not_available/1, 'celex:32024R1689/oj#art_43').
provenance(common_specification_applied/2, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_published_with_restriction/1, 'celex:32024R1689/oj#art_43').
provenance(harmonised_standard_restricted_part_applied/2, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure_internal_control/1, 'celex:32024R1689/oj#art_43').
provenance(conformity_assessment_procedure_notified_body/1, 'celex:32024R1689/oj#art_43').
provenance(provider_may_choose_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(market_surveillance_authority_acts_as_notified_body/2, 'celex:32024R1689/oj#art_43').
provenance(intended_for_law_enforcement_immigration_asylum/1, 'celex:32024R1689/oj#art_43').
provenance(intended_for_union_institution_body_office_agency/1, 'celex:32024R1689/oj#art_43').
provenance(must_follow_conformity_assessment/3, 'celex:32024R1689/oj#art_43').
provenance(notified_body_entitled_to_control_conformity/2, 'celex:32024R1689/oj#art_43').
provenance(notified_body_compliance_assessed/2, 'celex:32024R1689/oj#art_43').
provenance(product_manufacturer_may_opt_out_third_party/2, 'celex:32024R1689/oj#art_43').
provenance(product_manufacturer_opt_out_condition/2, 'celex:32024R1689/oj#art_43').
provenance(product_manufacturer_opt_out_additional_condition/2, 'celex:32024R1689/oj#art_43').
provenance(predetermined_change/2, 'celex:32024R1689/oj#art_43').
provenance(change_in_technical_documentation/2, 'celex:32024R1689/oj#art_43').
provenance(not_substantial_modification/1, 'celex:32024R1689/oj#art_43').
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
declared(ai_system_covered_by_annex_1/1, 'AI system covered by Annex I', 'art_44').
declared(ai_system_covered_by_annex_3/1, 'AI system covered by Annex III', 'art_44').
declared(certificate_validity_period/2, 'certificate validity period for system', 'art_44').
declared(certificate_extension_period/2, 'certificate extension period for system', 'art_44').
declared(certificate_drawn_up_in_language/2, 'certificate drawn up in language easily understood by authorities of member state', 'art_44').
declared(certificate_suspended_or_withdrawn/1, 'certificate suspended or withdrawn by notified body', 'art_44').
declared(certificate_restricted/1, 'certificate restricted by notified body', 'art_44').
declared(certificate_supplement/1, 'supplement to a certificate', 'art_44').
declared(certificate_supplemented_by/2, 'certificate supplemented by supplement', 'art_44').
declared(appeal_procedure_available/1, 'appeal procedure available against decision of notified body', 'art_44').
declared(notified_body_finds_non_compliance/2, 'notified body finds AI system no longer meets requirements', 'art_44').
declared(corrective_action_taken/2, 'provider takes appropriate corrective action for system', 'art_44').
declared(deadline_set_by_notified_body/2, 'appropriate deadline set by notified body for system', 'art_44').
declared(reasons_given_for_decision/2, 'notified body gives reasons for decision', 'art_44').
declared(re_assessment_conducted/1, 're-assessment conducted in accordance with applicable conformity assessment procedures', 'art_44').
certificate_drawn_up_in_language(C, MS) :-
    certificate(C),
    notified_body(B),
    certificate_issued_by(C, B),
    member_state(MS),
    notified_body_established_in(B, MS),
    easily_understood_language(language(C)).
certificate_validity_period(C, years(5)) :-
    certificate(C),
    ai_system_covered_by_annex_1(S),
    certificate_for_system(C, S).
certificate_validity_period(C, years(4)) :-
    certificate(C),
    ai_system_covered_by_annex_3(S),
    certificate_for_system(C, S).
certificate_extension_period(C, years(5)) :-
    certificate(C),
    ai_system_covered_by_annex_1(S),
    certificate_for_system(C, S).
certificate_extension_period(C, years(4)) :-
    certificate(C),
    ai_system_covered_by_annex_3(S),
    certificate_for_system(C, S).
certificate_valid(C) :-
    certificate(C),
    certificate_validity_period(C, P),
    within_validity_period(C, P).
certificate_valid(C) :-
    certificate_supplement(Sup),
    certificate_supplemented_by(C, Sup),
    certificate_valid(C).
ai_system_covered_by_annex_3(S) :-
    high_risk_ai_system(S).
certificate_suspended_or_withdrawn(C) :-
    certificate(C),
    notified_body(B),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S).
certificate_restricted(C) :-
    certificate(C),
    notified_body(B),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S).
corrective_action_ensures_compliance(B, S) :-
    provider(P),
    corrective_action_taken(P, S),
    deadline_set_by_notified_body(B, S),
    compliance_ensured_within_deadline(S).
must_suspend_or_withdraw_or_restrict_certificate(B, C) :-
    notified_body(B),
    certificate(C),
    notified_body_finds_non_compliance(B, S),
    certificate_for_system(C, S),
    \+ corrective_action_ensures_compliance(B, S),
    reasons_given_for_decision(B, suspend_or_withdraw_or_restrict(C)).
appeal_procedure_available(decision(B, C)) :-
    notified_body(B),
    certificate(C),
    decision_of_notified_body(B, C).
provenance(certificate_drawn_up_in_language/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_validity_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_extension_period/2, 'celex:32024R1689/oj#art_44').
provenance(certificate_valid/1, 'celex:32024R1689/oj#art_44').
provenance(ai_system_covered_by_annex_3/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_suspended_or_withdrawn/1, 'celex:32024R1689/oj#art_44').
provenance(certificate_restricted/1, 'celex:32024R1689/oj#art_44').
provenance(corrective_action_ensures_compliance/2, 'celex:32024R1689/oj#art_44').
provenance(must_suspend_or_withdraw_or_restrict_certificate/2, 'celex:32024R1689/oj#art_44').
provenance(appeal_procedure_available/1, 'celex:32024R1689/oj#art_44').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_44', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_45 ====
declared(must_inform_notifying_authority/2, 'notified body must inform notifying authority of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_inform_other_notified_bodies/2, 'notified body must inform other notified bodies of specified matters', 'celex:32024R1689/oj#art_45').
declared(must_provide_relevant_information/2, 'notified body must provide relevant information on conformity assessment results to other notified bodies', 'celex:32024R1689/oj#art_45').
declared(issued_union_technical_documentation_assessment_certificate/1, 'Union technical documentation assessment certificate issued', 'celex:32024R1689/oj#art_45').
declared(supplement_to_certificate/1, 'supplement to a certificate', 'celex:32024R1689/oj#art_45').
declared(quality_management_system_approval/1, 'quality management system approval issued', 'celex:32024R1689/oj#art_45').
declared(refused_certificate_or_approval/1, 'certificate or approval refused', 'celex:32024R1689/oj#art_45').
declared(restricted_certificate_or_approval/1, 'certificate or approval restricted', 'celex:32024R1689/oj#art_45').
declared(suspended_certificate_or_approval/1, 'certificate or approval suspended', 'celex:32024R1689/oj#art_45').
declared(withdrawn_certificate_or_approval/1, 'certificate or approval withdrawn', 'celex:32024R1689/oj#art_45').
declared(circumstances_affecting_notification/1, 'circumstances affecting scope of or conditions for notification', 'celex:32024R1689/oj#art_45').
declared(request_for_information_from_market_surveillance_authority/1, 'request for information received from market surveillance authorities regarding conformity assessment activities', 'celex:32024R1689/oj#art_45').
declared(conformity_assessment_activity_performed/1, 'conformity assessment activity performed within scope of notification', 'celex:32024R1689/oj#art_45').
declared(other_activity_performed/1, 'other activity performed including cross-border activities and subcontracting', 'celex:32024R1689/oj#art_45').
declared(similar_conformity_assessment_activities/2, 'two notified bodies carry out similar conformity assessment activities', 'celex:32024R1689/oj#art_45').
declared(same_types_of_ai_systems/2, 'two notified bodies cover same types of AI systems', 'celex:32024R1689/oj#art_45').
declared(negative_conformity_assessment_result/1, 'negative conformity assessment result', 'celex:32024R1689/oj#art_45').
declared(positive_conformity_assessment_result/1, 'positive conformity assessment result', 'celex:32024R1689/oj#art_45').
must_inform_notifying_authority(B, issued_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B),
    certificate(C),
    issued_union_technical_documentation_assessment_certificate(C).
must_inform_notifying_authority(B, supplement_to_certificate(S)) :-
    notified_body(B),
    supplement_to_certificate(S).
must_inform_notifying_authority(B, quality_management_system_approval(A)) :-
    notified_body(B),
    quality_management_system_approval(A).
must_inform_notifying_authority(B, refused_certificate_or_approval(X)) :-
    notified_body(B),
    refused_certificate_or_approval(X).
must_inform_notifying_authority(B, restricted_certificate_or_approval(X)) :-
    notified_body(B),
    restricted_certificate_or_approval(X).
must_inform_notifying_authority(B, suspended_certificate_or_approval(X)) :-
    notified_body(B),
    suspended_certificate_or_approval(X).
must_inform_notifying_authority(B, withdrawn_certificate_or_approval(X)) :-
    notified_body(B),
    withdrawn_certificate_or_approval(X).
must_inform_notifying_authority(B, circumstances_affecting_notification(C)) :-
    notified_body(B),
    circumstances_affecting_notification(C).
must_inform_notifying_authority(B, request_for_information_from_market_surveillance_authority(R)) :-
    notified_body(B),
    request_for_information_from_market_surveillance_authority(R).
must_inform_notifying_authority(B, conformity_assessment_activity_performed(A)) :-
    notified_body(B),
    conformity_assessment_activity_performed(A).
must_inform_notifying_authority(B, other_activity_performed(A)) :-
    notified_body(B),
    other_activity_performed(A).
must_inform_other_notified_bodies(B1, refused_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    refused_certificate_or_approval(A).
must_inform_other_notified_bodies(B1, suspended_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    suspended_certificate_or_approval(A).
must_inform_other_notified_bodies(B1, withdrawn_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    withdrawn_certificate_or_approval(A).
must_inform_other_notified_bodies(B1, issued_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    issued_union_technical_documentation_assessment_certificate(A).
must_inform_other_notified_bodies(B1, refused_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    refused_certificate_or_approval(C).
must_inform_other_notified_bodies(B1, withdrawn_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    withdrawn_certificate_or_approval(C).
must_inform_other_notified_bodies(B1, suspended_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    suspended_certificate_or_approval(C).
must_inform_other_notified_bodies(B1, restricted_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    restricted_certificate_or_approval(C).
must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    refused_certificate_or_approval(S).
must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    withdrawn_certificate_or_approval(S).
must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    suspended_certificate_or_approval(S).
must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    restricted_certificate_or_approval(S).
must_inform_other_notified_bodies(B1, issued_certificate_or_supplement(X)) :-
    notified_body(B1),
    certificate(X),
    issued_union_technical_documentation_assessment_certificate(X).
must_inform_other_notified_bodies(B1, issued_certificate_or_supplement(S)) :-
    notified_body(B1),
    supplement_to_certificate(S).
must_provide_relevant_information(B1, negative_conformity_assessment_result(R)) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    similar_conformity_assessment_activities(B1, B2),
    same_types_of_ai_systems(B1, B2),
    negative_conformity_assessment_result(R).
must_provide_relevant_information(B1, positive_conformity_assessment_result(R)) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    similar_conformity_assessment_activities(B1, B2),
    same_types_of_ai_systems(B1, B2),
    positive_conformity_assessment_result(R).
must_treat_information_confidentially(B, information(obtained_by_notified_body)) :-
    notified_body(B).
provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information/2, 'celex:32024R1689/oj#art_45').
provenance(issued_union_technical_documentation_assessment_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(quality_management_system_approval/1, 'celex:32024R1689/oj#art_45').
provenance(refused_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(restricted_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(suspended_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(withdrawn_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(circumstances_affecting_notification/1, 'celex:32024R1689/oj#art_45').
provenance(request_for_information_from_market_surveillance_authority/1, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity_performed/1, 'celex:32024R1689/oj#art_45').
provenance(other_activity_performed/1, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activities/2, 'celex:32024R1689/oj#art_45').
provenance(same_types_of_ai_systems/2, 'celex:32024R1689/oj#art_45').
provenance(negative_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(positive_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_46 ====
declared(authorisation_for_derogation/2, 'market surveillance authority authorises placing on market or putting into service of specific high-risk AI system for exceptional reasons', 'celex:32024R1689/oj#art_46').
declared(exceptional_reasons/1, 'exceptional reasons of public security, protection of life and health, environmental protection, or protection of key industrial and infrastructural assets', 'celex:32024R1689/oj#art_46').
declared(limited_period_authorisation/1, 'authorisation is for a limited period while conformity assessment procedures are being carried out', 'celex:32024R1689/oj#art_46').
declared(conformity_assessment_without_undue_delay/1, 'completion of conformity assessment procedures undertaken without undue delay', 'celex:32024R1689/oj#art_46').
declared(urgency_put_into_service_without_authorisation/2, 'law enforcement or civil protection authority puts high-risk AI system into service without prior authorisation in duly justified urgency', 'celex:32024R1689/oj#art_46').
declared(authorisation_requested_during_or_after_use/1, 'authorisation requested during or after the use without undue delay', 'celex:32024R1689/oj#art_46').
declared(stop_use_if_authorisation_refused/1, 'if authorisation refused, use stopped with immediate effect and results discarded', 'celex:32024R1689/oj#art_46').
declared(authorisation_only_if_compliant/2, 'authorisation issued only if market surveillance authority concludes system complies with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_46').
declared(inform_commission_and_member_states/2, 'market surveillance authority informs Commission and other Member States of authorisation issued', 'celex:32024R1689/oj#art_46').
declared(authorisation_deemed_justified/1, 'authorisation deemed justified if no objection within 15 calendar days', 'celex:32024R1689/oj#art_46').
declared(commission_consultation_on_objection/1, 'Commission enters into consultations when objection raised or authorisation considered contrary to Union law', 'celex:32024R1689/oj#art_46').
declared(commission_decides_justification/1, 'Commission decides whether authorisation is justified after consultation', 'celex:32024R1689/oj#art_46').
declared(withdraw_unjustified_authorisation/1, 'market surveillance authority withdraws authorisation if Commission considers it unjustified', 'celex:32024R1689/oj#art_46').
declared(derogation_limited_for_harmonisation_products/1, 'for products covered by Union harmonisation legislation, only derogations from that legislation apply', 'celex:32024R1689/oj#art_46').
authorisation_for_derogation(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    duly_justified_request,
    exceptional_reasons(Reason),
    member_state(MemberState),
    within_territory(S, MemberState).
exceptional_reasons(public_security).
exceptional_reasons(protection_of_life_and_health).
exceptional_reasons(environmental_protection).
exceptional_reasons(protection_of_key_industrial_and_infrastructural_assets).
limited_period_authorisation(S) :-
    authorisation_for_derogation(_, S),
    conformity_assessment_procedure(S).
conformity_assessment_without_undue_delay(S) :-
    authorisation_for_derogation(_, S),
    without_delay.
urgency_put_into_service_without_authorisation(Authority, S) :-
    (law_enforcement_authority(Authority) ; civil_protection_authority(Authority)),
    high_risk_ai_system(S),
    duly_justified_urgency,
    exceptional_reasons(public_security),
    specific_substantial_imminent_threat_to_life_or_physical_safety.
authorisation_requested_during_or_after_use(S) :-
    urgency_put_into_service_without_authorisation(_, S),
    without_delay.
stop_use_if_authorisation_refused(S) :-
    urgency_put_into_service_without_authorisation(_, S),
    \+ authorisation_for_derogation(_, S),
    immediate_effect,
    discard_all_results_and_outputs(S).
authorisation_only_if_compliant(Authority, S) :-
    authorisation_for_derogation(Authority, S),
    concludes_compliance_with_chapter_3_section_2(Authority, S).
inform_commission_and_member_states(Authority, S) :-
    authorisation_for_derogation(Authority, S),
    \+ sensitive_operational_data_exemption(S),
    inform_commission(MemberState, authorisation(S)),
    inform_other_member_states(MemberState, authorisation(S)).
authorisation_deemed_justified(S) :-
    authorisation_for_derogation(Authority, S),
    inform_commission_and_member_states(Authority, S),
    no_objection_within(days(15), S).
commission_consultation_on_objection(S) :-
    authorisation_for_derogation(Authority, S),
    inform_commission_and_member_states(Authority, S),
    (objection_raised_by_member_state(S) ; objection_raised_by_commission(S) ; commission_considers_contrary_to_union_law(S) ; conclusion_unfounded(S)),
    without_delay.
commission_decides_justification(S) :-
    commission_consultation_on_objection(S),
    consult_operators(S),
    operators_present_views(S),
    commission_decision(S, justified).
commission_decides_justification(S) :-
    commission_consultation_on_objection(S),
    consult_operators(S),
    operators_present_views(S),
    commission_decision(S, unjustified).
withdraw_unjustified_authorisation(S) :-
    authorisation_for_derogation(Authority, S),
    commission_decides_justification(S),
    commission_decision(S, unjustified),
    withdraw_authorisation(Authority, S).
derogation_limited_for_harmonisation_products(S) :-
    high_risk_ai_system(S),
    related_to_product_covered_by_union_harmonisation_legislation(S),
    other_union_harmonisation_legislation(S),
    only_derogations_from_that_legislation_apply(S).
provenance(authorisation_for_derogation/2, 'celex:32024R1689/oj#art_46').
provenance(exceptional_reasons/1, 'celex:32024R1689/oj#art_46').
provenance(limited_period_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(conformity_assessment_without_undue_delay/1, 'celex:32024R1689/oj#art_46').
provenance(urgency_put_into_service_without_authorisation/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_requested_during_or_after_use/1, 'celex:32024R1689/oj#art_46').
provenance(stop_use_if_authorisation_refused/1, 'celex:32024R1689/oj#art_46').
provenance(authorisation_only_if_compliant/2, 'celex:32024R1689/oj#art_46').
provenance(inform_commission_and_member_states/2, 'celex:32024R1689/oj#art_46').
provenance(authorisation_deemed_justified/1, 'celex:32024R1689/oj#art_46').
provenance(commission_consultation_on_objection/1, 'celex:32024R1689/oj#art_46').
provenance(commission_decides_justification/1, 'celex:32024R1689/oj#art_46').
provenance(withdraw_unjustified_authorisation/1, 'celex:32024R1689/oj#art_46').
provenance(derogation_limited_for_harmonisation_products/1, 'celex:32024R1689/oj#art_46').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_1').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_2').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#art_46/par_3').
references('celex:32024R1689/oj#art_46', 'celex:32024R1689/oj#anx_1/sec_1').

% ==== celex:32024R1689/oj#art_47 ====
declared(must_draw_up_eu_declaration/2, 'provider must draw up EU declaration of conformity for high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_identifies/2, 'EU declaration of conformity identifies the high-risk AI system', 'celex:32024R1689/oj#art_47').
declared(submit_copy_upon_request/2, 'entity submits copy of EU declaration of conformity to national competent authority upon request', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_states_compliance/2, 'EU declaration of conformity states that high-risk AI system meets requirements of Chapter III Section 2', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_contains_information/2, 'EU declaration of conformity contains information set out in Annex V', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_of_conformity_translated/2, 'EU declaration of conformity translated into language easily understood by national competent authorities', 'celex:32024R1689/oj#art_47').
declared(single_eu_declaration_for_multiple_legislation/1, 'single EU declaration of conformity drawn up where high-risk AI system subject to other Union harmonisation legislation also requiring EU declaration', 'celex:32024R1689/oj#art_47').
declared(eu_declaration_identifies_applicable_legislation/2, 'EU declaration contains information to identify Union harmonisation legislation to which it relates', 'celex:32024R1689/oj#art_47').
declared(provider_assumes_responsibility/2, 'provider assumes responsibility for compliance by drawing up EU declaration of conformity', 'celex:32024R1689/oj#art_47').
declared(must_keep_declaration_up_to_date/2, 'provider keeps EU declaration of conformity up-to-date as appropriate', 'celex:32024R1689/oj#art_47').
declared(commission_empowered_to_amend_annex_v/0, 'Commission empowered to adopt delegated acts to amend Annex V updating content of EU declaration of conformity', 'celex:32024R1689/oj#art_47').
must_draw_up_eu_declaration(P, S) :-
    provider(P),
    high_risk_ai_system(S).
eu_declaration_of_conformity_identifies(D, S) :-
    high_risk_ai_system(S).
must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    keep_at_disposal(P, eu_declaration_of_conformity(S)),
    period(years(10), after(placed_on_market_or_put_into_service(S))).
submit_copy_upon_request(P, A) :-
    provider(P),
    national_competent_authority(A),
    from_competent_authority(request, A).
eu_declaration_of_conformity_states_compliance(D, S) :-
    high_risk_ai_system(S).
eu_declaration_of_conformity_contains_information(D, S) :-
    high_risk_ai_system(S).
eu_declaration_of_conformity_translated(D, A) :-
    national_competent_authority(A),
    easily_understood_language(D).
single_eu_declaration_for_multiple_legislation(S) :-
    high_risk_ai_system(S),
    other_union_harmonisation_legislation(S).
eu_declaration_identifies_applicable_legislation(D, L) :-
    other_union_harmonisation_legislation(L).
provider_assumes_responsibility(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    must_draw_up_eu_declaration(P, S).
must_keep_declaration_up_to_date(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    up_to_date(S).
commission_empowered_to_amend_annex_v.
placed_on_market_or_put_into_service(S) :-
    placed_on_market(S).
provenance(must_draw_up_eu_declaration/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_identifies/2, 'celex:32024R1689/oj#art_47').
provenance(submit_copy_upon_request/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_states_compliance/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_contains_information/2, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_of_conformity_translated/2, 'celex:32024R1689/oj#art_47').
provenance(single_eu_declaration_for_multiple_legislation/1, 'celex:32024R1689/oj#art_47').
provenance(eu_declaration_identifies_applicable_legislation/2, 'celex:32024R1689/oj#art_47').
provenance(provider_assumes_responsibility/2, 'celex:32024R1689/oj#art_47').
provenance(must_keep_declaration_up_to_date/2, 'celex:32024R1689/oj#art_47').
provenance(commission_empowered_to_amend_annex_v/0, 'celex:32024R1689/oj#art_47').
provenance(placed_on_market_or_put_into_service/1, 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#art_47', 'celex:32024R1689/oj#art_97').

% ==== celex:32024R1689/oj#art_48 ====
declared(ce_marking_affixed/1, 'CE marking affixed to high-risk AI system', 'celex:32024R1689/oj#art_48').
declared(ce_marking_visible_legible_indelible/1, 'CE marking affixed visibly, legibly and indelibly', 'celex:32024R1689/oj#art_48').
declared(ce_marking_on_packaging_or_documentation/1, 'CE marking affixed to packaging or accompanying documentation when not possible or warranted on the system itself', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking/1, 'digital CE marking used for high-risk AI system provided digitally', 'celex:32024R1689/oj#art_48').
declared(digital_ce_marking_accessible/1, 'digital CE marking easily accessible via interface, machine-readable code or other electronic means', 'celex:32024R1689/oj#art_48').
declared(ce_marking_followed_by_notified_body_identification_number/1, 'CE marking followed by identification number of notified body responsible for conformity assessment', 'celex:32024R1689/oj#art_48').
declared(notified_body_identification_number_affixed_by_notified_body/1, 'identification number of notified body affixed by the body itself', 'celex:32024R1689/oj#art_48').
declared(notified_body_identification_number_affixed_under_instructions/2, 'identification number of notified body affixed under its instructions by provider or authorised representative', 'celex:32024R1689/oj#art_48').
declared(notified_body_identification_number_in_promotional_material/1, 'identification number of notified body indicated in promotional material mentioning CE marking requirements fulfilled', 'celex:32024R1689/oj#art_48').
declared(ce_marking_indicates_compliance_with_other_union_law/1, 'CE marking indicates high-risk AI system also fulfils requirements of other Union law providing for CE marking', 'celex:32024R1689/oj#art_48').
declared(ce_marking_subject_to_general_principles/1, 'CE marking subject to general principles set out in Regulation 765/2008 Article 30', 'celex:32024R1689/oj#art_48').
ce_marking_subject_to_general_principles(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
ce_marking_affixed(S) :-
    high_risk_ai_system(S),
    ce_marking(S).
ce_marking_visible_legible_indelible(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    ce_marking_visible_legible_indelible(S).
ce_marking_on_packaging_or_documentation(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    \+ ce_marking_visible_legible_indelible(S),
    ce_marking_on_packaging_or_documentation(S).
digital_ce_marking(S) :-
    high_risk_ai_system(S),
    provided_digitally(S),
    digital_ce_marking(S).
digital_ce_marking_accessible(S) :-
    digital_ce_marking(S),
    digital_ce_marking_accessible(S).
ce_marking_followed_by_notified_body_identification_number(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    conformity_assessment_procedure(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    ce_marking_followed_by_notified_body_identification_number(S).
notified_body_identification_number_affixed_by_notified_body(S) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    affixed_by(B, identification_number(B), S).
notified_body_identification_number_affixed_under_instructions(S, P) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    (provider(P) ; authorised_representative(P)),
    affixed_under_instructions(B, P, identification_number(B), S).
notified_body_identification_number_in_promotional_material(S) :-
    ce_marking_followed_by_notified_body_identification_number(S),
    notified_body(B),
    responsible_for_conformity_assessment(B, S),
    promotional_material_mentions_ce_requirements(S),
    notified_body_identification_number_in_promotional_material(S).
ce_marking_indicates_compliance_with_other_union_law(S) :-
    high_risk_ai_system(S),
    ce_marking_affixed(S),
    subject_to_other_union_law_providing_ce_marking(S),
    ce_marking_indicates_compliance_with_other_union_law(S).
provenance(ce_marking_subject_to_general_principles/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_affixed/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_visible_legible_indelible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_on_packaging_or_documentation/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking/1, 'celex:32024R1689/oj#art_48').
provenance(digital_ce_marking_accessible/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_followed_by_notified_body_identification_number/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_affixed_by_notified_body/1, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_affixed_under_instructions/2, 'celex:32024R1689/oj#art_48').
provenance(notified_body_identification_number_in_promotional_material/1, 'celex:32024R1689/oj#art_48').
provenance(ce_marking_indicates_compliance_with_other_union_law/1, 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_48', 'celex:32008R0765/oj#art_30').
references('celex:32024R1689/oj#art_48', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_49 ====
declared(must_register_in_eu_database/2, 'provider or authorised representative must register themselves and their system in the EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_themselves_and_system/2, 'actor must register themselves and the system in the EU database', 'celex:32024R1689/oj#art_49').
declared(must_register_themselves_select_system_and_register_use/2, 'deployer must register themselves, select the system and register its use in the EU database', 'celex:32024R1689/oj#art_49').
declared(registration_in_secure_non_public_section/1, 'registration is in a secure non-public section of the EU database', 'celex:32024R1689/oj#art_49').
declared(registration_includes_only_specified_information/1, 'registration includes only the specified information as applicable', 'celex:32024R1689/oj#art_49').
declared(access_restricted_to_commission_and_national_authorities/1, 'access to restricted section is limited to Commission and national authorities referred to in Article 74(8)', 'celex:32024R1689/oj#art_49').
declared(registered_at_national_level/1, 'high-risk AI system is registered at national level', 'celex:32024R1689/oj#art_49').
declared(high_risk_ai_system_annex_3_point_2/1, 'high-risk AI system referred to in Annex III point 2', 'celex:32024R1689/oj#art_49').
declared(high_risk_ai_system_annex_3_point_1_6_7/1, 'high-risk AI system referred to in Annex III points 1, 6 or 7 in law enforcement, migration, asylum and border control management', 'celex:32024R1689/oj#art_49').
declared(law_enforcement_migration_asylum_border_control_area/1, 'area of law enforcement, migration, asylum and border control management', 'celex:32024R1689/oj#art_49').
must_register_in_eu_database(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(P, S) :-
    authorised_representative(P),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(P, S) :-
    provider(P),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_in_eu_database(P, S) :-
    authorised_representative(P),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).
must_register_themselves_select_system_and_register_use(D, S) :-
    deployer(D),
    used_by_public_authority_or_on_behalf(S),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_putting_into_service_or_using(S).
before_putting_into_service_or_using(S) :-
    putting_into_service(S).
before_putting_into_service_or_using(S) :-
    deployer_uses(D, S).
deployer_uses(D, S) :-
    deployer(D),
    uses(D, S).
registration_in_secure_non_public_section(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).
registration_includes_only_specified_information(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).
access_restricted_to_commission_and_national_authorities(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).
registered_at_national_level(S) :-
    high_risk_ai_system_annex_3_point_2(S).
high_risk_ai_system_annex_3_point_2(S) :-
    high_risk_ai_system(S),
    annex_3_point_2(S).
high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_1(S).
high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_6(S).
high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_7(S).
law_enforcement_migration_asylum_border_control_area(S) :-
    law_enforcement_area(S).
law_enforcement_migration_asylum_border_control_area(S) :-
    migration_area(S).
law_enforcement_migration_asylum_border_control_area(S) :-
    asylum_area(S).
law_enforcement_migration_asylum_border_control_area(S) :-
    border_control_management_area(S).
must_register_themselves_and_system(P, S) :-
    must_register_in_eu_database(P, S).
must_register_themselves_and_system(P, S) :-
    must_register_themselves_select_system_and_register_use(P, S).
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_themselves_and_system/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_themselves_select_system_and_register_use/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_includes_only_specified_information/1, 'celex:32024R1689/oj#art_49').
provenance(access_restricted_to_commission_and_national_authorities/1, 'celex:32024R1689/oj#art_49').
provenance(registered_at_national_level/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_annex_3_point_1_6_7/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_migration_asylum_border_control_area/1, 'celex:32024R1689/oj#art_49').
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
declared(must_inform_natural_person_interacting_with_ai/2, 'provider must inform natural person they are interacting with an AI system', 'celex:32024R1689/oj#art_50').
declared(obvious_interaction_with_ai/1, 'interaction with AI system is obvious from point of view of reasonably well-informed, observant and circumspect natural person', 'celex:32024R1689/oj#art_50').
declared(ai_system_authorised_by_law_for_criminal_offences/1, 'AI system authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(available_for_public_to_report_criminal_offence/1, 'AI system available for the public to report a criminal offence', 'celex:32024R1689/oj#art_50').
declared(generates_synthetic_content/1, 'AI system generates synthetic audio, image, video or text content', 'celex:32024R1689/oj#art_50').
declared(output_marked_machine_readable/1, 'output of AI system is marked in machine-readable format and detectable as artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(technical_solution_effective_interoperable_robust_reliable/1, 'technical solution is effective, interoperable, robust and reliable as far as technically feasible', 'celex:32024R1689/oj#art_50').
declared(assistive_function_standard_editing/1, 'AI system performs an assistive function for standard editing', 'celex:32024R1689/oj#art_50').
declared(does_not_substantially_alter_input/1, 'AI system does not substantially alter the input data provided by deployer or the semantics thereof', 'celex:32024R1689/oj#art_50').
declared(must_inform_of_emotion_recognition_or_biometric_categorisation/2, 'deployer must inform natural persons exposed of operation of emotion recognition or biometric categorisation system', 'celex:32024R1689/oj#art_50').
declared(processes_personal_data_in_accordance_with_gdpr/1, 'personal data processed in accordance with GDPR, LED and Data Protection Directive as applicable', 'celex:32024R1689/oj#art_50').
declared(biometric_categorisation_or_emotion_recognition_permitted_by_law/1, 'biometric categorisation or emotion recognition AI system permitted by law to detect, prevent or investigate criminal offences', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_deep_fake_content/1, 'AI system generates or manipulates image, audio or video content constituting a deep fake', 'celex:32024R1689/oj#art_50').
declared(must_disclose_deep_fake/2, 'deployer must disclose that content has been artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(deep_fake_use_authorised_by_law/1, 'use of deep fake AI system authorised by law to detect, prevent, investigate or prosecute criminal offence', 'celex:32024R1689/oj#art_50').
declared(content_forms_part_of_artistic_work/1, 'content forms part of an evidently artistic, creative, satirical, fictional or analogous work or programme', 'celex:32024R1689/oj#art_50').
declared(generates_or_manipulates_text_for_public_interest/1, 'AI system generates or manipulates text published with purpose of informing public on matters of public interest', 'celex:32024R1689/oj#art_50').
declared(must_disclose_artificially_generated_text/2, 'deployer must disclose that text has been artificially generated or manipulated', 'celex:32024R1689/oj#art_50').
declared(text_use_authorised_by_law/1, 'use of AI system for text generation authorised by law to detect, prevent, investigate or prosecute criminal offences', 'celex:32024R1689/oj#art_50').
declared(text_underwent_human_review_editorial_control/1, 'AI-generated content has undergone a process of human review or editorial control', 'celex:32024R1689/oj#art_50').
declared(editorial_responsibility_held/1, 'natural or legal person holds editorial responsibility for the publication of the content', 'celex:32024R1689/oj#art_50').
declared(information_provided_clear_distinguishable_manner/1, 'information provided to natural persons in a clear and distinguishable manner', 'celex:32024R1689/oj#art_50').
declared(information_provided_at_first_interaction_or_exposure/1, 'information provided at latest at time of first interaction or exposure', 'celex:32024R1689/oj#art_50').
declared(information_conforms_to_accessibility_requirements/1, 'information conforms to applicable accessibility requirements', 'celex:32024R1689/oj#art_50').
declared(transparency_obligations_without_prejudice_to_chapter_3/0, 'transparency obligations in Article 50 do not affect requirements and obligations in Chapter 3', 'celex:32024R1689/oj#art_50').
declared(transparency_obligations_without_prejudice_to_other_law/0, 'transparency obligations in Article 50 are without prejudice to other transparency obligations in Union or national law', 'celex:32024R1689/oj#art_50').
declared(ai_office_shall_encourage_codes_of_practice/0, 'AI Office shall encourage and facilitate drawing up of codes of practice at Union level for detection and labelling of artificially generated or manipulated content', 'celex:32024R1689/oj#art_50').
declared(commission_may_adopt_implementing_acts_approving_codes/0, 'Commission may adopt implementing acts to approve codes of practice', 'celex:32024R1689/oj#art_50').
declared(commission_may_adopt_common_rules_if_code_inadequate/0, 'Commission may adopt implementing act specifying common rules if code is not adequate', 'celex:32024R1689/oj#art_50').
must_inform_natural_person_interacting_with_ai(P, S) :-
    provider(P),
    ai_system(S),
    intended_to_interact_directly_with_natural_persons(S),
    \+ obvious_interaction_with_ai(S),
    \+ exempt_from_informing_ai_interaction(S).
intended_to_interact_directly_with_natural_persons(S) :-
    ai_system(S),
    interacts_directly_with_natural_persons(S).
exempt_from_informing_ai_interaction(S) :-
    ai_system_authorised_by_law_for_criminal_offences(S),
    \+ available_for_public_to_report_criminal_offence(S).
must_mark_synthetic_content_output(P, S) :-
    provider(P),
    ai_system(S),
    generates_synthetic_content(S),
    \+ exempt_from_marking_synthetic_content(S).
exempt_from_marking_synthetic_content(S) :-
    assistive_function_standard_editing(S).
exempt_from_marking_synthetic_content(S) :-
    does_not_substantially_alter_input(S).
exempt_from_marking_synthetic_content(S) :-
    ai_system_authorised_by_law_for_criminal_offences(S).
output_marked_machine_readable(S) :-
    generates_synthetic_content(S),
    marked_in_machine_readable_format(S),
    detectable_as_artificially_generated_or_manipulated(S).
technical_solution_effective_interoperable_robust_reliable(S) :-
    generates_synthetic_content(S),
    solution_effective(S),
    solution_interoperable(S),
    solution_robust(S),
    solution_reliable(S),
    technically_feasible(S).
must_inform_of_emotion_recognition_or_biometric_categorisation(D, S) :-
    deployer(D),
    emotion_recognition_system(S),
    \+ exempt_from_informing_emotion_recognition(S).
must_inform_of_emotion_recognition_or_biometric_categorisation(D, S) :-
    deployer(D),
    biometric_categorisation_system(S),
    \+ exempt_from_informing_biometric_categorisation(S).
exempt_from_informing_emotion_recognition(S) :-
    biometric_categorisation_or_emotion_recognition_permitted_by_law(S).
exempt_from_informing_biometric_categorisation(S) :-
    biometric_categorisation_or_emotion_recognition_permitted_by_law(S).
processes_personal_data_in_accordance_with_gdpr(S) :-
    emotion_recognition_system(S),
    personal_data_processed_in_accordance_with_regulation_2016_679(S).
processes_personal_data_in_accordance_with_gdpr(S) :-
    biometric_categorisation_system(S),
    personal_data_processed_in_accordance_with_regulation_2016_679(S).
must_disclose_deep_fake(D, S) :-
    deployer(D),
    generates_or_manipulates_deep_fake_content(S),
    \+ deep_fake_use_authorised_by_law(S),
    \+ content_forms_part_of_artistic_work(S).
must_disclose_deep_fake(D, S) :-
    deployer(D),
    generates_or_manipulates_deep_fake_content(S),
    \+ deep_fake_use_authorised_by_law(S),
    content_forms_part_of_artistic_work(S),
    disclose_existence_in_appropriate_manner(S).
must_disclose_artificially_generated_text(D, S) :-
    deployer(D),
    generates_or_manipulates_text_for_public_interest(S),
    \+ text_use_authorised_by_law(S),
    \+ text_underwent_human_review_editorial_control(S).
must_disclose_artificially_generated_text(D, S) :-
    deployer(D),
    generates_or_manipulates_text_for_public_interest(S),
    \+ text_use_authorised_by_law(S),
    text_underwent_human_review_editorial_control(S),
    editorial_responsibility_held(S).
information_provided_clear_distinguishable_manner(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    clear_and_distinguishable_manner(S).
information_provided_at_first_interaction_or_exposure(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    at_latest_at_time_of_first_interaction_or_exposure(S).
information_conforms_to_accessibility_requirements(S) :-
    ai_system(S),
    information_provided_to_natural_persons(S),
    conforms_to_applicable_accessibility_requirements(S).
transparency_obligations_without_prejudice_to_chapter_3.
transparency_obligations_without_prejudice_to_other_law.
ai_office_shall_encourage_codes_of_practice :-
    ai_office(O),
    encourage_and_facilitate_drawing_up_codes_of_practice(O).
commission_may_adopt_implementing_acts_approving_codes.
commission_may_adopt_common_rules_if_code_inadequate.
provenance(must_inform_natural_person_interacting_with_ai/2, 'celex:32024R1689/oj#art_50').
provenance(obvious_interaction_with_ai/1, 'celex:32024R1689/oj#art_50').
provenance(ai_system_authorised_by_law_for_criminal_offences/1, 'celex:32024R1689/oj#art_50').
provenance(available_for_public_to_report_criminal_offence/1, 'celex:32024R1689/oj#art_50').
provenance(generates_synthetic_content/1, 'celex:32024R1689/oj#art_50').
provenance(output_marked_machine_readable/1, 'celex:32024R1689/oj#art_50').
provenance(technical_solution_effective_interoperable_robust_reliable/1, 'celex:32024R1689/oj#art_50').
provenance(assistive_function_standard_editing/1, 'celex:32024R1689/oj#art_50').
provenance(does_not_substantially_alter_input/1, 'celex:32024R1689/oj#art_50').
provenance(must_inform_of_emotion_recognition_or_biometric_categorisation/2, 'celex:32024R1689/oj#art_50').
provenance(processes_personal_data_in_accordance_with_gdpr/1, 'celex:32024R1689/oj#art_50').
provenance(biometric_categorisation_or_emotion_recognition_permitted_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_deep_fake_content/1, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_deep_fake/2, 'celex:32024R1689/oj#art_50').
provenance(deep_fake_use_authorised_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(content_forms_part_of_artistic_work/1, 'celex:32024R1689/oj#art_50').
provenance(generates_or_manipulates_text_for_public_interest/1, 'celex:32024R1689/oj#art_50').
provenance(must_disclose_artificially_generated_text/2, 'celex:32024R1689/oj#art_50').
provenance(text_use_authorised_by_law/1, 'celex:32024R1689/oj#art_50').
provenance(text_underwent_human_review_editorial_control/1, 'celex:32024R1689/oj#art_50').
provenance(editorial_responsibility_held/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_clear_distinguishable_manner/1, 'celex:32024R1689/oj#art_50').
provenance(information_provided_at_first_interaction_or_exposure/1, 'celex:32024R1689/oj#art_50').
provenance(information_conforms_to_accessibility_requirements/1, 'celex:32024R1689/oj#art_50').
provenance(transparency_obligations_without_prejudice_to_chapter_3/0, 'celex:32024R1689/oj#art_50').
provenance(transparency_obligations_without_prejudice_to_other_law/0, 'celex:32024R1689/oj#art_50').
provenance(ai_office_shall_encourage_codes_of_practice/0, 'celex:32024R1689/oj#art_50').
provenance(commission_may_adopt_implementing_acts_approving_codes/0, 'celex:32024R1689/oj#art_50').
provenance(commission_may_adopt_common_rules_if_code_inadequate/0, 'celex:32024R1689/oj#art_50').
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
declared(high_impact_capabilities_evaluated/1, 'model has high impact capabilities evaluated on basis of appropriate technical tools and methodologies including indicators and benchmarks', 'celex:32024R1689/oj#art_51').
declared(commission_decision_equivalent_capabilities/1, 'Commission decision that model has capabilities or impact equivalent to those in point (a) having regard to criteria in Annex XIII', 'celex:32024R1689/oj#art_51').
declared(presumed_high_impact_capabilities/1, 'model presumed to have high impact capabilities pursuant to point (a)', 'celex:32024R1689/oj#art_51').
declared(cumulative_training_computation_exceeds_threshold/1, 'cumulative amount of computation used for training measured in floating point operations is greater than 10^25', 'celex:32024R1689/oj#art_51').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).
presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation_exceeds_threshold(M).
high_impact_capabilities_evaluated(M) :-
    presumed_high_impact_capabilities(M).
commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    equivalent_to_point_a_capabilities(M).
commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    equivalent_impact_to_point_a(M).
cumulative_training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    training_computation_floating_point_operations(M, F),
    F > 1e25.
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').

% ==== celex:32024R1689/oj#art_52 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model designated as presenting systemic risks', 'celex:32024R1689/oj#art_52').
declared(meets_condition_art_51_1_a/1, 'general-purpose AI model meets the condition referred to in Article 51(1)(a)', 'celex:32024R1689/oj#art_52').
declared(notified_commission/2, 'provider notified Commission about model meeting condition', 'celex:32024R1689/oj#art_52').
declared(notification_within_two_weeks/1, 'notification made within two weeks after requirement met or known', 'celex:32024R1689/oj#art_52').
declared(notification_includes_demonstration/1, 'notification includes information necessary to demonstrate requirement met', 'celex:32024R1689/oj#art_52').
declared(commission_designates_ex_officio/1, 'Commission designates model as presenting systemic risks ex officio', 'celex:32024R1689/oj#art_52').
declared(commission_designates_on_qualified_alert/1, 'Commission designates model as presenting systemic risks following qualified alert from scientific panel', 'celex:32024R1689/oj#art_52').
declared(designation_based_on_annex_13_criteria/1, 'designation based on criteria set out in Annex XIII', 'celex:32024R1689/oj#art_52').
declared(provider_presents_substantiated_arguments/2, 'provider presents sufficiently substantiated arguments that model does not present systemic risks due to specific characteristics', 'celex:32024R1689/oj#art_52').
declared(arguments_not_sufficiently_substantiated/1, 'Commission concludes arguments are not sufficiently substantiated', 'celex:32024R1689/oj#art_52').
declared(commission_rejects_arguments/1, 'Commission rejects arguments submitted by provider', 'celex:32024R1689/oj#art_52').
declared(provider_requests_reassessment/2, 'provider requests reassessment of designation with objective detailed new reasons', 'celex:32024R1689/oj#art_52').
declared(reassessment_request_contains_new_reasons/1, 'reassessment request contains objective detailed and new reasons arisen since designation', 'celex:32024R1689/oj#art_52').
declared(reassessment_earliest_six_months/1, 'reassessment may be requested at earliest six months after designation decision', 'celex:32024R1689/oj#art_52').
declared(commission_reassesses_designation/1, 'Commission reassesses whether model still presents systemic risks', 'celex:32024R1689/oj#art_52').
declared(commission_maintains_designation/1, 'Commission maintains designation as general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_52').
declared(list_of_systemic_risk_models_published/1, 'list of general-purpose AI models with systemic risk is published', 'celex:32024R1689/oj#art_52').
declared(list_kept_up_to_date/1, 'list of general-purpose AI models with systemic risk is kept up to date', 'celex:32024R1689/oj#art_52').
declared(intellectual_property_and_trade_secrets_protected/1, 'intellectual property rights and confidential business information or trade secrets protected', 'celex:32024R1689/oj#art_52').
must_notify_commission(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notified_commission(Provider, Model).
notification_within_two_weeks(Model) :-
    meets_condition_art_51_1_a(Model),
    notified_commission(_Provider, Model),
    within(weeks(2)).
notification_includes_demonstration(Model) :-
    notified_commission(_Provider, Model),
    meets_condition_art_51_1_a(Model).
must_notify_commission(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notification_within_two_weeks(Model),
    notification_includes_demonstration(Model).
commission_designates_ex_officio(Model) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    designation_based_on_annex_13_criteria(Model).
commission_designates_on_qualified_alert(Model) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    qualified_alert_scientific_panel(Alert),
    designation_based_on_annex_13_criteria(Model).
provider_presents_substantiated_arguments(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    notified_commission(Provider, Model).
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    meets_condition_art_51_1_a(Model),
    provider_presents_substantiated_arguments(_Provider, Model),
    arguments_not_sufficiently_substantiated(Model),
    commission_rejects_arguments(Model).
provider_requests_reassessment(Provider, Model) :-
    general_purpose_ai_model_provider(Provider),
    general_purpose_ai_model(Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    reassessment_request_contains_new_reasons(Model).
reassessment_earliest_six_months(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    provider_requests_reassessment(_Provider, Model),
    earliest(months(6)).
commission_reassesses_designation(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    provider_requests_reassessment(_Provider, Model),
    designation_based_on_annex_13_criteria(Model).
commission_maintains_designation(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    commission_reassesses_designation(Model).
reassessment_earliest_six_months(Model) :-
    commission_maintains_designation(Model),
    provider_requests_reassessment(_Provider, Model),
    earliest(months(6)).
list_of_systemic_risk_models_published(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model).
list_kept_up_to_date(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    list_of_systemic_risk_models_published(Model).
intellectual_property_and_trade_secrets_protected(Model) :-
    general_purpose_ai_model_with_systemic_risk(Model),
    list_of_systemic_risk_models_published(Model).
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_52').
provenance(meets_condition_art_51_1_a/1, 'celex:32024R1689/oj#art_52').
provenance(notified_commission/2, 'celex:32024R1689/oj#art_52').
provenance(notification_within_two_weeks/1, 'celex:32024R1689/oj#art_52').
provenance(notification_includes_demonstration/1, 'celex:32024R1689/oj#art_52').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_52').
provenance(commission_designates_ex_officio/1, 'celex:32024R1689/oj#art_52').
provenance(commission_designates_on_qualified_alert/1, 'celex:32024R1689/oj#art_52').
provenance(designation_based_on_annex_13_criteria/1, 'celex:32024R1689/oj#art_52').
provenance(provider_presents_substantiated_arguments/2, 'celex:32024R1689/oj#art_52').
provenance(arguments_not_sufficiently_substantiated/1, 'celex:32024R1689/oj#art_52').
provenance(commission_rejects_arguments/1, 'celex:32024R1689/oj#art_52').
provenance(provider_requests_reassessment/2, 'celex:32024R1689/oj#art_52').
provenance(reassessment_request_contains_new_reasons/1, 'celex:32024R1689/oj#art_52').
provenance(reassessment_earliest_six_months/1, 'celex:32024R1689/oj#art_52').
provenance(commission_reassesses_designation/1, 'celex:32024R1689/oj#art_52').
provenance(commission_maintains_designation/1, 'celex:32024R1689/oj#art_52').
provenance(list_of_systemic_risk_models_published/1, 'celex:32024R1689/oj#art_52').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_52').
provenance(intellectual_property_and_trade_secrets_protected/1, 'celex:32024R1689/oj#art_52').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_2').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_52', 'celex:32024R1689/oj#art_52/par_4').

% ==== celex:32024R1689/oj#art_53 ====
declared(general_purpose_ai_model_provider/1, 'provider of a general-purpose AI model', 'celex:32024R1689/oj#art_53').
declared(free_and_open_source_licence/1, 'AI model released under a free and open-source licence allowing access, usage, modification and distribution', 'celex:32024R1689/oj#art_53').
declared(model_parameters_publicly_available/1, 'model parameters including weights, architecture information and usage information are made publicly available', 'celex:32024R1689/oj#art_53').
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model with systemic risks', 'celex:32024R1689/oj#art_53').
declared(technical_documentation_gpai/1, 'technical documentation of general-purpose AI model including training and testing process and evaluation results', 'celex:32024R1689/oj#art_53').
declared(information_for_downstream_providers/1, 'information and documentation made available to providers of AI systems intending to integrate the model', 'celex:32024R1689/oj#art_53').
declared(copyright_compliance_policy/1, 'policy to comply with Union law on copyright and related rights including reservation of rights', 'celex:32024R1689/oj#art_53').
declared(training_content_summary/1, 'sufficiently detailed summary about content used for training made publicly available', 'celex:32024R1689/oj#art_53').
declared(approved_code_of_practice/1, 'code of practice approved by Commission implementing act with general validity', 'celex:32024R1689/oj#art_53').
must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_keep_technical_documentation_up_to_date(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    contains_minimum_information_annex_11(M).
must_provide_technical_documentation_upon_request(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    must_provide(P, technical_documentation(M)).
must_draw_up_information_for_downstream_providers(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_keep_information_for_downstream_providers_up_to_date(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_make_available_information_for_downstream_providers(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
information_for_downstream_providers(M) :-
    general_purpose_ai_model(M),
    enables_understanding_capabilities_limitations(M),
    contains_minimum_elements_annex_12(M).
must_observe_intellectual_property_rights(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_protect_confidential_business_information(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_put_in_place_copyright_compliance_policy(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
copyright_compliance_policy(M) :-
    general_purpose_ai_model(M),
    identifies_reservation_of_rights(M),
    complies_with_reservation_of_rights(M),
    uses_state_of_the_art_technologies(M).
must_draw_up_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_make_publicly_available_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
training_content_summary(M) :-
    general_purpose_ai_model(M),
    sufficiently_detailed(M),
    according_to_ai_office_template(M).
exempt_from_technical_documentation_obligation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ general_purpose_ai_model_with_systemic_risk(M).
exempt_from_information_for_downstream_providers_obligation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ general_purpose_ai_model_with_systemic_risk(M).
must_cooperate_with_authorities(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    ai_office(A),
    national_competent_authority(N).
may_rely_on_codes_of_practice(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    approved_code_of_practice(C).
presumption_of_conformity(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    harmonised_standard_published(S),
    covers_obligations(S, art_53_par_1).
must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).
must_treat_information_confidentially(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    information_or_documentation_obtained(M).
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_53').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(model_parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation_gpai/1, 'celex:32024R1689/oj#art_53').
provenance(information_for_downstream_providers/1, 'celex:32024R1689/oj#art_53').
provenance(copyright_compliance_policy/1, 'celex:32024R1689/oj#art_53').
provenance(training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation_upon_request/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_information_for_downstream_providers/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_information_for_downstream_providers_up_to_date/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information_for_downstream_providers/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_intellectual_property_rights/2, 'celex:32024R1689/oj#art_53').
provenance(must_protect_confidential_business_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_compliance_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_technical_documentation_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_information_for_downstream_providers_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_53').
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
declared(must_appoint_authorised_representative/2, 'third-country provider must appoint authorised representative by written mandate before placing general-purpose AI model on Union market', 'celex:32024R1689/oj#art_54').
declared(must_enable_authorised_representative/2, 'provider must enable authorised representative to perform tasks specified in mandate', 'celex:32024R1689/oj#art_54').
declared(must_perform_tasks_specified_in_mandate/2, 'authorised representative must perform tasks specified in mandate received from provider', 'celex:32024R1689/oj#art_54').
declared(must_provide_copy_of_mandate/2, 'authorised representative must provide copy of mandate to AI Office upon request in official language of Union institutions', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_verification/1, 'mandate empowers authorised representative to verify technical documentation drawn up and obligations fulfilled', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_keeping_documentation/1, 'mandate empowers authorised representative to keep technical documentation at disposal of AI Office and national competent authorities for 10 years', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_providing_information/1, 'mandate empowers authorised representative to provide AI Office with information and documentation upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_cooperation/1, 'mandate empowers authorised representative to cooperate with AI Office and competent authorities upon reasoned request', 'celex:32024R1689/oj#art_54').
declared(mandate_empowers_being_addressed/1, 'mandate empowers authorised representative to be addressed by AI Office or competent authorities on all compliance issues', 'celex:32024R1689/oj#art_54').
declared(must_terminate_mandate_if_provider_acting_contrary/1, 'authorised representative must terminate mandate if provider acting contrary to obligations', 'celex:32024R1689/oj#art_54').
declared(must_inform_ai_office_of_termination/2, 'authorised representative must immediately inform AI Office of mandate termination and reasons', 'celex:32024R1689/oj#art_54').
declared(exempt_from_authorised_representative_obligation/1, 'provider of general-purpose AI model exempt from authorised representative obligation', 'celex:32024R1689/oj#art_54').
must_appoint_authorised_representative(P, M) :-
    third_country_provider(P),
    general_purpose_ai_model_provider(P),
    before_placing_on_market(M),
    authorised_representative(A),
    written_mandate(P, A, M).
must_enable_authorised_representative(P, A) :-
    third_country_provider(P),
    general_purpose_ai_model_provider(P),
    authorised_representative(A),
    mandate(P, A, Tasks),
    must_perform_tasks_specified_in_mandate(A, Tasks).
must_perform_tasks_specified_in_mandate(A, Tasks) :-
    authorised_representative(A),
    mandate(_, A, Tasks).
must_provide_copy_of_mandate(A, ai_office) :-
    authorised_representative(A),
    mandate(_, A, M),
    upon_request(ai_office, M),
    easily_understood_language(M).
mandate_empowers_verification(M) :-
    mandate(_, _, M),
    empowers(M, verify_technical_documentation),
    empowers(M, verify_obligations_fulfilled).
mandate_empowers_keeping_documentation(M) :-
    mandate(_, _, M),
    empowers(M, keep_documentation_at_disposal(ai_office)),
    empowers(M, keep_documentation_at_disposal(national_competent_authority)),
    keep_for(years(10), after(M)),
    empowers(M, keep_contact_details(provider)).
mandate_empowers_providing_information(M) :-
    mandate(_, _, M),
    empowers(M, provide_information(ai_office)),
    from_competent_authority(reasoned_request, ai_office),
    empowers(M, provide_documentation(ai_office)).
mandate_empowers_cooperation(M) :-
    mandate(_, _, M),
    empowers(M, cooperate_with(ai_office)),
    empowers(M, cooperate_with(competent_authority)),
    from_competent_authority(reasoned_request, _).
mandate_empowers_being_addressed(M) :-
    mandate(_, _, M),
    empowers(M, be_addressed_by(ai_office)),
    empowers(M, be_addressed_by(competent_authority)),
    in_addition_to_or_instead_of(provider).
must_terminate_mandate_if_provider_acting_contrary(A) :-
    authorised_representative(A),
    mandate(P, A, M),
    acting_contrary_to_obligations(P),
    terminate_mandate(A, M).
must_inform_ai_office_of_termination(A, Reasons) :-
    authorised_representative(A),
    mandate(P, A, M),
    acting_contrary_to_obligations(P),
    terminate_mandate(A, M),
    immediately_inform(A, ai_office, termination(M, Reasons)).
exempt_from_authorised_representative_obligation(P) :-
    general_purpose_ai_model_provider(P),
    free_and_open_source_licence(P),
    publicly_available_parameters(P),
    \+ presents_systemic_risk(P).
presents_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
general_purpose_ai_model(M) :-
    general_purpose_ai_model_provider(_),
    model(M).
free_and_open_source_licence(P) :-
    general_purpose_ai_model_provider(P),
    licence(P, free_and_open_source).
publicly_available_parameters(P) :-
    general_purpose_ai_model_provider(P),
    parameters_publicly_available(P),
    weights_publicly_available(P),
    model_architecture_information_publicly_available(P),
    model_usage_information_publicly_available(P).
written_mandate(P, A, M) :-
    provider(P),
    authorised_representative(A),
    mandate(P, A, _),
    written(M).
mandate(P, A, Tasks) :-
    provider(P),
    authorised_representative(A),
    tasks(Tasks).
empowers(M, Task) :-
    mandate(_, _, M),
    task(Task).
task(verify_technical_documentation).
task(verify_obligations_fulfilled).
task(keep_documentation_at_disposal(_)).
task(keep_contact_details(_)).
task(provide_information(_)).
task(provide_documentation(_)).
task(cooperate_with(_)).
task(be_addressed_by(_)).
upon_request(ai_office, M) :-
    mandate(_, _, M).
immediately_inform(A, ai_office, termination(M, Reasons)) :-
    authorised_representative(A),
    mandate(_, A, M),
    reasons(Reasons).
terminate_mandate(A, M) :-
    authorised_representative(A),
    mandate(_, A, M).
before_placing_on_market(M) :-
    general_purpose_ai_model(M),
    placing_on_market(M).
keep_for(years(10), after(M)) :-
    general_purpose_ai_model(M).
in_addition_to_or_instead_of(provider).
from_competent_authority(reasoned_request, _).
reasons(_).
licence(P, free_and_open_source) :-
    general_purpose_ai_model_provider(P).
parameters_publicly_available(P) :-
    general_purpose_ai_model_provider(P).
weights_publicly_available(P) :-
    general_purpose_ai_model_provider(P).
model_architecture_information_publicly_available(P) :-
    general_purpose_ai_model_provider(P).
model_usage_information_publicly_available(P) :-
    general_purpose_ai_model_provider(P).
tasks(_).
provenance(must_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_enable_authorised_representative/2, 'celex:32024R1689/oj#art_54').
provenance(must_perform_tasks_specified_in_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(must_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_verification/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_keeping_documentation/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_providing_information/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_cooperation/1, 'celex:32024R1689/oj#art_54').
provenance(mandate_empowers_being_addressed/1, 'celex:32024R1689/oj#art_54').
provenance(must_terminate_mandate_if_provider_acting_contrary/1, 'celex:32024R1689/oj#art_54').
provenance(must_inform_ai_office_of_termination/2, 'celex:32024R1689/oj#art_54').
provenance(exempt_from_authorised_representative_obligation/1, 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_54', 'celex:32024R1689/oj#art_54').

% ==== celex:32024R1689/oj#art_55 ====
declared(general_purpose_ai_model_with_systemic_risk/1, 'general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_55').
declared(model_evaluation/1, 'model evaluation performed in accordance with standardised protocols and tools', 'celex:32024R1689/oj#art_55').
declared(adversarial_testing/1, 'adversarial testing of the model conducted and documented', 'celex:32024R1689/oj#art_55').
declared(systemic_risk_assessment_at_union_level/1, 'assessment and mitigation of possible systemic risks at Union level', 'celex:32024R1689/oj#art_55').
declared(track_document_report_serious_incidents/2, 'provider keeps track of, documents, and reports serious incidents and corrective measures', 'celex:32024R1689/oj#art_55').
declared(adequate_cybersecurity_protection/1, 'adequate level of cybersecurity protection for model and physical infrastructure', 'celex:32024R1689/oj#art_55').
declared(may_rely_on_codes_of_practice/1, 'provider may rely on codes of practice to demonstrate compliance', 'celex:32024R1689/oj#art_55').
declared(presumption_of_conformity/1, 'compliance with European harmonised standards grants presumption of conformity', 'celex:32024R1689/oj#art_55').
declared(must_demonstrate_alternative_compliance/1, 'provider who does not adhere to code of practice or harmonised standard must demonstrate alternative adequate means of compliance', 'celex:32024R1689/oj#art_55').
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).
must_perform_model_evaluation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    model_evaluation(M),
    adversarial_testing(M).
must_assess_and_mitigate_systemic_risks(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    systemic_risk_assessment_at_union_level(M).
must_track_document_report_serious_incidents(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    track_document_report_serious_incidents(P, M),
    without_delay(reporting).
must_ensure_adequate_cybersecurity(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    adequate_cybersecurity_protection(M).
may_rely_on_codes_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    approved_code_of_practice(C),
    relies_on(P, C).
presumption_of_conformity(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    harmonised_standard_published(S),
    covers(S, obligations_of_art_55_par_1).
must_demonstrate_alternative_compliance(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    \+ adheres_to_approved_code_of_practice(P),
    \+ complies_with_european_harmonised_standard(P).
must_treat_information_confidentially(P, Info) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    information_or_documentation_obtained(Info, M),
    trade_secret(Info).
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(adversarial_testing/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_assessment_at_union_level/1, 'celex:32024R1689/oj#art_55').
provenance(track_document_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(adequate_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_track_document_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_adequate_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_56 ====
declared(must_encourage_and_facilitate_codes_of_practice/1, 'AI Office encourages and facilitates drawing up of codes of practice at Union level', 'celex:32024R1689/oj#art_56').
declared(must_aim_to_ensure_codes_cover_obligations/2, 'AI Office and Board aim to ensure codes of practice cover obligations from specified articles', 'celex:32024R1689/oj#art_56').
declared(codes_of_practice_cover_issue/2, 'codes of practice cover a specific issue', 'celex:32024R1689/oj#art_56').
declared(may_invite_participants/1, 'AI Office may invite providers and national competent authorities to participate in drawing up codes of practice', 'celex:32024R1689/oj#art_56').
declared(may_support_process/1, 'stakeholder may support the process of drawing up codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_aim_to_ensure_codes_set_objectives/1, 'AI Office and Board aim to ensure codes clearly set out specific objectives with commitments and key performance indicators', 'celex:32024R1689/oj#art_56').
declared(must_aim_to_ensure_regular_reporting/1, 'AI Office aims to ensure participants report regularly on implementation of commitments', 'celex:32024R1689/oj#art_56').
declared(must_monitor_and_evaluate_codes/1, 'AI Office and Board regularly monitor and evaluate achievement of objectives of codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_publish_assessment/1, 'AI Office and Board publish their assessment of adequacy of codes of practice', 'celex:32024R1689/oj#art_56').
declared(may_approve_code_of_practice/1, 'Commission may approve a code of practice and give it general validity within the Union', 'celex:32024R1689/oj#art_56').
declared(may_invite_providers_to_adhere/1, 'AI Office may invite providers of general-purpose AI models to adhere to codes of practice', 'celex:32024R1689/oj#art_56').
declared(adherence_limited_to_obligations/2, 'adherence of provider without systemic risks may be limited to obligations of specified article', 'celex:32024R1689/oj#art_56').
declared(must_encourage_review_and_adaptation/1, 'AI Office encourages and facilitates review and adaptation of codes of practice', 'celex:32024R1689/oj#art_56').
declared(must_assist_assessment_of_standards/1, 'AI Office assists in assessment of available standards', 'celex:32024R1689/oj#art_56').
declared(codes_of_practice_ready_by/1, 'codes of practice ready by specified deadline', 'celex:32024R1689/oj#art_56').
declared(must_take_necessary_steps_for_codes/1, 'AI Office takes necessary steps including inviting providers to ensure codes are ready', 'celex:32024R1689/oj#art_56').
declared(may_provide_common_rules/1, 'Commission may provide common rules by implementing acts if code cannot be finalised or is not adequate', 'celex:32024R1689/oj#art_56').
must_encourage_and_facilitate_codes_of_practice(ai_office).
must_aim_to_ensure_codes_cover_obligations(ai_office, obligations(art_53, art_55)).
must_aim_to_ensure_codes_cover_obligations(board, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, information_kept_up_to_date) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, adequate_detail_training_summary) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, identification_systemic_risks_union_level) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
codes_of_practice_cover_issue(C, measures_assessment_management_systemic_risks) :-
    codes_of_practice(C),
    covers_obligations(C, obligations(art_53, art_55)).
may_invite_participants(ai_office).
may_support_process(civil_society_organisation).
may_support_process(industry).
may_support_process(academia).
may_support_process(downstream_provider).
may_support_process(independent_expert).
must_aim_to_ensure_codes_set_objectives(ai_office).
must_aim_to_ensure_codes_set_objectives(board).
must_aim_to_ensure_regular_reporting(ai_office).
must_monitor_and_evaluate_codes(ai_office).
must_monitor_and_evaluate_codes(board).
must_publish_assessment(ai_office).
must_publish_assessment(board).
may_approve_code_of_practice(commission).
may_invite_providers_to_adhere(ai_office).
adherence_limited_to_obligations(P, art_53) :-
    general_purpose_ai_model_provider(P),
    \+ presents_systemic_risk(P).
must_encourage_review_and_adaptation(ai_office).
must_assist_assessment_of_standards(ai_office).
codes_of_practice_ready_by(date(2025, may, 2)).
must_take_necessary_steps_for_codes(ai_office).
may_provide_common_rules(commission).
provenance(must_encourage_and_facilitate_codes_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_codes_cover_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_cover_issue/2, 'celex:32024R1689/oj#art_56').
provenance(may_invite_participants/1, 'celex:32024R1689/oj#art_56').
provenance(may_support_process/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_codes_set_objectives/1, 'celex:32024R1689/oj#art_56').
provenance(must_aim_to_ensure_regular_reporting/1, 'celex:32024R1689/oj#art_56').
provenance(must_monitor_and_evaluate_codes/1, 'celex:32024R1689/oj#art_56').
provenance(must_publish_assessment/1, 'celex:32024R1689/oj#art_56').
provenance(may_approve_code_of_practice/1, 'celex:32024R1689/oj#art_56').
provenance(may_invite_providers_to_adhere/1, 'celex:32024R1689/oj#art_56').
provenance(adherence_limited_to_obligations/2, 'celex:32024R1689/oj#art_56').
provenance(must_encourage_review_and_adaptation/1, 'celex:32024R1689/oj#art_56').
provenance(must_assist_assessment_of_standards/1, 'celex:32024R1689/oj#art_56').
provenance(codes_of_practice_ready_by/1, 'celex:32024R1689/oj#art_56').
provenance(must_take_necessary_steps_for_codes/1, 'celex:32024R1689/oj#art_56').
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
declared(must_establish_ai_regulatory_sandbox/1, 'Member State must ensure its competent authorities establish at least one AI regulatory sandbox at national level', 'celex:32024R1689/oj#art_57').
declared(ai_regulatory_sandbox_operational_by/2, 'AI regulatory sandbox operational by a given date', 'celex:32024R1689/oj#art_57').
declared(sandbox_established_jointly/1, 'AI regulatory sandbox established jointly with competent authorities of other Member States', 'celex:32024R1689/oj#art_57').
declared(commission_may_provide_support/1, 'Commission may provide technical support, advice and tools for establishment and operation of AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(obligation_fulfilled_by_participation/2, 'obligation to establish sandbox fulfilled by participating in existing sandbox providing equivalent national coverage', 'celex:32024R1689/oj#art_57').
declared(equivalent_national_coverage/2, 'participation in existing sandbox provides equivalent level of national coverage for participating Member State', 'celex:32024R1689/oj#art_57').
declared(additional_sandbox_may_be_established/1, 'additional AI regulatory sandbox at regional or local level or jointly with other Member States may be established', 'celex:32024R1689/oj#art_57').
declared(edps_may_establish_sandbox/1, 'European Data Protection Supervisor may establish AI regulatory sandbox for Union institutions, bodies, offices and agencies', 'celex:32024R1689/oj#art_57').
declared(edps_exercises_roles_of_national_competent_authority/1, 'EDPS exercises roles and tasks of national competent authorities', 'celex:32024R1689/oj#art_57').
declared(must_allocate_sufficient_resources/2, 'Member State must ensure competent authorities allocate sufficient resources to comply with Article 57 effectively and in a timely manner', 'celex:32024R1689/oj#art_57').
declared(national_competent_authorities_cooperate/1, 'national competent authorities cooperate with other relevant authorities where appropriate', 'celex:32024R1689/oj#art_57').
declared(may_allow_involvement_of_other_actors/1, 'national competent authorities may allow involvement of other actors within the AI ecosystem', 'celex:32024R1689/oj#art_57').
declared(article_57_does_not_affect_other_sandboxes/1, 'Article 57 does not affect other regulatory sandboxes established under Union or national law', 'celex:32024R1689/oj#art_57').
declared(must_ensure_cooperation_between_sandbox_authorities/1, 'Member States ensure appropriate level of cooperation between authorities supervising other sandboxes and national competent authorities', 'celex:32024R1689/oj#art_57').
declared(sandbox_provides_controlled_environment/1, 'AI regulatory sandbox provides controlled environment fostering innovation and facilitating development, training, testing and validation of innovative AI systems for limited time before placing on market or putting into service', 'celex:32024R1689/oj#art_57').
declared(sandbox_plan_agreed/2, 'specific sandbox plan agreed between providers or prospective providers and competent authority', 'celex:32024R1689/oj#art_57').
declared(sandbox_may_include_real_world_testing/1, 'sandbox may include testing in real world conditions supervised therein', 'celex:32024R1689/oj#art_57').
declared(competent_authority_provides_guidance_supervision_support/1, 'competent authorities provide guidance, supervision and support within sandbox to identify risks to fundamental rights, health and safety, testing, mitigation measures and their effectiveness', 'celex:32024R1689/oj#art_57').
declared(competent_authority_provides_guidance_on_regulatory_expectations/1, 'competent authorities provide guidance on regulatory expectations and how to fulfil requirements and obligations', 'celex:32024R1689/oj#art_57').
declared(must_provide_written_proof/2, 'upon request, competent authority provides written proof of activities successfully carried out in sandbox', 'celex:32024R1689/oj#art_57').
declared(must_provide_exit_report/2, 'competent authority provides exit report detailing activities, results and learning outcomes', 'celex:32024R1689/oj#art_57').
declared(provider_may_use_documentation_to_demonstrate_compliance/2, 'providers may use exit reports and written proof to demonstrate compliance through conformity assessment or market surveillance', 'celex:32024R1689/oj#art_57').
declared(exit_reports_taken_positively_into_account/1, 'exit reports and written proof taken positively into account by market surveillance authorities and notified bodies to accelerate conformity assessment', 'celex:32024R1689/oj#art_57').
declared(commission_and_board_authorised_to_access_exit_reports/1, 'Commission and Board authorised to access exit reports subject to confidentiality provisions and with agreement of provider', 'celex:32024R1689/oj#art_57').
declared(exit_report_may_be_made_publicly_available/1, 'exit report may be made publicly available through single information platform if provider and national competent authority explicitly agree', 'celex:32024R1689/oj#art_57').
declared(objective_improving_legal_certainty/1, 'sandbox aims to improve legal certainty to achieve regulatory compliance', 'celex:32024R1689/oj#art_57').
declared(objective_supporting_sharing_best_practices/1, 'sandbox aims to support sharing of best practices through cooperation', 'celex:32024R1689/oj#art_57').
declared(objective_fostering_innovation_and_competitiveness/1, 'sandbox aims to foster innovation and competitiveness and facilitate development of AI ecosystem', 'celex:32024R1689/oj#art_57').
declared(objective_contributing_to_evidence_based_regulatory_learning/1, 'sandbox aims to contribute to evidence-based regulatory learning', 'celex:32024R1689/oj#art_57').
declared(objective_facilitating_access_to_union_market/1, 'sandbox aims to facilitate and accelerate access to Union market for AI systems, in particular when provided by SMEs including start-ups', 'celex:32024R1689/oj#art_57').
declared(must_associate_data_protection_authorities/1, 'national competent authorities ensure national data protection authorities and other relevant authorities are associated with operation of sandbox and involved in supervision of personal data processing aspects', 'celex:32024R1689/oj#art_57').
declared(sandbox_does_not_affect_supervisory_powers/1, 'AI regulatory sandboxes do not affect supervisory or corrective powers of competent authorities', 'celex:32024R1689/oj#art_57').
declared(significant_risks_require_adequate_mitigation/1, 'any significant risks to health and safety and fundamental rights identified during development and testing result in adequate mitigation', 'celex:32024R1689/oj#art_57').
declared(may_suspend_testing_or_participation/1, 'national competent authorities have power to temporarily or permanently suspend testing process or participation in sandbox if no effective mitigation is possible', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_of_suspension/2, 'national competent authorities inform AI Office of decision to suspend testing or participation', 'celex:32024R1689/oj#art_57').
declared(supervisory_powers_exercised_within_limits_of_law/1, 'national competent authorities exercise supervisory powers within limits of relevant law using discretionary powers to support innovation', 'celex:32024R1689/oj#art_57').
declared(provider_remains_liable_for_damage/1, 'providers and prospective providers participating in sandbox remain liable under applicable Union and national liability law for damage inflicted on third parties', 'celex:32024R1689/oj#art_57').
declared(no_administrative_fines_if_conditions_met/1, 'no administrative fines imposed for infringements of AI Act provided prospective providers observe specific plan, terms and conditions, and follow guidance in good faith', 'celex:32024R1689/oj#art_57').
declared(no_administrative_fines_for_other_law_if_authorities_involved/1, 'no administrative fines imposed regarding other Union and national law where other competent authorities were actively involved in supervision and provided guidance', 'celex:32024R1689/oj#art_57').
declared(sandbox_facilitates_cross_border_cooperation/1, 'AI regulatory sandboxes designed and implemented to facilitate cross-border cooperation between national competent authorities where relevant', 'celex:32024R1689/oj#art_57').
declared(must_coordinate_and_cooperate_within_board/1, 'national competent authorities coordinate their activities and cooperate within the framework of the Board', 'celex:32024R1689/oj#art_57').
declared(must_inform_ai_office_and_board_of_establishment/1, 'national competent authorities inform AI Office and Board of establishment of a sandbox', 'celex:32024R1689/oj#art_57').
declared(may_ask_for_support_and_guidance/1, 'national competent authorities may ask AI Office and Board for support and guidance', 'celex:32024R1689/oj#art_57').
declared(ai_office_makes_list_publicly_available/1, 'AI Office makes publicly available a list of planned and existing sandboxes and keeps it up to date', 'celex:32024R1689/oj#art_57').
declared(must_submit_annual_reports/1, 'national competent authorities submit annual reports to AI Office and Board from one year after establishment and every year thereafter until termination, and a final report', 'celex:32024R1689/oj#art_57').
declared(annual_reports_contain_progress_results_best_practices/1, 'annual reports provide information on progress and results, including best practices, incidents, lessons learnt and recommendations', 'celex:32024R1689/oj#art_57').
declared(must_make_annual_reports_available_to_public/1, 'national competent authorities make annual reports or abstracts thereof available to the public, online', 'celex:32024R1689/oj#art_57').
declared(commission_takes_annual_reports_into_account/1, 'Commission takes annual reports into account when exercising its tasks under the AI Act where appropriate', 'celex:32024R1689/oj#art_57').
declared(must_develop_single_dedicated_interface/1, 'Commission develops single and dedicated interface containing all relevant information related to AI regulatory sandboxes', 'celex:32024R1689/oj#art_57').
declared(interface_allows_stakeholder_interaction/1, 'interface allows stakeholders to interact with sandboxes, raise enquiries, and seek non-binding guidance on conformity of innovative products, services, business models', 'celex:32024R1689/oj#art_57').
declared(commission_proactively_coordinates_with_national_authorities/1, 'Commission proactively coordinates with national competent authorities where relevant', 'celex:32024R1689/oj#art_57').
must_establish_ai_regulatory_sandbox(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    ai_regulatory_sandbox(Sandbox),
    established_by(Authority, Sandbox, MemberState).
ai_regulatory_sandbox_operational_by(Sandbox, date(2026, 8, 2)) :-
    ai_regulatory_sandbox(Sandbox),
    must_establish_ai_regulatory_sandbox(_MemberState).
sandbox_established_jointly(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    established_by(Authority1, Sandbox, MemberState1),
    established_by(Authority2, Sandbox, MemberState2),
    member_state(MemberState1),
    member_state(MemberState2),
    MemberState1 \= MemberState2,
    national_competent_authority(Authority1),
    national_competent_authority(Authority2).
commission_may_provide_support(Support) :-
    support_for_sandbox_establishment(Support).
obligation_fulfilled_by_participation(MemberState, ExistingSandbox) :-
    member_state(MemberState),
    ai_regulatory_sandbox(ExistingSandbox),
    participates_in(MemberState, ExistingSandbox),
    equivalent_national_coverage(ExistingSandbox, MemberState).
equivalent_national_coverage(Sandbox, MemberState) :-
    ai_regulatory_sandbox(Sandbox),
    member_state(MemberState),
    provides_national_coverage(Sandbox, MemberState).
additional_sandbox_may_be_established(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    regional_or_local_level(Sandbox).
additional_sandbox_may_be_established(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    sandbox_established_jointly(Sandbox).
edps_may_establish_sandbox(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    for_union_institutions(Sandbox).
edps_exercises_roles_of_national_competent_authority(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    edps_may_establish_sandbox(Sandbox).
must_allocate_sufficient_resources(MemberState, Authority) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    supervises_sandbox(Authority, _Sandbox),
    sufficient_resources(Authority).
national_competent_authorities_cooperate(Authority) :-
    national_competent_authority(Authority),
    cooperates_with_other_relevant_authorities(Authority).
may_allow_involvement_of_other_actors(Authority) :-
    national_competent_authority(Authority),
    allows_involvement_of_other_ai_ecosystem_actors(Authority).
article_57_does_not_affect_other_sandboxes(Sandbox) :-
    regulatory_sandbox(Sandbox),
    \+ ai_regulatory_sandbox(Sandbox).
must_ensure_cooperation_between_sandbox_authorities(MemberState) :-
    member_state(MemberState),
    ensures_cooperation(MemberState, _OtherSandboxAuthority, _NationalCompetentAuthority).
sandbox_provides_controlled_environment(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    controlled_environment(Sandbox),
    fosters_innovation(Sandbox),
    facilitates_development_training_testing_validation(Sandbox),
    limited_time_before_placing_on_market_or_putting_into_service(Sandbox).
sandbox_plan_agreed(Sandbox, Provider) :-
    ai_regulatory_sandbox(Sandbox),
    provider(Provider),
    specific_sandbox_plan(Plan),
    agreed_between(Plan, Provider, _CompetentAuthority).
sandbox_plan_agreed(Sandbox, ProspectiveProvider) :-
    ai_regulatory_sandbox(Sandbox),
    prospective_provider(ProspectiveProvider),
    specific_sandbox_plan(Plan),
    agreed_between(Plan, ProspectiveProvider, _CompetentAuthority).
sandbox_may_include_real_world_testing(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    testing_in_real_world_conditions(Testing),
    supervised_within_sandbox(Testing, Sandbox).
competent_authority_provides_guidance_supervision_support(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    provides_guidance_supervision_support(Authority, Sandbox),
    identifies_risks_to_fundamental_rights_health_safety(Authority, Sandbox).
competent_authority_provides_guidance_on_regulatory_expectations(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    provides_guidance_on_regulatory_expectations(Authority, Sandbox).
must_provide_written_proof(Authority, Provider) :-
    national_competent_authority(Authority),
    provider(Provider),
    participates_in_sandbox(Provider, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    supervises_sandbox(Authority, Sandbox),
    requested_by(Provider, written_proof).
must_provide_exit_report(Authority, _Provider) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    provides_exit_report(Authority, Sandbox).
provider_may_use_documentation_to_demonstrate_compliance(Provider, Documentation) :-
    provider(Provider),
    documentation_from_sandbox(Documentation),
    may_use_to_demonstrate_compliance(Provider, Documentation).
exit_reports_taken_positively_into_account(Documentation) :-
    documentation_from_sandbox(Documentation),
    taken_positively_into_account_by_market_surveillance_authorities(Documentation),
    taken_positively_into_account_by_notified_bodies(Documentation),
    accelerates_conformity_assessment(Documentation).
commission_and_board_authorised_to_access_exit_reports(Documentation) :-
    documentation_from_sandbox(Documentation),
    exit_report(Documentation),
    subject_to_confidentiality_provisions(Documentation),
    agreed_by_provider(Documentation),
    authorised_access_by_commission_and_board(Documentation).
exit_report_may_be_made_publicly_available(Documentation) :-
    exit_report(Documentation),
    documentation_from_sandbox(Documentation),
    explicitly_agreed_by_provider(Documentation),
    explicitly_agreed_by_national_competent_authority(Documentation),
    made_publicly_available_through_single_information_platform(Documentation).
objective_improving_legal_certainty(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    aims_to_improve_legal_certainty(Sandbox).
objective_supporting_sharing_best_practices(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    aims_to_support_sharing_best_practices(Sandbox).
objective_fostering_innovation_and_competitiveness(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    aims_to_foster_innovation_and_competitiveness(Sandbox).
objective_contributing_to_evidence_based_regulatory_learning(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    aims_to_contribute_to_evidence_based_regulatory_learning(Sandbox).
objective_facilitating_access_to_union_market(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    aims_to_facilitate_access_to_union_market(Sandbox),
    particularly_for_smes_including_start_ups(Sandbox).
must_associate_data_protection_authorities(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    involves_personal_data_processing(Sandbox),
    ensures_association_of_data_protection_authorities(Authority, Sandbox),
    ensures_involvement_in_supervision(Authority, Sandbox).
must_associate_data_protection_authorities(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    falls_under_supervisory_remit_of_other_authorities(Sandbox),
    ensures_association_of_other_authorities(Authority, Sandbox),
    ensures_involvement_in_supervision(Authority, Sandbox).
sandbox_does_not_affect_supervisory_powers(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    \+ affects_supervisory_or_corrective_powers(Sandbox).
significant_risks_require_adequate_mitigation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    significant_risks_identified(Sandbox, Risks),
    risk_to_health_safety_fundamental_rights(Risks),
    adequate_mitigation(Risks, Sandbox).
may_suspend_testing_or_participation(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    no_effective_mitigation_possible(Sandbox),
    has_power_to_suspend(Authority, Sandbox).
must_inform_ai_office_of_suspension(Authority, Sandbox) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    suspends_testing_or_participation(Authority, Sandbox),
    ai_office(Office),
    informs(Authority, Office, suspension(Sandbox)).
supervisory_powers_exercised_within_limits_of_law(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    exercises_powers_within_limits_of_relevant_law(Authority, Sandbox),
    uses_discretionary_powers(Authority, Sandbox),
    objective_supporting_innovation_in_ai(Authority, Sandbox).
provider_remains_liable_for_damage(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    provider_participates(Provider, Sandbox),
    liable_for_damage_to_third_parties(Provider, Sandbox).
provider_remains_liable_for_damage(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    prospective_provider_participates(ProspectiveProvider, Sandbox),
    liable_for_damage_to_third_parties(ProspectiveProvider, Sandbox).
no_administrative_fines_if_conditions_met(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    prospective_provider_participates(ProspectiveProvider, Sandbox),
    observes_specific_plan(ProspectiveProvider, Sandbox),
    observes_terms_and_conditions(ProspectiveProvider, Sandbox),
    follows_guidance_in_good_faith(ProspectiveProvider, Sandbox),
    \+ administrative_fines_imposed(Sandbox, ProspectiveProvider).
no_administrative_fines_for_other_law_if_authorities_involved(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    other_competent_authorities_actively_involved(Sandbox),
    provided_guidance_for_compliance(Sandbox),
    \+ administrative_fines_imposed_for_other_law(Sandbox).
sandbox_facilitates_cross_border_cooperation(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    designed_to_facilitate_cross_border_cooperation(Sandbox).
must_coordinate_and_cooperate_within_board(Authority) :-
    national_competent_authority(Authority),
    coordinates_activities_within_board(Authority),
    cooperates_within_framework_of_board(Authority).
must_inform_ai_office_and_board_of_establishment(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    informs_ai_office_and_board(Authority, establishment(Sandbox)).
may_ask_for_support_and_guidance(Authority) :-
    national_competent_authority(Authority),
    may_ask_ai_office_and_board(Authority, support_and_guidance).
ai_office_makes_list_publicly_available(List) :-
    list_of_planned_and_existing_sandboxes(List),
    made_publicly_available_by_ai_office(List),
    kept_up_to_date(List).
must_submit_annual_reports(Authority) :-
    national_competent_authority(Authority),
    supervises_sandbox(Authority, Sandbox),
    ai_regulatory_sandbox(Sandbox),
    submits_annual_reports(Authority, Sandbox),
    submits_final_report(Authority, Sandbox).
annual_reports_contain_progress_results_best_practices(Report) :-
    annual_report(Report),
    contains_progress_and_results(Report),
    contains_best_practices(Report),
    contains_incidents(Report),
    contains_lessons_learnt(Report),
    contains_recommendations(Report).
must_make_annual_reports_available_to_public(Authority) :-
    national_competent_authority(Authority),
    annual_report(Report),
    submitted_by(Authority, Report),
    made_available_to_public_online(Report).
must_make_annual_reports_available_to_public(Authority) :-
    national_competent_authority(Authority),
    annual_report(Report),
    submitted_by(Authority, Report),
    abstract(Report),
    made_available_to_public_online(Report).
commission_takes_annual_reports_into_account(Report) :-
    annual_report(Report),
    taken_into_account_by_commission(Report).
must_develop_single_dedicated_interface(Interface) :-
    single_dedicated_interface(Interface),
    contains_all_relevant_information_related_to_sandboxes(Interface),
    developed_by_commission(Interface).
interface_allows_stakeholder_interaction(Interface) :-
    single_dedicated_interface(Interface),
    allows_stakeholders_to_interact_with_sandboxes(Interface),
    allows_raising_enquiries_with_competent_authorities(Interface),
    allows_seeking_non_binding_guidance(Interface).
commission_proactively_coordinates_with_national_authorities(Commission) :-
    proactively_coordinates_with_national_competent_authorities(Commission).
provenance(must_establish_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(ai_regulatory_sandbox_operational_by/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_established_jointly/1, 'celex:32024R1689/oj#art_57').
provenance(commission_may_provide_support/1, 'celex:32024R1689/oj#art_57').
provenance(obligation_fulfilled_by_participation/2, 'celex:32024R1689/oj#art_57').
provenance(equivalent_national_coverage/2, 'celex:32024R1689/oj#art_57').
provenance(additional_sandbox_may_be_established/1, 'celex:32024R1689/oj#art_57').
provenance(edps_may_establish_sandbox/1, 'celex:32024R1689/oj#art_57').
provenance(edps_exercises_roles_of_national_competent_authority/1, 'celex:32024R1689/oj#art_57').
provenance(must_allocate_sufficient_resources/2, 'celex:32024R1689/oj#art_57').
provenance(national_competent_authorities_cooperate/1, 'celex:32024R1689/oj#art_57').
provenance(may_allow_involvement_of_other_actors/1, 'celex:32024R1689/oj#art_57').
provenance(article_57_does_not_affect_other_sandboxes/1, 'celex:32024R1689/oj#art_57').
provenance(must_ensure_cooperation_between_sandbox_authorities/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_provides_controlled_environment/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_plan_agreed/2, 'celex:32024R1689/oj#art_57').
provenance(sandbox_may_include_real_world_testing/1, 'celex:32024R1689/oj#art_57').
provenance(competent_authority_provides_guidance_supervision_support/1, 'celex:32024R1689/oj#art_57').
provenance(competent_authority_provides_guidance_on_regulatory_expectations/1, 'celex:32024R1689/oj#art_57').
provenance(must_provide_written_proof/2, 'celex:32024R1689/oj#art_57').
provenance(must_provide_exit_report/2, 'celex:32024R1689/oj#art_57').
provenance(provider_may_use_documentation_to_demonstrate_compliance/2, 'celex:32024R1689/oj#art_57').
provenance(exit_reports_taken_positively_into_account/1, 'celex:32024R1689/oj#art_57').
provenance(commission_and_board_authorised_to_access_exit_reports/1, 'celex:32024R1689/oj#art_57').
provenance(exit_report_may_be_made_publicly_available/1, 'celex:32024R1689/oj#art_57').
provenance(objective_improving_legal_certainty/1, 'celex:32024R1689/oj#art_57').
provenance(objective_supporting_sharing_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(objective_fostering_innovation_and_competitiveness/1, 'celex:32024R1689/oj#art_57').
provenance(objective_contributing_to_evidence_based_regulatory_learning/1, 'celex:32024R1689/oj#art_57').
provenance(objective_facilitating_access_to_union_market/1, 'celex:32024R1689/oj#art_57').
provenance(must_associate_data_protection_authorities/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_does_not_affect_supervisory_powers/1, 'celex:32024R1689/oj#art_57').
provenance(significant_risks_require_adequate_mitigation/1, 'celex:32024R1689/oj#art_57').
provenance(may_suspend_testing_or_participation/1, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_of_suspension/2, 'celex:32024R1689/oj#art_57').
provenance(supervisory_powers_exercised_within_limits_of_law/1, 'celex:32024R1689/oj#art_57').
provenance(provider_remains_liable_for_damage/1, 'celex:32024R1689/oj#art_57').
provenance(no_administrative_fines_if_conditions_met/1, 'celex:32024R1689/oj#art_57').
provenance(no_administrative_fines_for_other_law_if_authorities_involved/1, 'celex:32024R1689/oj#art_57').
provenance(sandbox_facilitates_cross_border_cooperation/1, 'celex:32024R1689/oj#art_57').
provenance(must_coordinate_and_cooperate_within_board/1, 'celex:32024R1689/oj#art_57').
provenance(must_inform_ai_office_and_board_of_establishment/1, 'celex:32024R1689/oj#art_57').
provenance(may_ask_for_support_and_guidance/1, 'celex:32024R1689/oj#art_57').
provenance(ai_office_makes_list_publicly_available/1, 'celex:32024R1689/oj#art_57').
provenance(must_submit_annual_reports/1, 'celex:32024R1689/oj#art_57').
provenance(annual_reports_contain_progress_results_best_practices/1, 'celex:32024R1689/oj#art_57').
provenance(must_make_annual_reports_available_to_public/1, 'celex:32024R1689/oj#art_57').
provenance(commission_takes_annual_reports_into_account/1, 'celex:32024R1689/oj#art_57').
provenance(must_develop_single_dedicated_interface/1, 'celex:32024R1689/oj#art_57').
provenance(interface_allows_stakeholder_interaction/1, 'celex:32024R1689/oj#art_57').
provenance(commission_proactively_coordinates_with_national_authorities/1, 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1/unp_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#chp_6').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_1').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57/par_2').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_57').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_57', 'celex:32024R1689/oj#art_62/par_1/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_58 ====
declared(must_adopt_implementing_acts/2, 'Commission must adopt implementing acts specifying detailed arrangements for AI regulatory sandboxes', 'celex:32024R1689/oj#art_58').
declared(implementing_acts_include_common_principles/1, 'implementing acts include common principles on specified issues', 'celex:32024R1689/oj#art_58').
declared(common_principles_on_eligibility_selection/1, 'common principles on eligibility and selection criteria for participation', 'celex:32024R1689/oj#art_58').
declared(common_principles_on_procedures/1, 'common principles on procedures for application, participation, monitoring, exiting and termination including sandbox plan and exit report', 'celex:32024R1689/oj#art_58').
declared(common_principles_on_terms_conditions/1, 'common principles on terms and conditions applicable to participants', 'celex:32024R1689/oj#art_58').
declared(sandbox_open_to_applying_provider/1, 'AI regulatory sandbox open to any applying provider or prospective provider fulfilling eligibility and selection criteria', 'celex:32024R1689/oj#art_58').
declared(eligibility_selection_criteria_transparent_fair/1, 'eligibility and selection criteria are transparent and fair', 'celex:32024R1689/oj#art_58').
declared(inform_applicant_within_three_months/2, 'national competent authority informs applicant of decision within three months of application', 'celex:32024R1689/oj#art_58').
declared(sandbox_allows_broad_equal_access/1, 'AI regulatory sandbox allows broad and equal access and keeps up with demand for participation', 'celex:32024R1689/oj#art_58').
declared(application_in_partnership/1, 'providers and prospective providers may submit applications in partnerships with deployers and other relevant third parties', 'celex:32024R1689/oj#art_58').
declared(sandbox_supports_flexibility/1, 'detailed arrangements support flexibility for national competent authorities to establish and operate sandboxes', 'celex:32024R1689/oj#art_58').
declared(sandbox_access_free_for_sme/1, 'access to AI regulatory sandbox is free of charge for SMEs including start-ups', 'celex:32024R1689/oj#art_58').
declared(exceptional_costs_recoverable/1, 'national competent authorities may recover exceptional costs in a fair and proportionate manner', 'celex:32024R1689/oj#art_58').
declared(sandbox_facilitates_conformity_assessment_compliance/1, 'AI regulatory sandbox facilitates providers in complying with conformity assessment obligations and voluntary application of codes of conduct', 'celex:32024R1689/oj#art_58').
declared(sandbox_facilitates_ecosystem_involvement/1, 'AI regulatory sandbox facilitates involvement of other relevant actors within the AI ecosystem', 'celex:32024R1689/oj#art_58').
declared(sandbox_procedures_simple_intelligible/1, 'procedures, processes and administrative requirements are simple, easily intelligible and clearly communicated', 'celex:32024R1689/oj#art_58').
declared(sandbox_participation_streamlined_across_union/1, 'participation in sandbox is streamlined across the Union to avoid fragmentation', 'celex:32024R1689/oj#art_58').
declared(sandbox_mutually_recognised_across_union/1, 'participation in sandbox established by Member State or EDPS is mutually and uniformly recognised with same legal effects across Union', 'celex:32024R1689/oj#art_58').
declared(sandbox_participation_limited_period/1, 'participation in AI regulatory sandbox is limited to a period appropriate to complexity and scale of project', 'celex:32024R1689/oj#art_58').
declared(sandbox_period_extendable/1, 'participation period may be extended by national competent authority', 'celex:32024R1689/oj#art_58').
declared(sandbox_facilitates_tool_development/1, 'AI regulatory sandbox facilitates development of tools and infrastructure for testing, benchmarking, assessing and explaining dimensions of AI systems', 'celex:32024R1689/oj#art_58').
declared(must_direct_prospective_providers_to_pre_deployment_services/2, 'prospective providers in sandbox, in particular SMEs and start-ups, shall be directed to pre-deployment services', 'celex:32024R1689/oj#art_58').
declared(must_agree_terms_for_real_world_testing/2, 'national competent authorities specifically agree terms and conditions of real-world testing with participants', 'celex:32024R1689/oj#art_58').
declared(must_agree_appropriate_safeguards/2, 'national competent authorities agree appropriate safeguards with participants to protect fundamental rights, health and safety', 'celex:32024R1689/oj#art_58').
declared(must_cooperate_for_consistent_practices/2, 'national competent authorities cooperate with other national competent authorities to ensure consistent practices across Union', 'celex:32024R1689/oj#art_58').
must_adopt_implementing_acts(commission, detailed_arrangements_for_ai_regulatory_sandboxes).
implementing_acts_include_common_principles(act) :-
    common_principles_on_eligibility_selection(act),
    common_principles_on_procedures(act),
    common_principles_on_terms_conditions(act).
common_principles_on_eligibility_selection(act) :-
    implementing_acts_include_common_principles(act).
common_principles_on_procedures(act) :-
    implementing_acts_include_common_principles(act).
common_principles_on_terms_conditions(act) :-
    implementing_acts_include_common_principles(act).
sandbox_open_to_applying_provider(Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    eligibility_selection_criteria_transparent_fair(Sandbox).
eligibility_selection_criteria_transparent_fair(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
inform_applicant_within_three_months(Authority, Applicant) :-
    national_competent_authority(Authority),
    within(months(3), decision(Authority, Applicant)).
sandbox_allows_broad_equal_access(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
application_in_partnership(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_supports_flexibility(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_access_free_for_sme(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
exceptional_costs_recoverable(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_facilitates_conformity_assessment_compliance(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_facilitates_ecosystem_involvement(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_procedures_simple_intelligible(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_participation_streamlined_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_mutually_recognised_across_union(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_participation_limited_period(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_period_extendable(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
sandbox_facilitates_tool_development(Sandbox) :-
    ai_regulatory_sandbox(Sandbox).
must_direct_prospective_providers_to_pre_deployment_services(Authority, ProspectiveProvider) :-
    national_competent_authority(Authority),
    prospective_provider_in_sandbox(ProspectiveProvider).
prospective_provider_in_sandbox(P) :-
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(P, Sandbox).
participant_in_sandbox(P, Sandbox) :-
    ai_regulatory_sandbox(Sandbox),
    provider(P).
must_agree_terms_for_real_world_testing(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Sandbox),
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(Participant, Sandbox).
must_agree_appropriate_safeguards(Authority, Participant) :-
    national_competent_authority(Authority),
    testing_in_real_world_conditions(Sandbox),
    ai_regulatory_sandbox(Sandbox),
    participant_in_sandbox(Participant, Sandbox).
must_cooperate_for_consistent_practices(Authority, OtherAuthority) :-
    national_competent_authority(Authority),
    national_competent_authority(OtherAuthority),
    Authority \= OtherAuthority.
provenance(must_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(implementing_acts_include_common_principles/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_eligibility_selection/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_procedures/1, 'celex:32024R1689/oj#art_58').
provenance(common_principles_on_terms_conditions/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_open_to_applying_provider/1, 'celex:32024R1689/oj#art_58').
provenance(eligibility_selection_criteria_transparent_fair/1, 'celex:32024R1689/oj#art_58').
provenance(inform_applicant_within_three_months/2, 'celex:32024R1689/oj#art_58').
provenance(sandbox_allows_broad_equal_access/1, 'celex:32024R1689/oj#art_58').
provenance(application_in_partnership/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_supports_flexibility/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_access_free_for_sme/1, 'celex:32024R1689/oj#art_58').
provenance(exceptional_costs_recoverable/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_conformity_assessment_compliance/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_ecosystem_involvement/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_procedures_simple_intelligible/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_streamlined_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_mutually_recognised_across_union/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_participation_limited_period/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_period_extendable/1, 'celex:32024R1689/oj#art_58').
provenance(sandbox_facilitates_tool_development/1, 'celex:32024R1689/oj#art_58').
provenance(must_direct_prospective_providers_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_terms_for_real_world_testing/2, 'celex:32024R1689/oj#art_58').
provenance(must_agree_appropriate_safeguards/2, 'celex:32024R1689/oj#art_58').
provenance(must_cooperate_for_consistent_practices/2, 'celex:32024R1689/oj#art_58').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58').

% ==== celex:32024R1689/oj#art_59 ====
declared(permitted_further_processing_in_sandbox/2, 'personal data may be further processed in AI regulatory sandbox for developing certain AI systems', 'celex:32024R1689/oj#art_59').
declared(ai_system_developed_for_public_interest/1, 'AI system developed for safeguarding substantial public interest by public authority or other person', 'celex:32024R1689/oj#art_59').
declared(public_interest_area/1, 'area of substantial public interest for AI system development', 'celex:32024R1689/oj#art_59').
declared(data_necessary_for_requirements/1, 'data processed are necessary for complying with requirements where anonymised or synthetic data insufficient', 'celex:32024R1689/oj#art_59').
declared(effective_monitoring_mechanisms/1, 'effective monitoring mechanisms to identify high risks to rights and freedoms of data subjects', 'celex:32024R1689/oj#art_59').
declared(response_mechanisms_to_mitigate_risks/1, 'response mechanisms to promptly mitigate risks and stop processing where necessary', 'celex:32024R1689/oj#art_59').
declared(functionally_separate_isolated_protected_environment/1, 'personal data in functionally separate, isolated and protected data processing environment', 'celex:32024R1689/oj#art_59').
declared(data_under_control_of_prospective_provider/1, 'data processing environment under control of prospective provider', 'celex:32024R1689/oj#art_59').
declared(only_authorised_persons_access_data/1, 'only authorised persons have access to personal data in sandbox', 'celex:32024R1689/oj#art_59').
declared(further_sharing_in_accordance_with_union_data_protection_law/1, 'providers can further share originally collected data only in accordance with Union data protection law', 'celex:32024R1689/oj#art_59').
declared(personal_data_created_in_sandbox_not_shared_outside/1, 'personal data created in sandbox cannot be shared outside sandbox', 'celex:32024R1689/oj#art_59').
declared(no_measures_or_decisions_affecting_data_subjects/1, 'processing neither leads to measures or decisions affecting data subjects', 'celex:32024R1689/oj#art_59').
declared(no_effect_on_data_subject_rights/1, 'processing does not affect application of data subjects rights under Union law', 'celex:32024R1689/oj#art_59').
declared(appropriate_technical_organisational_measures/1, 'personal data protected by appropriate technical and organisational measures', 'celex:32024R1689/oj#art_59').
declared(personal_data_deleted_after_sandbox_termination/1, 'personal data deleted once sandbox participation terminated or retention period ended', 'celex:32024R1689/oj#art_59').
declared(logs_kept_for_sandbox_duration/1, 'logs of personal data processing kept for duration of sandbox participation', 'celex:32024R1689/oj#art_59').
declared(complete_detailed_description_kept/1, 'complete and detailed description of process and rationale kept with testing results as technical documentation', 'celex:32024R1689/oj#art_59').
declared(short_summary_published_on_website/1, 'short summary of AI project published on website of competent authorities', 'celex:32024R1689/oj#art_59').
declared(sensitive_operational_data_excluded_from_publication/1, 'obligation to publish summary does not cover sensitive operational data of law enforcement, border control, immigration or asylum authorities', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_processing_based_on_specific_law/1, 'processing of personal data for law enforcement purposes based on specific Union or national law', 'celex:32024R1689/oj#art_59').
declared(law_enforcement_processing_subject_to_cumulative_conditions/1, 'law enforcement processing subject to same cumulative conditions as paragraph 1', 'celex:32024R1689/oj#art_59').
permitted_further_processing_in_sandbox(Data, S) :-
    ai_regulatory_sandbox(Sandbox),
    personal_data(Data),
    lawfully_collected_for_other_purposes(Data),
    ai_system(S),
    ai_system_developed_for_public_interest(S),
    public_interest_area(S),
    data_necessary_for_requirements(Data),
    effective_monitoring_mechanisms(Data),
    response_mechanisms_to_mitigate_risks(Data),
    functionally_separate_isolated_protected_environment(Data),
    data_under_control_of_prospective_provider(Data),
    only_authorised_persons_access_data(Data),
    further_sharing_in_accordance_with_union_data_protection_law(Data),
    personal_data_created_in_sandbox_not_shared_outside(Data),
    no_measures_or_decisions_affecting_data_subjects(Data),
    no_effect_on_data_subject_rights(Data),
    appropriate_technical_organisational_measures(Data),
    personal_data_deleted_after_sandbox_termination(Data),
    logs_kept_for_sandbox_duration(Data),
    complete_detailed_description_kept(S),
    short_summary_published_on_website(S).
ai_system_developed_for_public_interest(S) :-
    ai_system(S),
    developed_by_public_authority_or_person(S),
    safeguarding_substantial_public_interest(S).
developed_by_public_authority_or_person(S) :-
    provider(S),
    public_authority(S).
developed_by_public_authority_or_person(S) :-
    provider(S),
    natural_or_legal_person(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_public_safety_and_public_health(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_environment_quality_and_green_transition(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_energy_sustainability(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_transport_safety_and_critical_infrastructure(S).
public_interest_area(S) :-
    ai_system_developed_for_public_interest(S),
    area_public_administration_efficiency(S).
data_necessary_for_requirements(Data) :-
    personal_data(Data),
    necessary_for_compliance_with_requirements(Data),
    \+ effectively_fulfilled_by_non_personal_data(Data).
effectively_fulfilled_by_non_personal_data(Data) :-
    anonymised_data(Data).
effectively_fulfilled_by_non_personal_data(Data) :-
    synthetic_data(Data).
effectively_fulfilled_by_non_personal_data(Data) :-
    other_non_personal_data(Data).
effective_monitoring_mechanisms(Data) :-
    personal_data(Data),
    monitoring_mechanisms_identify_high_risks(Data),
    high_risks_to_rights_and_freedoms_of_data_subjects(Data).
response_mechanisms_to_mitigate_risks(Data) :-
    personal_data(Data),
    mechanisms_to_promptly_mitigate_risks(Data),
    mechanisms_to_stop_processing_where_necessary(Data).
functionally_separate_isolated_protected_environment(Data) :-
    personal_data(Data),
    functionally_separate(Data),
    isolated(Data),
    protected(Data).
data_under_control_of_prospective_provider(Data) :-
    personal_data(Data),
    prospective_provider(Provider),
    under_control_of(Provider, Data).
only_authorised_persons_access_data(Data) :-
    personal_data(Data),
    authorised_persons_only_access(Data).
further_sharing_in_accordance_with_union_data_protection_law(Data) :-
    personal_data(Data),
    originally_collected_data(Data),
    sharing_in_accordance_with_union_data_protection_law(Data).
personal_data_created_in_sandbox_not_shared_outside(Data) :-
    personal_data(Data),
    created_in_sandbox(Data),
    \+ shared_outside_sandbox(Data).
no_measures_or_decisions_affecting_data_subjects(Data) :-
    personal_data(Data),
    \+ leads_to_measures_or_decisions_affecting_data_subjects(Data).
no_effect_on_data_subject_rights(Data) :-
    personal_data(Data),
    \+ affects_application_of_data_subject_rights(Data).
appropriate_technical_organisational_measures(Data) :-
    personal_data(Data),
    technical_measures_appropriate(Data),
    organisational_measures_appropriate(Data).
personal_data_deleted_after_sandbox_termination(Data) :-
    personal_data(Data),
    deleted_once_participation_terminated(Data).
personal_data_deleted_after_sandbox_termination(Data) :-
    personal_data(Data),
    deleted_at_end_of_retention_period(Data).
logs_kept_for_sandbox_duration(Data) :-
    personal_data(Data),
    logs_of_processing(Data),
    kept_for_duration_of_participation(Data),
    \+ provided_otherwise_by_union_or_national_law(Data).
complete_detailed_description_kept(S) :-
    ai_system(S),
    description_of_process_and_rationale_kept(S),
    testing_results_kept(S),
    part_of_technical_documentation(S).
short_summary_published_on_website(S) :-
    ai_system(S),
    summary_of_ai_project_published(S),
    objectives_and_expected_results_included(S),
    website_of_competent_authorities(S),
    \+ sensitive_operational_data_excluded_from_publication(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    law_enforcement_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    border_control_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    immigration_activity(S).
sensitive_operational_data_excluded_from_publication(S) :-
    ai_system(S),
    sensitive_operational_data(S),
    asylum_activity(S).
law_enforcement_processing_based_on_specific_law(Data) :-
    personal_data(Data),
    processed_in_ai_regulatory_sandbox(Data),
    purpose_prevention_investigation_detection_prosecution(Data),
    based_on_specific_union_or_national_law(Data).
law_enforcement_processing_subject_to_cumulative_conditions(Data) :-
    personal_data(Data),
    processed_in_ai_regulatory_sandbox(Data),
    purpose_law_enforcement(Data),
    permitted_further_processing_in_sandbox(Data, _S).
provenance(permitted_further_processing_in_sandbox/2, 'celex:32024R1689/oj#art_59').
provenance(ai_system_developed_for_public_interest/1, 'celex:32024R1689/oj#art_59').
provenance(public_interest_area/1, 'celex:32024R1689/oj#art_59').
provenance(data_necessary_for_requirements/1, 'celex:32024R1689/oj#art_59').
provenance(effective_monitoring_mechanisms/1, 'celex:32024R1689/oj#art_59').
provenance(response_mechanisms_to_mitigate_risks/1, 'celex:32024R1689/oj#art_59').
provenance(functionally_separate_isolated_protected_environment/1, 'celex:32024R1689/oj#art_59').
provenance(data_under_control_of_prospective_provider/1, 'celex:32024R1689/oj#art_59').
provenance(only_authorised_persons_access_data/1, 'celex:32024R1689/oj#art_59').
provenance(further_sharing_in_accordance_with_union_data_protection_law/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_created_in_sandbox_not_shared_outside/1, 'celex:32024R1689/oj#art_59').
provenance(no_measures_or_decisions_affecting_data_subjects/1, 'celex:32024R1689/oj#art_59').
provenance(no_effect_on_data_subject_rights/1, 'celex:32024R1689/oj#art_59').
provenance(appropriate_technical_organisational_measures/1, 'celex:32024R1689/oj#art_59').
provenance(personal_data_deleted_after_sandbox_termination/1, 'celex:32024R1689/oj#art_59').
provenance(logs_kept_for_sandbox_duration/1, 'celex:32024R1689/oj#art_59').
provenance(complete_detailed_description_kept/1, 'celex:32024R1689/oj#art_59').
provenance(short_summary_published_on_website/1, 'celex:32024R1689/oj#art_59').
provenance(sensitive_operational_data_excluded_from_publication/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_processing_based_on_specific_law/1, 'celex:32024R1689/oj#art_59').
provenance(law_enforcement_processing_subject_to_cumulative_conditions/1, 'celex:32024R1689/oj#art_59').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_59', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#art_59', 'celex:32018R1725/oj#art_39').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_59', 'celex:32024R1689/oj#art_59/par_1').

% ==== celex:32024R1689/oj#art_60 ====
declared(prospective_provider/1, 'prospective provider of a high-risk AI system', 'celex:32024R1689/oj#art_60').
declared(prospective_deployer/1, 'prospective deployer of a high-risk AI system', 'celex:32024R1689/oj#art_60').
declared(testing_in_real_world_conditions_outside_sandbox/2, 'testing of high-risk AI system in real world conditions outside AI regulatory sandboxes by provider or prospective provider', 'celex:32024R1689/oj#art_60').
declared(real_world_testing_plan_submitted/2, 'provider or prospective provider has drawn up and submitted real-world testing plan to market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(testing_approved_by_authority/2, 'market surveillance authority has approved testing and real-world testing plan', 'celex:32024R1689/oj#art_60').
declared(tacit_approval_applies/1, 'testing understood to have been approved due to no answer within 30 days and national law provides for tacit approval', 'celex:32024R1689/oj#art_60').
declared(authorisation_required/1, 'testing remains subject to authorisation because national law does not provide for tacit approval', 'celex:32024R1689/oj#art_60').
declared(testing_registered_public_section/2, 'testing registered in public section of EU database with Union-wide unique single identification number', 'celex:32024R1689/oj#art_60').
declared(testing_registered_secure_non_public_section/2, 'testing registered in secure non-public section of EU database with Union-wide unique single identification number', 'celex:32024R1689/oj#art_60').
declared(provider_established_in_union_or_has_representative/1, 'provider or prospective provider is established in the Union or has appointed a legal representative established in the Union', 'celex:32024R1689/oj#art_60').
declared(data_transfer_to_third_countries_safeguarded/1, 'data transferred to third countries only with appropriate and applicable safeguards under Union law', 'celex:32024R1689/oj#art_60').
declared(testing_duration_limited/1, 'testing does not last longer than necessary and in any case not longer than six months, extendable for additional six months with prior notification', 'celex:32024R1689/oj#art_60').
declared(vulnerable_subjects_protected/1, 'subjects belonging to vulnerable groups due to age or disability are appropriately protected', 'celex:32024R1689/oj#art_60').
declared(deployers_informed_and_agreement_concluded/2, 'deployers informed of all relevant aspects and agreement concluded specifying roles and responsibilities', 'celex:32024R1689/oj#art_60').
declared(informed_consent_given_or_law_enforcement_exception/1, 'subjects gave informed consent or law enforcement exception applies with no negative effect and data deletion', 'celex:32024R1689/oj#art_60').
declared(testing_effectively_overseen/1, 'testing effectively overseen by qualified persons with necessary capacity, training and authority', 'celex:32024R1689/oj#art_60').
declared(predictions_recommendations_decisions_reversible/1, 'predictions, recommendations or decisions of AI system can be effectively reversed and disregarded', 'celex:32024R1689/oj#art_60').
declared(subject_may_withdraw/1, 'subject or legally designated representative may withdraw from testing at any time by revoking informed consent', 'celex:32024R1689/oj#art_60').
declared(subject_may_request_deletion/1, 'subject may request immediate and permanent deletion of personal data', 'celex:32024R1689/oj#art_60').
declared(withdrawal_does_not_affect_prior_activities/1, 'withdrawal of informed consent does not affect activities already carried out', 'celex:32024R1689/oj#art_60').
declared(market_surveillance_powers_for_testing/1, 'market surveillance authorities have powers to require information, carry out inspections, and perform checks on testing', 'celex:32024R1689/oj#art_60').
declared(serious_incident_reported_during_testing/2, 'serious incident identified during testing reported to national market surveillance authority', 'celex:32024R1689/oj#art_60').
declared(mitigation_measures_adopted_or_testing_suspended/1, 'provider adopts immediate mitigation measures or suspends testing until mitigation takes place or terminates it', 'celex:32024R1689/oj#art_60').
declared(recall_procedure_established/1, 'provider establishes procedure for prompt recall of AI system upon termination of testing', 'celex:32024R1689/oj#art_60').
declared(suspension_or_termination_notified/2, 'provider notifies national market surveillance authority of suspension or termination and final outcomes', 'celex:32024R1689/oj#art_60').
declared(provider_liable_for_damage/1, 'provider or prospective provider liable under applicable Union and national liability law for damage caused during testing', 'celex:32024R1689/oj#art_60').
declared(ethical_review_not_prejudiced/1, 'testing is without prejudice to any ethical review required by Union or national law', 'celex:32024R1689/oj#art_60').
declared(union_national_law_on_product_testing_not_prejudiced/1, 'testing is without prejudice to Union or national law on testing of high-risk AI systems related to products covered by Union harmonisation legislation', 'celex:32024R1689/oj#art_60').
permitted_testing_in_real_world_conditions(P, S) :-
    testing_in_real_world_conditions_outside_sandbox(P, S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    real_world_testing_plan(P, S),
    \+ non_compliance_with_prohibition(S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    real_world_testing_plan(P, S),
    \+ non_compliance_with_prohibition(S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    in_partnership_with_deployers(P, S).
testing_in_real_world_conditions_outside_sandbox(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    before_placing_on_market_or_putting_into_service(S),
    in_partnership_with_deployers(P, S).
in_partnership_with_deployers(P, S) :-
    provider(P),
    deployer(D),
    partnership(P, D, S).
in_partnership_with_deployers(P, S) :-
    prospective_provider(P),
    prospective_deployer(D),
    partnership(P, D, S).
permitted_testing_conditions_met(P, S) :-
    real_world_testing_plan_submitted(P, S),
    testing_approved_by_authority(P, S),
    testing_registration_completed(P, S),
    provider_established_in_union_or_has_representative(P),
    data_transfer_to_third_countries_safeguarded(S),
    testing_duration_limited(S),
    vulnerable_subjects_protected(S),
    deployers_informed_and_agreement_concluded(P, S),
    informed_consent_given_or_law_enforcement_exception(S),
    testing_effectively_overseen(S),
    predictions_recommendations_decisions_reversible(S).
testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    approved_testing(A, P, S).
testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    tacit_approval_applies(approval(A, P, S)).
testing_approved_by_authority(P, S) :-
    market_surveillance_authority(A),
    authorisation_required(approval(A, P, S)),
    authorised_testing(A, P, S).
tacit_approval_applies(approval(A, P, S)) :-
    market_surveillance_authority(A),
    no_answer_within(days(30), A, P, S),
    national_law_provides_tacit_approval(A).
authorisation_required(approval(A, P, S)) :-
    market_surveillance_authority(A),
    \+ national_law_provides_tacit_approval(A).
testing_registration_completed(P, S) :-
    annex_3_point_1(S),
    testing_registered_secure_non_public_section(P, S).
testing_registration_completed(P, S) :-
    law_enforcement_area(S),
    testing_registered_secure_non_public_section(P, S).
testing_registration_completed(P, S) :-
    annex_3_point_1(S),
    \+ law_enforcement_area(S),
    testing_registered_public_section(P, S).
testing_registration_completed(P, S) :-
    \+ annex_3_point_1(S),
    \+ law_enforcement_area(S),
    testing_registered_public_section(P, S).
must_notify_suspension_or_termination(P, A) :-
    provider(P),
    market_surveillance_authority(A),
    suspension_or_termination_notified(P, A).
must_notify_suspension_or_termination(P, A) :-
    prospective_provider(P),
    market_surveillance_authority(A),
    suspension_or_termination_notified(P, A).
must_report_serious_incident(P, A) :-
    provider(P),
    market_surveillance_authority(A),
    serious_incident_reported_during_testing(P, A).
must_report_serious_incident(P, A) :-
    prospective_provider(P),
    market_surveillance_authority(A),
    serious_incident_reported_during_testing(P, A).
must_adopt_mitigation_or_suspend(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident_during_testing(S),
    mitigation_measures_adopted_or_testing_suspended(mitigation(P, S)).
must_adopt_mitigation_or_suspend(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    serious_incident_during_testing(S),
    mitigation_measures_adopted_or_testing_suspended(mitigation(P, S)).
must_establish_recall_procedure(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    testing_terminated(S),
    recall_procedure_established(recall(P, S)).
must_establish_recall_procedure(P, S) :-
    prospective_provider(P),
    high_risk_ai_system(S),
    testing_terminated(S),
    recall_procedure_established(recall(P, S)).
provider_liable_for_damage(P) :-
    provider(P),
    damage_caused_during_testing(P).
provider_liable_for_damage(P) :-
    prospective_provider(P),
    damage_caused_during_testing(P).
subject_may_withdraw(S) :-
    subject(S),
    withdrawal_without_detriment(S).
subject_may_withdraw(S) :-
    legally_designated_representative(R),
    subject(S),
    withdrawal_without_detriment_by_representative(R, S).
subject_may_request_deletion(S) :-
    subject(S),
    deletion_request_permitted(S).
subject_may_request_deletion(S) :-
    legally_designated_representative(R),
    subject(S),
    deletion_request_permitted_by_representative(R, S).
withdrawal_does_not_affect_prior_activities(S) :-
    subject(S),
    informed_consent_revoked(S),
    prior_activities_unaffected(S).
ethical_review_not_prejudiced(S) :-
    high_risk_ai_system(S),
    testing_in_real_world_conditions_outside_sandbox(_P, S).
union_national_law_on_product_testing_not_prejudiced(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    testing_in_real_world_conditions_outside_sandbox(_P, S).
market_surveillance_powers_for_testing(A) :-
    market_surveillance_authority(A),
    member_state(A),
    powers_conferred(A, testing_inspection).
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_60').
provenance(prospective_deployer/1, 'celex:32024R1689/oj#art_60').
provenance(testing_in_real_world_conditions_outside_sandbox/2, 'celex:32024R1689/oj#art_60').
provenance(real_world_testing_plan_submitted/2, 'celex:32024R1689/oj#art_60').
provenance(testing_approved_by_authority/2, 'celex:32024R1689/oj#art_60').
provenance(tacit_approval_applies/1, 'celex:32024R1689/oj#art_60').
provenance(authorisation_required/1, 'celex:32024R1689/oj#art_60').
provenance(testing_registered_public_section/2, 'celex:32024R1689/oj#art_60').
provenance(testing_registered_secure_non_public_section/2, 'celex:32024R1689/oj#art_60').
provenance(provider_established_in_union_or_has_representative/1, 'celex:32024R1689/oj#art_60').
provenance(data_transfer_to_third_countries_safeguarded/1, 'celex:32024R1689/oj#art_60').
provenance(testing_duration_limited/1, 'celex:32024R1689/oj#art_60').
provenance(vulnerable_subjects_protected/1, 'celex:32024R1689/oj#art_60').
provenance(deployers_informed_and_agreement_concluded/2, 'celex:32024R1689/oj#art_60').
provenance(informed_consent_given_or_law_enforcement_exception/1, 'celex:32024R1689/oj#art_60').
provenance(testing_effectively_overseen/1, 'celex:32024R1689/oj#art_60').
provenance(predictions_recommendations_decisions_reversible/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_withdraw/1, 'celex:32024R1689/oj#art_60').
provenance(subject_may_request_deletion/1, 'celex:32024R1689/oj#art_60').
provenance(withdrawal_does_not_affect_prior_activities/1, 'celex:32024R1689/oj#art_60').
provenance(market_surveillance_powers_for_testing/1, 'celex:32024R1689/oj#art_60').
provenance(serious_incident_reported_during_testing/2, 'celex:32024R1689/oj#art_60').
provenance(mitigation_measures_adopted_or_testing_suspended/1, 'celex:32024R1689/oj#art_60').
provenance(recall_procedure_established/1, 'celex:32024R1689/oj#art_60').
provenance(suspension_or_termination_notified/2, 'celex:32024R1689/oj#art_60').
provenance(provider_liable_for_damage/1, 'celex:32024R1689/oj#art_60').
provenance(ethical_review_not_prejudiced/1, 'celex:32024R1689/oj#art_60').
provenance(union_national_law_on_product_testing_not_prejudiced/1, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_in_real_world_conditions/2, 'celex:32024R1689/oj#art_60').
provenance(permitted_testing_conditions_met/2, 'celex:32024R1689/oj#art_60').
provenance(testing_registration_completed/2, 'celex:32024R1689/oj#art_60').
provenance(must_notify_suspension_or_termination/2, 'celex:32024R1689/oj#art_60').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_60').
provenance(must_adopt_mitigation_or_suspend/2, 'celex:32024R1689/oj#art_60').
provenance(must_establish_recall_procedure/2, 'celex:32024R1689/oj#art_60').
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
declared(informed_consent_obtained/2, 'freely-given informed consent obtained from subject for testing in real world conditions', 'celex:32024R1689/oj#art_61').
declared(duly_informed/2, 'subject duly informed with concise clear relevant understandable information', 'celex:32024R1689/oj#art_61').
declared(informed_about_nature_objectives_inconvenience/1, 'informed about nature and objectives of testing and possible inconvenience', 'celex:32024R1689/oj#art_61').
declared(informed_about_conditions_duration/1, 'informed about conditions of testing including expected duration of participation', 'celex:32024R1689/oj#art_61').
declared(informed_about_rights_guarantees/1, 'informed about rights and guarantees including right to refuse and withdraw without detriment or justification', 'celex:32024R1689/oj#art_61').
declared(informed_about_reversal_arrangements/1, 'informed about arrangements for requesting reversal or disregarding of predictions recommendations or decisions', 'celex:32024R1689/oj#art_61').
declared(informed_about_identification_number_contact/1, 'informed about Union-wide unique single identification number and contact details of provider or legal representative', 'celex:32024R1689/oj#art_61').
declared(consent_dated_and_documented/1, 'informed consent is dated and documented', 'celex:32024R1689/oj#art_61').
declared(copy_given_to_subject_or_representative/1, 'copy of informed consent given to subject or legal representative', 'celex:32024R1689/oj#art_61').
informed_consent_obtained(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    duly_informed(Subject, Testing),
    informed_about_nature_objectives_inconvenience(Testing),
    informed_about_conditions_duration(Testing),
    informed_about_rights_guarantees(Testing),
    informed_about_reversal_arrangements(Testing),
    informed_about_identification_number_contact(Testing),
    informed_consent(Subject),
    consent_dated_and_documented(Subject),
    copy_given_to_subject_or_representative(Subject).
duly_informed(Subject, Testing) :-
    testing_in_real_world_conditions(Testing),
    subject(Subject),
    information_concise_clear_relevant_understandable(Testing).
informed_about_nature_objectives_inconvenience(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, nature_and_objectives),
    information_provided(Testing, possible_inconvenience).
informed_about_conditions_duration(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, conditions_of_testing),
    information_provided(Testing, expected_duration_of_participation).
informed_about_rights_guarantees(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, rights_of_subject),
    information_provided(Testing, guarantees_of_participation),
    right_to_refuse_participation(Testing),
    right_to_withdraw_at_any_time(Testing),
    withdrawal_without_detriment(Testing),
    withdrawal_without_justification(Testing).
informed_about_reversal_arrangements(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_provided(Testing, arrangements_for_reversal_or_disregarding).
informed_about_identification_number_contact(Testing) :-
    testing_in_real_world_conditions(Testing),
    union_wide_unique_single_identification_number(Testing),
    contact_details_available(Testing, provider_or_legal_representative).
consent_dated_and_documented(Subject) :-
    subject(Subject),
    consent_dated(Subject),
    consent_documented(Subject).
copy_given_to_subject_or_representative(Subject) :-
    subject(Subject),
    copy_of_consent_given(Subject).
copy_given_to_subject_or_representative(Subject) :-
    legal_representative_of(Subject, Representative),
    copy_of_consent_given(Representative).
information_concise_clear_relevant_understandable(Testing) :-
    testing_in_real_world_conditions(Testing),
    information_concise(Testing),
    information_clear(Testing),
    information_relevant(Testing),
    information_understandable(Testing).
provenance(informed_consent_obtained/2, 'celex:32024R1689/oj#art_61').
provenance(duly_informed/2, 'celex:32024R1689/oj#art_61').
provenance(informed_about_nature_objectives_inconvenience/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_conditions_duration/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_rights_guarantees/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_reversal_arrangements/1, 'celex:32024R1689/oj#art_61').
provenance(informed_about_identification_number_contact/1, 'celex:32024R1689/oj#art_61').
provenance(consent_dated_and_documented/1, 'celex:32024R1689/oj#art_61').
provenance(copy_given_to_subject_or_representative/1, 'celex:32024R1689/oj#art_61').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60').
references('celex:32024R1689/oj#art_61', 'celex:32024R1689/oj#art_60/par_4/unp_1/pnt_c').

% ==== celex:32024R1689/oj#art_62 ====
declared(sme/1, 'small and medium-sized enterprise', 'celex:32024R1689/oj#art_62').
declared(start_up/1, 'start-up enterprise', 'celex:32024R1689/oj#art_62').
declared(sme_with_registered_office_or_branch_in_union/1, 'SME having a registered office or a branch in the Union', 'celex:32024R1689/oj#art_62').
declared(priority_access_to_ai_regulatory_sandbox/1, 'priority access to AI regulatory sandboxes', 'celex:32024R1689/oj#art_62').
declared(fulfils_eligibility_conditions_and_selection_criteria/1, 'fulfils the eligibility conditions and selection criteria for AI regulatory sandbox', 'celex:32024R1689/oj#art_62').
declared(awareness_raising_and_training_activities/1, 'specific awareness raising and training activities on the application of the regulation', 'celex:32024R1689/oj#art_62').
declared(tailored_to_needs_of_smes/1, 'tailored to the needs of SMEs including start-ups, deployers and local public authorities', 'celex:32024R1689/oj#art_62').
declared(dedicated_channels_for_communication/1, 'existing dedicated channels or new ones for communication with SMEs, deployers, innovators and local public authorities', 'celex:32024R1689/oj#art_62').
declared(advice_and_respond_to_queries/1, 'provide advice and respond to queries about implementation of the regulation', 'celex:32024R1689/oj#art_62').
declared(facilitate_participation_in_standardisation/1, 'facilitate participation of SMEs and other relevant stakeholders in standardisation development process', 'celex:32024R1689/oj#art_62').
declared(fees_reduced_proportionately/1, 'fees for conformity assessment reduced proportionately to size, market size and other relevant indicators', 'celex:32024R1689/oj#art_62').
declared(standardised_templates/1, 'standardised templates for areas covered by the regulation', 'celex:32024R1689/oj#art_62').
declared(single_information_platform/1, 'single information platform providing easy to use information for all operators across the Union', 'celex:32024R1689/oj#art_62').
declared(communication_campaigns/1, 'appropriate communication campaigns to raise awareness about obligations arising from the regulation', 'celex:32024R1689/oj#art_62').
declared(evaluate_and_promote_best_practices_public_procurement/1, 'evaluate and promote convergence of best practices in public procurement procedures in relation to AI systems', 'celex:32024R1689/oj#art_62').
sme_with_registered_office_or_branch_in_union(S) :-
    sme(S),
    registered_office_in_union(S).
sme_with_registered_office_or_branch_in_union(S) :-
    sme(S),
    branch_in_union(S).
registered_office_in_union(S) :-
    sme(S),
    registered_office(S),
    in_union(S).
branch_in_union(S) :-
    sme(S),
    branch(S),
    in_union(S).
in_union(X) :-
    member_state_location(X).
priority_access_to_ai_regulatory_sandbox(S) :-
    sme_with_registered_office_or_branch_in_union(S),
    fulfils_eligibility_conditions_and_selection_criteria(S).
priority_access_to_ai_regulatory_sandbox(S) :-
    start_up(S),
    sme_with_registered_office_or_branch_in_union(S),
    fulfils_eligibility_conditions_and_selection_criteria(S).
must_provide_priority_access(MemberState, S) :-
    member_state(MemberState),
    priority_access_to_ai_regulatory_sandbox(S).
must_organise_awareness_raising_and_training(MemberState) :-
    member_state(MemberState),
    awareness_raising_and_training_activities(Activity),
    tailored_to_needs_of_smes(Activity).
must_utilise_dedicated_channels(MemberState) :-
    member_state(MemberState),
    dedicated_channels_for_communication(Channel),
    advice_and_respond_to_queries(Channel).
must_facilitate_participation_in_standardisation(MemberState) :-
    member_state(MemberState),
    facilitate_participation_in_standardisation(Activity),
    sme_participates_in(Activity, S),
    sme(S).
must_take_into_account_sme_interests_and_needs_when_setting_fees(Authority) :-
    conformity_assessment(Assessment),
    fees_reduced_proportionately(Assessment),
    sme_provider_interests_taken_into_account(Assessment).
must_provide_standardised_templates(AIOffice) :-
    ai_office(AIOffice),
    standardised_templates(Template).
must_develop_and_maintain_single_information_platform(AIOffice) :-
    ai_office(AIOffice),
    single_information_platform(Platform).
must_organise_communication_campaigns(AIOffice) :-
    ai_office(AIOffice),
    communication_campaigns(Campaign).
must_evaluate_and_promote_best_practices_public_procurement(AIOffice) :-
    ai_office(AIOffice),
    evaluate_and_promote_best_practices_public_procurement(Activity).
provenance(sme/1, 'celex:32024R1689/oj#art_62').
provenance(start_up/1, 'celex:32024R1689/oj#art_62').
provenance(sme_with_registered_office_or_branch_in_union/1, 'celex:32024R1689/oj#art_62').
provenance(priority_access_to_ai_regulatory_sandbox/1, 'celex:32024R1689/oj#art_62').
provenance(fulfils_eligibility_conditions_and_selection_criteria/1, 'celex:32024R1689/oj#art_62').
provenance(awareness_raising_and_training_activities/1, 'celex:32024R1689/oj#art_62').
provenance(tailored_to_needs_of_smes/1, 'celex:32024R1689/oj#art_62').
provenance(dedicated_channels_for_communication/1, 'celex:32024R1689/oj#art_62').
provenance(advice_and_respond_to_queries/1, 'celex:32024R1689/oj#art_62').
provenance(facilitate_participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(fees_reduced_proportionately/1, 'celex:32024R1689/oj#art_62').
provenance(standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(evaluate_and_promote_best_practices_public_procurement/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_priority_access/2, 'celex:32024R1689/oj#art_62').
provenance(must_organise_awareness_raising_and_training/1, 'celex:32024R1689/oj#art_62').
provenance(must_utilise_dedicated_channels/1, 'celex:32024R1689/oj#art_62').
provenance(must_facilitate_participation_in_standardisation/1, 'celex:32024R1689/oj#art_62').
provenance(must_take_into_account_sme_interests_and_needs_when_setting_fees/1, 'celex:32024R1689/oj#art_62').
provenance(must_provide_standardised_templates/1, 'celex:32024R1689/oj#art_62').
provenance(must_develop_and_maintain_single_information_platform/1, 'celex:32024R1689/oj#art_62').
provenance(must_organise_communication_campaigns/1, 'celex:32024R1689/oj#art_62').
provenance(must_evaluate_and_promote_best_practices_public_procurement/1, 'celex:32024R1689/oj#art_62').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_62/par_1').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_62', 'celex:32024R1689/oj#art_43').

% ==== celex:32024R1689/oj#art_63 ====
declared(microenterprise/1, 'microenterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(partner_enterprise/1, 'partner enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(linked_enterprise/1, 'linked enterprise within the meaning of Recommendation 2003/361/EC', 'celex:32024R1689/oj#art_63').
declared(has_partner_or_linked_enterprise/1, 'operator has partner enterprises or linked enterprises', 'celex:32024R1689/oj#art_63').
declared(simplified_quality_management_compliance/1, 'operator may comply with certain elements of quality management system in simplified manner', 'celex:32024R1689/oj#art_63').
declared(commission_guidelines_simplified_qms/1, 'Commission guidelines on simplified quality management system elements for microenterprises', 'celex:32024R1689/oj#art_63').
declared(derogation_does_not_exempt_other_obligations/1, 'derogation does not exempt operator from other requirements or obligations', 'celex:32024R1689/oj#art_63').
has_partner_or_linked_enterprise(O) :-
    partner_enterprise(O).
has_partner_or_linked_enterprise(O) :-
    linked_enterprise(O).
simplified_quality_management_compliance(O) :-
    microenterprise(O),
    \+ has_partner_or_linked_enterprise(O).
commission_guidelines_simplified_qms(G) :-
    guidelines_on_simplified_quality_management_elements(G),
    considers_needs_of_microenterprises(G),
    does_not_affect_level_of_protection(G),
    does_not_affect_need_for_compliance_high_risk(G).
derogation_does_not_exempt_other_obligations(O) :-
    simplified_quality_management_compliance(O).
declared(guidelines_on_simplified_quality_management_elements/1, 'guidelines on elements of quality management system complied with in simplified manner', 'celex:32024R1689/oj#art_63').
declared(considers_needs_of_microenterprises/1, 'guidelines consider needs of microenterprises', 'celex:32024R1689/oj#art_63').
declared(does_not_affect_level_of_protection/1, 'guidelines do not affect level of protection', 'celex:32024R1689/oj#art_63').
declared(does_not_affect_need_for_compliance_high_risk/1, 'guidelines do not affect need for compliance with high-risk AI system requirements', 'celex:32024R1689/oj#art_63').
must_develop_guidelines(ai_office, simplified_quality_management_for_microenterprises).
must_develop_guidelines(ai_office, simplified_quality_management_for_microenterprises) :-
    commission_guidelines_simplified_qms(_G).
provenance(microenterprise/1, 'celex:32024R1689/oj#art_63').
provenance(partner_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(has_partner_or_linked_enterprise/1, 'celex:32024R1689/oj#art_63').
provenance(simplified_quality_management_compliance/1, 'celex:32024R1689/oj#art_63').
provenance(commission_guidelines_simplified_qms/1, 'celex:32024R1689/oj#art_63').
provenance(derogation_does_not_exempt_other_obligations/1, 'celex:32024R1689/oj#art_63').
provenance(guidelines_on_simplified_quality_management_elements/1, 'celex:32024R1689/oj#art_63').
provenance(considers_needs_of_microenterprises/1, 'celex:32024R1689/oj#art_63').
provenance(does_not_affect_level_of_protection/1, 'celex:32024R1689/oj#art_63').
provenance(does_not_affect_need_for_compliance_high_risk/1, 'celex:32024R1689/oj#art_63').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_63').
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
declared(must_facilitate_ai_office_tasks/2, 'Member State must facilitate tasks entrusted to the AI Office', 'celex:32024R1689/oj#art_64').
declared(must_develop_union_ai_expertise/1, 'Commission must develop Union expertise and capabilities in the field of AI through the AI Office', 'celex:32024R1689/oj#art_64').
must_develop_union_ai_expertise(commission).
must_facilitate_ai_office_tasks(MemberState, ai_office) :-
    member_state(MemberState).
provenance(must_develop_union_ai_expertise/1, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_ai_office_tasks/2, 'celex:32024R1689/oj#art_64').
references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_65 ====
declared(european_artificial_intelligence_board/1, 'the European Artificial Intelligence Board established by Article 65', 'celex:32024R1689/oj#art_65').
declared(board_representative/2, 'representative designated by a Member State to the Board', 'celex:32024R1689/oj#art_65').
declared(board_observer/1, 'observer participating in the Board without voting rights', 'celex:32024R1689/oj#art_65').
declared(board_member_state/1, 'Member State that has a representative on the Board', 'celex:32024R1689/oj#art_65').
declared(board_invited_authority/1, 'national or Union authority, body or expert invited to Board meetings on a case-by-case basis', 'celex:32024R1689/oj#art_65').
declared(board_representative_designation_period/2, 'period for which a board representative is designated by their Member State', 'celex:32024R1689/oj#art_65').
declared(board_representative_competences/1, 'board representative has relevant competences and powers in their Member State', 'celex:32024R1689/oj#art_65').
declared(board_single_contact_point/1, 'board representative designated as single contact point vis-à-vis the Board', 'celex:32024R1689/oj#art_65').
declared(board_stakeholder_contact_point/1, 'board representative designated as single contact point for stakeholders where appropriate', 'celex:32024R1689/oj#art_65').
declared(board_representative_empowered_coordination/1, 'board representative empowered to facilitate consistency and coordination between national competent authorities', 'celex:32024R1689/oj#art_65').
declared(board_rules_of_procedure/1, 'rules of procedure adopted by the Board by two-thirds majority', 'celex:32024R1689/oj#art_65').
declared(board_standing_subgroup/1, 'standing sub-group established by the Board', 'celex:32024R1689/oj#art_65').
declared(board_market_surveillance_subgroup/1, 'standing sub-group for market surveillance authorities acting as ADCO', 'celex:32024R1689/oj#art_65').
declared(board_notifying_authorities_subgroup/1, 'standing sub-group for notifying authorities', 'celex:32024R1689/oj#art_65').
declared(board_temporary_subgroup/1, 'temporary sub-group established by the Board for specific issues', 'celex:32024R1689/oj#art_65').
declared(board_adco_for_regulation/1, 'market surveillance sub-group acts as administrative cooperation group for the regulation', 'celex:32024R1689/oj#art_65').
declared(board_objective_impartial/1, 'Board organised and operated to safeguard objectivity and impartiality', 'celex:32024R1689/oj#art_65').
declared(board_chair/1, 'representative of a Member State chairing the Board', 'celex:32024R1689/oj#art_65').
declared(board_secretariat/1, 'entity providing secretariat for the Board', 'celex:32024R1689/oj#art_65').
declared(board_convenes_meetings/1, 'entity convening Board meetings upon request of the Chair', 'celex:32024R1689/oj#art_65').
declared(board_prepares_agenda/1, 'entity preparing the agenda for Board meetings', 'celex:32024R1689/oj#art_65').
european_artificial_intelligence_board(board).
board_member_state(M) :-
    member_state(M),
    board_representative(R, M).
board_representative(R, M) :-
    board_member_state(M),
    designated_as_single_contact_point(R).
board_observer(edps) :-
    european_artificial_intelligence_board(board).
board_observer(ai_office) :-
    european_artificial_intelligence_board(board).
ai_office_attends_without_voting :-
    european_artificial_intelligence_board(board).
board_representative_designation_period(R, years(3)) :-
    board_representative(R, _M).
board_representative_renewable_once(R) :-
    board_representative(R, _M),
    board_representative_designation_period(R, years(3)).
board_representative_competences(R) :-
    board_representative(R, M),
    member_state(M).
board_single_contact_point(R) :-
    board_representative(R, _M),
    designated_as_single_contact_point(R).
board_stakeholder_contact_point(R) :-
    board_representative(R, _M),
    designated_as_single_contact_point(R).
board_representative_empowered_coordination(R) :-
    board_representative(R, M),
    member_state(M),
    national_competent_authority(A),
    facilitates_consistency_coordination(R, A).
facilitates_consistency_coordination(R, A) :-
    board_representative_empowered_coordination(R),
    national_competent_authority(A).
board_rules_of_procedure(board) :-
    european_artificial_intelligence_board(board).
board_rules_adopted_by_two_thirds_majority :-
    board_rules_of_procedure(board).
board_standing_subgroup(S) :-
    board_market_surveillance_subgroup(S).
board_standing_subgroup(S) :-
    board_notifying_authorities_subgroup(S).
board_market_surveillance_subgroup(market_surveillance_adco).
board_notifying_authorities_subgroup(notifying_authorities_cooperation).
board_adco_for_regulation(market_surveillance_adco) :-
    board_market_surveillance_subgroup(market_surveillance_adco).
board_temporary_subgroup(S) :-
    european_artificial_intelligence_board(board),
    established_for_specific_issue(S).
established_for_specific_issue(_S).
board_objective_impartial(board) :-
    european_artificial_intelligence_board(board).
board_chair(R) :-
    board_representative(R, _M).
board_secretariat(ai_office) :-
    european_artificial_intelligence_board(board).
board_convenes_meetings(ai_office) :-
    board_secretariat(ai_office).
board_prepares_agenda(ai_office) :-
    board_secretariat(ai_office).
must_ensure_representative_competences(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_representative_competences(R).
must_designate_single_contact_point(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_single_contact_point(R).
must_empower_representative_coordination(M, R) :-
    member_state(M),
    board_representative(R, M),
    board_representative_empowered_coordination(R).
must_adopt_rules_of_procedure(board).
must_establish_standing_subgroups(board) :-
    board_market_surveillance_subgroup(_),
    board_notifying_authorities_subgroup(_).
must_safeguard_objectivity_impartiality(board) :-
    board_objective_impartial(board).
must_provide_secretariat(ai_office, board) :-
    board_secretariat(ai_office),
    european_artificial_intelligence_board(board).
must_convene_meetings_upon_request(ai_office, board, chair) :-
    board_convenes_meetings(ai_office),
    board_chair(_R).
must_prepare_agenda(ai_office, board) :-
    board_prepares_agenda(ai_office),
    european_artificial_intelligence_board(board).
provenance(european_artificial_intelligence_board/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative/2, 'celex:32024R1689/oj#art_65').
provenance(board_observer/1, 'celex:32024R1689/oj#art_65').
provenance(board_member_state/1, 'celex:32024R1689/oj#art_65').
provenance(board_invited_authority/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative_designation_period/2, 'celex:32024R1689/oj#art_65').
provenance(board_representative_competences/1, 'celex:32024R1689/oj#art_65').
provenance(board_single_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(board_stakeholder_contact_point/1, 'celex:32024R1689/oj#art_65').
provenance(board_representative_empowered_coordination/1, 'celex:32024R1689/oj#art_65').
provenance(board_rules_of_procedure/1, 'celex:32024R1689/oj#art_65').
provenance(board_standing_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_market_surveillance_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_notifying_authorities_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_temporary_subgroup/1, 'celex:32024R1689/oj#art_65').
provenance(board_adco_for_regulation/1, 'celex:32024R1689/oj#art_65').
provenance(board_objective_impartial/1, 'celex:32024R1689/oj#art_65').
provenance(board_chair/1, 'celex:32024R1689/oj#art_65').
provenance(board_secretariat/1, 'celex:32024R1689/oj#art_65').
provenance(board_convenes_meetings/1, 'celex:32024R1689/oj#art_65').
provenance(board_prepares_agenda/1, 'celex:32024R1689/oj#art_65').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_66').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_65', 'celex:32019R1020/oj#art_30').
references('celex:32024R1689/oj#art_65', 'celex:32024R1689/oj#art_67').

% ==== celex:32024R1689/oj#art_66 ====
declared(board/1, 'the European Artificial Intelligence Board established under Article 65', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_coordination/2, 'Board may contribute to coordination among national competent authorities and support joint activities of market surveillance authorities', 'celex:32024R1689/oj#art_66').
declared(may_collect_and_share_expertise/1, 'Board may collect and share technical and regulatory expertise and best practices among Member States', 'celex:32024R1689/oj#art_66').
declared(may_provide_advice_on_implementation/1, 'Board may provide advice on implementation of the Regulation, in particular enforcement of rules on general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_harmonisation/1, 'Board may contribute to harmonisation of administrative practices in Member States', 'celex:32024R1689/oj#art_66').
declared(may_issue_recommendations_and_opinions/1, 'Board may issue recommendations and written opinions on relevant matters related to implementation and consistent application', 'celex:32024R1689/oj#art_66').
declared(may_support_ai_literacy/1, 'Board may support Commission in promoting AI literacy, public awareness and understanding', 'celex:32024R1689/oj#art_66').
declared(may_facilitate_common_criteria/1, 'Board may facilitate development of common criteria and shared understanding of relevant concepts', 'celex:32024R1689/oj#art_66').
declared(may_cooperate_with_union_bodies/1, 'Board may cooperate with other Union institutions, bodies, offices and agencies', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_third_country_cooperation/1, 'Board may contribute to effective cooperation with competent authorities of third countries and international organisations', 'celex:32024R1689/oj#art_66').
declared(may_assist_in_expertise_development/1, 'Board may assist national competent authorities and Commission in developing organisational and technical expertise', 'celex:32024R1689/oj#art_66').
declared(may_assist_ai_office_on_sandboxes/1, 'Board may assist AI Office in supporting national competent authorities in establishment and development of AI regulatory sandboxes', 'celex:32024R1689/oj#art_66').
declared(may_contribute_to_guidance_documents/1, 'Board may contribute to and provide relevant advice on development of guidance documents', 'celex:32024R1689/oj#art_66').
declared(may_advise_on_international_matters/1, 'Board may advise Commission in relation to international matters on AI', 'celex:32024R1689/oj#art_66').
declared(may_provide_opinions_on_qualified_alerts/1, 'Board may provide opinions to Commission on qualified alerts regarding general-purpose AI models', 'celex:32024R1689/oj#art_66').
declared(may_receive_opinions_from_member_states/1, 'Board may receive opinions by Member States on qualified alerts and national experiences and practices', 'celex:32024R1689/oj#art_66').
declared(must_advise_and_assist/3, 'Board must advise and assist Commission and Member States to facilitate consistent and effective application', 'celex:32024R1689/oj#art_66').
must_advise_and_assist(board, commission, member_states) :-
    board(board),
    member_state(member_states).
may_contribute_to_coordination(board, joint_activities) :-
    board(board),
    market_surveillance_authority(_MSA).
may_collect_and_share_expertise(board) :-
    board(board).
may_provide_advice_on_implementation(board) :-
    board(board).
may_contribute_to_harmonisation(board) :-
    board(board).
may_issue_recommendations_and_opinions(board) :-
    board(board).
may_support_ai_literacy(board) :-
    board(board).
may_facilitate_common_criteria(board) :-
    board(board).
may_cooperate_with_union_bodies(board) :-
    board(board).
may_contribute_to_third_country_cooperation(board) :-
    board(board).
may_assist_in_expertise_development(board) :-
    board(board).
may_assist_ai_office_on_sandboxes(board) :-
    board(board),
    ai_office(_AIO).
may_contribute_to_guidance_documents(board) :-
    board(board).
may_advise_on_international_matters(board) :-
    board(board).
may_provide_opinions_on_qualified_alerts(board) :-
    board(board),
    qualified_alert_scientific_panel(_Alert).
may_receive_opinions_from_member_states(board) :-
    board(board),
    member_state(_MS).
provenance(board/1, 'celex:32024R1689/oj#art_66').
provenance(must_advise_and_assist/3, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_coordination/2, 'celex:32024R1689/oj#art_66').
provenance(may_collect_and_share_expertise/1, 'celex:32024R1689/oj#art_66').
provenance(may_provide_advice_on_implementation/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_harmonisation/1, 'celex:32024R1689/oj#art_66').
provenance(may_issue_recommendations_and_opinions/1, 'celex:32024R1689/oj#art_66').
provenance(may_support_ai_literacy/1, 'celex:32024R1689/oj#art_66').
provenance(may_facilitate_common_criteria/1, 'celex:32024R1689/oj#art_66').
provenance(may_cooperate_with_union_bodies/1, 'celex:32024R1689/oj#art_66').
provenance(may_contribute_to_third_country_cooperation/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_in_expertise_development/1, 'celex:32024R1689/oj#art_66').
provenance(may_assist_ai_office_on_sandboxes/1, 'celex:32024R1689/oj#art_66').
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
declared(advisory_forum/1, 'advisory forum established to provide technical expertise and advise the Board and the Commission', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_member/1, 'member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(permanent_advisory_forum_member/1, 'permanent member of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(advisory_forum_co_chair/1, 'co-chair of the advisory forum', 'celex:32024R1689/oj#art_67').
declared(balanced_stakeholder_representation/1, 'membership represents balanced selection of stakeholders', 'celex:32024R1689/oj#art_67').
declared(balanced_commercial_non_commercial/1, 'membership balanced with regard to commercial and non-commercial interests', 'celex:32024R1689/oj#art_67').
declared(balanced_sme_other_undertakings/1, 'within commercial interests, balanced with regard to SMEs and other undertakings', 'celex:32024R1689/oj#art_67').
declared(recognised_expertise_in_ai/1, 'stakeholder with recognised expertise in the field of AI', 'celex:32024R1689/oj#art_67').
declared(term_of_office_years/2, 'term of office of member in years', 'celex:32024R1689/oj#art_67').
declared(co_chair_term_years/2, 'term of office of co-chair in years', 'celex:32024R1689/oj#art_67').
declared(rules_of_procedure_drawn_up/1, 'advisory forum has drawn up its rules of procedure', 'celex:32024R1689/oj#art_67').
declared(meetings_held_per_year/2, 'advisory forum holds meetings per year', 'celex:32024R1689/oj#art_67').
declared(annual_report_prepared/1, 'advisory forum has prepared annual report on its activities', 'celex:32024R1689/oj#art_67').
declared(annual_report_publicly_available/1, 'annual report made publicly available', 'celex:32024R1689/oj#art_67').
declared(may_prepare_opinions/1, 'advisory forum may prepare opinions, recommendations and written contributions', 'celex:32024R1689/oj#art_67').
declared(may_establish_sub_groups/1, 'advisory forum may establish standing or temporary sub-groups', 'celex:32024R1689/oj#art_67').
declared(may_invite_experts/1, 'advisory forum may invite experts and other stakeholders to meetings', 'celex:32024R1689/oj#art_67').
advisory_forum(F) :-
    provides_technical_expertise(F),
    advises_board_and_commission(F).
provides_technical_expertise(advisory_forum).
advises_board_and_commission(advisory_forum).
balanced_stakeholder_representation(advisory_forum) :-
    advisory_forum_member_represents(advisory_forum, industry),
    advisory_forum_member_represents(advisory_forum, start_ups),
    advisory_forum_member_represents(advisory_forum, smes),
    advisory_forum_member_represents(advisory_forum, civil_society),
    advisory_forum_member_represents(advisory_forum, academia).
balanced_commercial_non_commercial(advisory_forum).
balanced_sme_other_undertakings(advisory_forum).
must_appoint_members(commission, advisory_forum) :-
    advisory_forum_member(M),
    recognised_expertise_in_ai(M).
term_of_office_years(M, years(2)) :-
    advisory_forum_member(M),
    \+ permanent_advisory_forum_member(M).
term_of_office_years(M, years(N)) :-
    advisory_forum_member(M),
    \+ permanent_advisory_forum_member(M),
    N =< 6.
permanent_advisory_forum_member(fundamental_rights_agency).
permanent_advisory_forum_member(enisa).
permanent_advisory_forum_member(cen).
permanent_advisory_forum_member(cenelec).
permanent_advisory_forum_member(etsi).
must_draw_up_rules_of_procedure(advisory_forum).
must_elect_co_chairs(advisory_forum, 2) :-
    advisory_forum_co_chair(C1),
    advisory_forum_co_chair(C2),
    C1 \= C2.
co_chair_term_years(C, years(2)) :-
    advisory_forum_co_chair(C).
advisory_forum_co_chair(C) :-
    advisory_forum_member(C),
    elected_as_co_chair(C).
must_hold_meetings(advisory_forum, per_year(N)) :-
    N >= 2.
may_invite_experts(advisory_forum).
may_prepare_opinions(advisory_forum).
may_establish_sub_groups(advisory_forum).
must_prepare_annual_report(advisory_forum) :-
    annual_report_prepared(advisory_forum).
must_make_public(advisory_forum, annual_report) :-
    annual_report_prepared(advisory_forum),
    annual_report_publicly_available(advisory_forum).
provenance(advisory_forum/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(permanent_advisory_forum_member/1, 'celex:32024R1689/oj#art_67').
provenance(advisory_forum_co_chair/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_stakeholder_representation/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_commercial_non_commercial/1, 'celex:32024R1689/oj#art_67').
provenance(balanced_sme_other_undertakings/1, 'celex:32024R1689/oj#art_67').
provenance(recognised_expertise_in_ai/1, 'celex:32024R1689/oj#art_67').
provenance(term_of_office_years/2, 'celex:32024R1689/oj#art_67').
provenance(co_chair_term_years/2, 'celex:32024R1689/oj#art_67').
provenance(rules_of_procedure_drawn_up/1, 'celex:32024R1689/oj#art_67').
provenance(meetings_held_per_year/2, 'celex:32024R1689/oj#art_67').
provenance(annual_report_prepared/1, 'celex:32024R1689/oj#art_67').
provenance(annual_report_publicly_available/1, 'celex:32024R1689/oj#art_67').
provenance(may_prepare_opinions/1, 'celex:32024R1689/oj#art_67').
provenance(may_establish_sub_groups/1, 'celex:32024R1689/oj#art_67').
provenance(may_invite_experts/1, 'celex:32024R1689/oj#art_67').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_67', 'celex:32024R1689/oj#art_67/par_2').

% ==== celex:32024R1689/oj#art_68 ====
declared(scientific_panel/1, 'scientific panel of independent experts established by the Commission', 'celex:32024R1689/oj#art_68').
declared(scientific_panel_expert/1, 'expert selected to serve on the scientific panel', 'celex:32024R1689/oj#art_68').
declared(selected_by_commission/1, 'expert selected by the Commission', 'celex:32024R1689/oj#art_68').
declared(up_to_date_expertise_in_ai/1, 'up-to-date scientific or technical expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(particular_expertise_and_competence_in_ai/1, 'having particular expertise and competence and scientific or technical expertise in the field of AI', 'celex:32024R1689/oj#art_68').
declared(independent_from_ai_provider/1, 'independence from any provider of AI systems or general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(able_to_carry_out_activities_diligently/1, 'ability to carry out activities diligently, accurately and objectively', 'celex:32024R1689/oj#art_68').
declared(fair_gender_and_geographical_representation/1, 'fair gender and geographical representation on the panel', 'celex:32024R1689/oj#art_68').
declared(advises_and_supports_ai_office/1, 'scientific panel advises and supports the AI Office', 'celex:32024R1689/oj#art_68').
declared(supports_implementation_and_enforcement/1, 'supports implementation and enforcement of the regulation as regards general-purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(alerts_ai_office_of_systemic_risks/1, 'alerts the AI Office of possible systemic risks at Union level of general-purpose AI models', 'celex:32024R1689/oj#art_68').
declared(contributes_to_tools_and_methodologies/1, 'contributes to development of tools and methodologies for evaluating capabilities of general-purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(provides_advice_on_classification_systemic_risk/1, 'provides advice on classification of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#art_68').
declared(provides_advice_on_classification_various_models/1, 'provides advice on classification of various general-purpose AI models and systems', 'celex:32024R1689/oj#art_68').
declared(contributes_to_tools_and_templates/1, 'contributes to development of tools and templates', 'celex:32024R1689/oj#art_68').
declared(supports_market_surveillance_authorities/1, 'supports work of market surveillance authorities at their request', 'celex:32024R1689/oj#art_68').
declared(supports_cross_border_market_surveillance/1, 'supports cross-border market surveillance activities', 'celex:32024R1689/oj#art_68').
declared(supports_union_safeguard_procedure/1, 'supports AI Office in carrying out duties in context of Union safeguard procedure', 'celex:32024R1689/oj#art_68').
declared(performs_tasks_with_impartiality_and_objectivity/1, 'expert performs tasks with impartiality and objectivity', 'celex:32024R1689/oj#art_68').
declared(ensures_confidentiality_of_information/1, 'expert ensures confidentiality of information and data obtained in carrying out tasks', 'celex:32024R1689/oj#art_68').
declared(does_not_seek_or_take_instructions/1, 'expert neither seeks nor takes instructions from anyone when exercising tasks', 'celex:32024R1689/oj#art_68').
declared(declaration_of_interests_publicly_available/1, 'declaration of interests drawn up by expert and made publicly available', 'celex:32024R1689/oj#art_68').
declared(ai_office_establishes_conflict_of_interest_systems/1, 'AI Office establishes systems and procedures to actively manage and prevent potential conflicts of interest', 'celex:32024R1689/oj#art_68').
declared(implementing_act_provisions_on_alerts_and_assistance/1, 'implementing act includes provisions on conditions, procedures and detailed arrangements for issuing alerts and requesting AI Office assistance', 'celex:32024R1689/oj#art_68').
must_establish_scientific_panel(commission).
scientific_panel(P) :-
    must_establish_scientific_panel(commission),
    P = scientific_panel.
scientific_panel_expert(E) :-
    scientific_panel(P),
    member_of_panel(E, P).
selected_by_commission(E) :-
    scientific_panel_expert(E).
up_to_date_expertise_in_ai(E) :-
    scientific_panel_expert(E).
scientific_panel_expert(E) :-
    selected_by_commission(E),
    up_to_date_expertise_in_ai(E),
    particular_expertise_and_competence_in_ai(E),
    independent_from_ai_provider(E),
    able_to_carry_out_activities_diligently(E).
fair_gender_and_geographical_representation(P) :-
    scientific_panel(P).
advises_and_supports_ai_office(P) :-
    scientific_panel(P).
supports_implementation_and_enforcement(P) :-
    scientific_panel(P).
alerts_ai_office_of_systemic_risks(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).
contributes_to_tools_and_methodologies(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).
provides_advice_on_classification_systemic_risk(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).
provides_advice_on_classification_various_models(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).
contributes_to_tools_and_templates(P) :-
    scientific_panel(P),
    supports_implementation_and_enforcement(P).
supports_market_surveillance_authorities(P) :-
    scientific_panel(P).
supports_cross_border_market_surveillance(P) :-
    scientific_panel(P).
supports_union_safeguard_procedure(P) :-
    scientific_panel(P).
performs_tasks_with_impartiality_and_objectivity(E) :-
    scientific_panel_expert(E).
ensures_confidentiality_of_information(E) :-
    scientific_panel_expert(E).
does_not_seek_or_take_instructions(E) :-
    scientific_panel_expert(E).
declaration_of_interests_publicly_available(E) :-
    scientific_panel_expert(E).
ai_office_establishes_conflict_of_interest_systems(ai_office).
implementing_act_provisions_on_alerts_and_assistance(A) :-
    A = implementing_act,
    must_establish_scientific_panel(commission).
must_ensure_fair_representation(commission, scientific_panel).
must_consult_board_on_expert_number(commission).
must_ensure_confidentiality_systems(ai_office).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(scientific_panel_expert/1, 'celex:32024R1689/oj#art_68').
provenance(selected_by_commission/1, 'celex:32024R1689/oj#art_68').
provenance(up_to_date_expertise_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(particular_expertise_and_competence_in_ai/1, 'celex:32024R1689/oj#art_68').
provenance(independent_from_ai_provider/1, 'celex:32024R1689/oj#art_68').
provenance(able_to_carry_out_activities_diligently/1, 'celex:32024R1689/oj#art_68').
provenance(fair_gender_and_geographical_representation/1, 'celex:32024R1689/oj#art_68').
provenance(advises_and_supports_ai_office/1, 'celex:32024R1689/oj#art_68').
provenance(supports_implementation_and_enforcement/1, 'celex:32024R1689/oj#art_68').
provenance(alerts_ai_office_of_systemic_risks/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_methodologies/1, 'celex:32024R1689/oj#art_68').
provenance(provides_advice_on_classification_systemic_risk/1, 'celex:32024R1689/oj#art_68').
provenance(provides_advice_on_classification_various_models/1, 'celex:32024R1689/oj#art_68').
provenance(contributes_to_tools_and_templates/1, 'celex:32024R1689/oj#art_68').
provenance(supports_market_surveillance_authorities/1, 'celex:32024R1689/oj#art_68').
provenance(supports_cross_border_market_surveillance/1, 'celex:32024R1689/oj#art_68').
provenance(supports_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_68').
provenance(performs_tasks_with_impartiality_and_objectivity/1, 'celex:32024R1689/oj#art_68').
provenance(ensures_confidentiality_of_information/1, 'celex:32024R1689/oj#art_68').
provenance(does_not_seek_or_take_instructions/1, 'celex:32024R1689/oj#art_68').
provenance(declaration_of_interests_publicly_available/1, 'celex:32024R1689/oj#art_68').
provenance(ai_office_establishes_conflict_of_interest_systems/1, 'celex:32024R1689/oj#art_68').
provenance(implementing_act_provisions_on_alerts_and_assistance/1, 'celex:32024R1689/oj#art_68').
provenance(must_establish_scientific_panel/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_fair_representation/2, 'celex:32024R1689/oj#art_68').
provenance(must_consult_board_on_expert_number/1, 'celex:32024R1689/oj#art_68').
provenance(must_ensure_confidentiality_systems/1, 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_3').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_74/par_11').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_68', 'celex:32024R1689/oj#art_68/par_1').

% ==== celex:32024R1689/oj#art_69 ====
declared(may_call_upon_experts/2, 'Member State may call upon experts of the scientific panel to support enforcement activities', 'celex:32024R1689/oj#art_69').
declared(may_be_required_to_pay_fees/2, 'Member State may be required to pay fees for advice and support provided by experts', 'celex:32024R1689/oj#art_69').
declared(must_facilitate_timely_access/2, 'Commission must facilitate timely access to experts by Member States as needed', 'celex:32024R1689/oj#art_69').
declared(must_ensure_efficient_organisation/1, 'Commission must ensure combination of support activities by Union AI testing support and experts is efficiently organised and provides best possible added value', 'celex:32024R1689/oj#art_69').
may_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert).
may_be_required_to_pay_fees(MemberState, fees(advice_and_support)) :-
    member_state(MemberState).
must_facilitate_timely_access(commission, MemberState) :-
    member_state(MemberState).
must_ensure_efficient_organisation(commission).
provenance(may_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/1, 'celex:32024R1689/oj#art_69').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').

% ==== celex:32024R1689/oj#art_70 ====
declared(must_establish_notifying_authority/1, 'Member State establishes or designates at least one notifying authority', 'celex:32024R1689/oj#art_70').
declared(must_establish_market_surveillance_authority/1, 'Member State establishes or designates at least one market surveillance authority', 'celex:32024R1689/oj#art_70').
declared(national_competent_authority_exercises_powers_independently/1, 'national competent authority exercises powers independently, impartially and without bias', 'celex:32024R1689/oj#art_70').
declared(national_competent_authority_member_refrains_from_incompatible_action/1, 'member of national competent authority refrains from action incompatible with duties', 'celex:32024R1689/oj#art_70').
declared(may_perform_by_designated_authorities/1, 'activities and tasks may be performed by one or more designated authorities in accordance with organisational needs of Member State', 'celex:32024R1689/oj#art_70').
declared(must_communicate_identity_to_commission/1, 'Member State communicates identity of notifying authorities and market surveillance authorities and their tasks to Commission', 'celex:32024R1689/oj#art_70').
declared(must_communicate_subsequent_changes_to_commission/1, 'Member State communicates subsequent changes to Commission', 'celex:32024R1689/oj#art_70').
declared(must_make_contact_information_publicly_available/1, 'Member State makes publicly available information on how competent authorities and single points of contact can be contacted through electronic communication means by 2 August 2025', 'celex:32024R1689/oj#art_70').
declared(must_designate_single_point_of_contact/1, 'Member State designates a market surveillance authority to act as single point of contact', 'celex:32024R1689/oj#art_70').
declared(must_notify_commission_of_single_point_of_contact/1, 'Member State notifies Commission of identity of single point of contact', 'celex:32024R1689/oj#art_70').
declared(commission_makes_list_of_single_points_of_contact_publicly_available/0, 'Commission makes list of single points of contact publicly available', 'celex:32024R1689/oj#art_70').
declared(must_provide_adequate_resources/1, 'Member State ensures national competent authorities are provided with adequate technical, financial and human resources and infrastructure', 'celex:32024R1689/oj#art_70').
declared(must_have_sufficient_personnel_permanently_available/1, 'national competent authorities have sufficient number of personnel permanently available', 'celex:32024R1689/oj#art_70').
declared(personnel_competences_and_expertise/1, 'personnel competences and expertise include in-depth understanding of AI technologies, data and data computing, personal data protection, cybersecurity, fundamental rights, health and safety risks and knowledge of existing standards and legal requirements', 'celex:32024R1689/oj#art_70').
declared(must_assess_and_update_competence_and_resource_requirements_annually/1, 'Member State assesses and if necessary updates competence and resource requirements on annual basis', 'celex:32024R1689/oj#art_70').
declared(must_ensure_adequate_cybersecurity/1, 'national competent authorities take appropriate measures to ensure adequate level of cybersecurity', 'celex:32024R1689/oj#art_70').
declared(must_act_in_accordance_with_confidentiality_obligations/1, 'national competent authorities act in accordance with confidentiality obligations set out in Article 78 when performing tasks', 'celex:32024R1689/oj#art_70').
declared(must_report_to_commission_on_resources/1, 'Member State reports to Commission on status of financial and human resources of national competent authorities with assessment of adequacy by 2 August 2025 and once every two years thereafter', 'celex:32024R1689/oj#art_70').
declared(commission_transmits_information_to_board/0, 'Commission transmits information to Board for discussion and possible recommendations', 'celex:32024R1689/oj#art_70').
declared(commission_facilitates_exchange_of_experience/0, 'Commission facilitates exchange of experience between national competent authorities', 'celex:32024R1689/oj#art_70').
declared(may_provide_guidance_and_advice/1, 'national competent authorities may provide guidance and advice on implementation of Regulation, in particular to SMEs including start-ups', 'celex:32024R1689/oj#art_70').
declared(must_consult_authorities_under_other_union_law/1, 'when providing guidance on AI system in areas covered by other Union law, national competent authorities under that Union law shall be consulted as appropriate', 'celex:32024R1689/oj#art_70').
declared(edps_acts_as_competent_authority_for_union_institutions/0, 'European Data Protection Supervisor acts as competent authority for supervision of Union institutions, bodies, offices or agencies falling within scope of Regulation', 'celex:32024R1689/oj#art_70').
must_establish_notifying_authority(MemberState) :-
    member_state(MemberState).
must_establish_market_surveillance_authority(MemberState) :-
    member_state(MemberState).
national_competent_authority_exercises_powers_independently(Authority) :-
    national_competent_authority(Authority).
national_competent_authority_member_refrains_from_incompatible_action(Member) :-
    national_competent_authority(Authority),
    member_of_authority(Member, Authority).
may_perform_by_designated_authorities(MemberState) :-
    member_state(MemberState),
    national_competent_authority_exercises_powers_independently(_Authority).
must_communicate_identity_to_commission(MemberState) :-
    member_state(MemberState),
    notifying_authority(Authority),
    market_surveillance_authority(MSAuthority),
    designated_by_member_state(Authority, MemberState),
    designated_by_member_state(MSAuthority, MemberState).
must_communicate_subsequent_changes_to_commission(MemberState) :-
    member_state(MemberState).
must_make_contact_information_publicly_available(MemberState) :-
    member_state(MemberState),
    within(days(2), months(august), years(2025)).
must_designate_single_point_of_contact(MemberState) :-
    member_state(MemberState),
    market_surveillance_authority(Authority),
    designated_by_member_state(Authority, MemberState).
must_notify_commission_of_single_point_of_contact(MemberState) :-
    member_state(MemberState),
    must_designate_single_point_of_contact(MemberState).
commission_makes_list_of_single_points_of_contact_publicly_available.
must_provide_adequate_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState).
must_have_sufficient_personnel_permanently_available(Authority) :-
    national_competent_authority(Authority),
    permanent_availability_of_personnel(Authority).
personnel_competences_and_expertise(Authority) :-
    national_competent_authority(Authority),
    must_have_sufficient_personnel_permanently_available(Authority).
must_assess_and_update_competence_and_resource_requirements_annually(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState).
must_ensure_adequate_cybersecurity(Authority) :-
    national_competent_authority(Authority).
must_act_in_accordance_with_confidentiality_obligations(Authority) :-
    national_competent_authority(Authority).
must_report_to_commission_on_resources(MemberState) :-
    member_state(MemberState),
    national_competent_authority(Authority),
    designated_by_member_state(Authority, MemberState),
    within(days(2), months(august), years(2025)).
commission_transmits_information_to_board.
commission_facilitates_exchange_of_experience.
may_provide_guidance_and_advice(Authority) :-
    national_competent_authority(Authority).
must_consult_authorities_under_other_union_law(Authority) :-
    national_competent_authority(Authority),
    other_union_harmonisation_legislation(_Legislation).
edps_acts_as_competent_authority_for_union_institutions.
provenance(must_establish_notifying_authority/1, 'celex:32024R1689/oj#art_70').
provenance(must_establish_market_surveillance_authority/1, 'celex:32024R1689/oj#art_70').
provenance(national_competent_authority_exercises_powers_independently/1, 'celex:32024R1689/oj#art_70').
provenance(national_competent_authority_member_refrains_from_incompatible_action/1, 'celex:32024R1689/oj#art_70').
provenance(may_perform_by_designated_authorities/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_identity_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_communicate_subsequent_changes_to_commission/1, 'celex:32024R1689/oj#art_70').
provenance(must_make_contact_information_publicly_available/1, 'celex:32024R1689/oj#art_70').
provenance(must_designate_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(must_notify_commission_of_single_point_of_contact/1, 'celex:32024R1689/oj#art_70').
provenance(commission_makes_list_of_single_points_of_contact_publicly_available/0, 'celex:32024R1689/oj#art_70').
provenance(must_provide_adequate_resources/1, 'celex:32024R1689/oj#art_70').
provenance(must_have_sufficient_personnel_permanently_available/1, 'celex:32024R1689/oj#art_70').
provenance(personnel_competences_and_expertise/1, 'celex:32024R1689/oj#art_70').
provenance(must_assess_and_update_competence_and_resource_requirements_annually/1, 'celex:32024R1689/oj#art_70').
provenance(must_ensure_adequate_cybersecurity/1, 'celex:32024R1689/oj#art_70').
provenance(must_act_in_accordance_with_confidentiality_obligations/1, 'celex:32024R1689/oj#art_70').
provenance(must_report_to_commission_on_resources/1, 'celex:32024R1689/oj#art_70').
provenance(commission_transmits_information_to_board/0, 'celex:32024R1689/oj#art_70').
provenance(commission_facilitates_exchange_of_experience/0, 'celex:32024R1689/oj#art_70').
provenance(may_provide_guidance_and_advice/1, 'celex:32024R1689/oj#art_70').
provenance(must_consult_authorities_under_other_union_law/1, 'celex:32024R1689/oj#art_70').
provenance(edps_acts_as_competent_authority_for_union_institutions/0, 'celex:32024R1689/oj#art_70').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_70/par_3').
references('celex:32024R1689/oj#art_70', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_71 ====
declared(eu_database/1, 'EU database for high-risk AI systems listed in Annex III', 'celex:32024R1689/oj#art_71').
declared(eu_database_contains/2, 'EU database contains information about system', 'celex:32024R1689/oj#art_71').
declared(eu_database_set_up_and_maintained_by_commission/0, 'Commission sets up and maintains EU database in collaboration with Member States', 'celex:32024R1689/oj#art_71').
declared(eu_database_data_entered_by/2, 'data entered into EU database by actor', 'celex:32024R1689/oj#art_71').
declared(eu_database_information_publicly_accessible/1, 'information in EU database is publicly accessible', 'celex:32024R1689/oj#art_71').
declared(eu_database_information_accessible_only_to/2, 'information in EU database accessible only to specified parties', 'celex:32024R1689/oj#art_71').
declared(eu_database_contains_personal_data_only_as_necessary/1, 'EU database contains personal data only insofar as necessary', 'celex:32024R1689/oj#art_71').
declared(commission_is_controller_of_eu_database/0, 'Commission is the controller of the EU database', 'celex:32024R1689/oj#art_71').
declared(commission_provides_support_for_eu_database/0, 'Commission makes available adequate technical and administrative support for EU database', 'celex:32024R1689/oj#art_71').
declared(eu_database_complies_with_accessibility_requirements/0, 'EU database complies with applicable accessibility requirements', 'celex:32024R1689/oj#art_71').
declared(must_set_up_and_maintain_eu_database/1, 'actor must set up and maintain EU database', 'celex:32024R1689/oj#art_71').
declared(must_enter_data_into_eu_database/2, 'actor must enter data into EU database', 'celex:32024R1689/oj#art_71').
declared(must_consult_relevant_experts/1, 'actor must consult relevant experts when setting functional specifications', 'celex:32024R1689/oj#art_71').
declared(must_consult_board/1, 'actor must consult the Board when updating functional specifications', 'celex:32024R1689/oj#art_71').
declared(data_listed_in_annex_8_section/2, 'data listed in specified Annex VIII section', 'celex:32024R1689/oj#art_71').
eu_database_set_up_and_maintained_by_commission.
must_set_up_and_maintain_eu_database(commission).
must_set_up_and_maintain_eu_database(commission) :-
    eu_database_set_up_and_maintained_by_commission.
must_consult_relevant_experts(commission).
must_consult_board(commission).
eu_database(E) :-
    eu_database_set_up_and_maintained_by_commission,
    E = eu_database.
eu_database_contains(eu_database, S) :-
    high_risk_ai_system(S),
    registered_in_eu_database(S).
eu_database_contains(eu_database, S) :-
    concluded_not_high_risk(S),
    registered_in_eu_database(S).
must_enter_data_into_eu_database(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    data_listed_in_annex_8_section(sec_1, D),
    data_listed_in_annex_8_section(sec_2, D).
must_enter_data_into_eu_database(AR, S) :-
    authorised_representative(AR),
    high_risk_ai_system(S),
    data_listed_in_annex_8_section(sec_1, D),
    data_listed_in_annex_8_section(sec_2, D).
must_enter_data_into_eu_database(D, S) :-
    deployer(D),
    used_by_public_authority_or_on_behalf(S),
    data_listed_in_annex_8_section(sec_3, _).
eu_database_information_publicly_accessible(I) :-
    registered_in_eu_database(S),
    I = information(S),
    \+ eu_database_information_accessible_only_to(I, _).
eu_database_information_accessible_only_to(I, market_surveillance_authority) :-
    I = information(S),
    registered_in_eu_database(S),
    \+ consent_given_for_public_access(S).
eu_database_information_accessible_only_to(I, commission) :-
    I = information(S),
    registered_in_eu_database(S),
    \+ consent_given_for_public_access(S).
eu_database_contains_personal_data_only_as_necessary(eu_database).
commission_is_controller_of_eu_database.
commission_provides_support_for_eu_database.
eu_database_complies_with_accessibility_requirements.
provenance(eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_set_up_and_maintained_by_commission/0, 'celex:32024R1689/oj#art_71').
provenance(eu_database_data_entered_by/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_information_publicly_accessible/1, 'celex:32024R1689/oj#art_71').
provenance(eu_database_information_accessible_only_to/2, 'celex:32024R1689/oj#art_71').
provenance(eu_database_contains_personal_data_only_as_necessary/1, 'celex:32024R1689/oj#art_71').
provenance(commission_is_controller_of_eu_database/0, 'celex:32024R1689/oj#art_71').
provenance(commission_provides_support_for_eu_database/0, 'celex:32024R1689/oj#art_71').
provenance(eu_database_complies_with_accessibility_requirements/0, 'celex:32024R1689/oj#art_71').
provenance(must_set_up_and_maintain_eu_database/1, 'celex:32024R1689/oj#art_71').
provenance(must_enter_data_into_eu_database/2, 'celex:32024R1689/oj#art_71').
provenance(must_consult_relevant_experts/1, 'celex:32024R1689/oj#art_71').
provenance(must_consult_board/1, 'celex:32024R1689/oj#art_71').
provenance(data_listed_in_annex_8_section/2, 'celex:32024R1689/oj#art_71').
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
declared(must_establish_post_market_monitoring_system/1, 'provider must establish and document a post-market monitoring system proportionate to nature of AI technologies and risks of high-risk AI system', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_system_actively_collects_data/1, 'post-market monitoring system actively and systematically collects, documents and analyses relevant data on performance of high-risk AI systems throughout their lifetime', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_data_source/2, 'data source for post-market monitoring: deployer or other source', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_evaluates_continuous_compliance/2, 'post-market monitoring allows provider to evaluate continuous compliance of AI system with requirements set out in Chapter 3 Section 2', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_includes_ai_interaction_analysis/1, 'post-market monitoring includes analysis of interaction with other AI systems where relevant', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_excludes_sensitive_operational_data/1, 'post-market monitoring obligation does not cover sensitive operational data of deployers which are law-enforcement authorities', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_based_on_plan/1, 'post-market monitoring system is based on a post-market monitoring plan', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_plan_part_of_technical_documentation/1, 'post-market monitoring plan is part of technical documentation referred to in Annex 4', 'celex:32024R1689/oj#art_72').
declared(commission_adopts_implementing_act_post_market_monitoring_plan/0, 'Commission adopts implementing act laying down template for post-market monitoring plan and list of elements by 2 February 2026', 'celex:32024R1689/oj#art_72').
declared(implementing_act_examination_procedure/0, 'implementing act adopted in accordance with examination procedure referred to in Article 98(2)', 'celex:32024R1689/oj#art_72').
declared(may_integrate_post_market_monitoring_elements/1, 'provider may integrate necessary elements into systems and plans already existing under Union harmonisation legislation listed in Annex 1 Section 1', 'celex:32024R1689/oj#art_72').
declared(integration_achieves_equivalent_protection/1, 'integration achieves equivalent level of protection', 'celex:32024R1689/oj#art_72').
declared(post_market_monitoring_applies_to_financial_institutions/1, 'Article 72(4) applies to high-risk AI systems referred to in Annex 3 point 5 placed on market or put into service by financial institutions subject to Union financial services law requirements', 'celex:32024R1689/oj#art_72').
must_establish_post_market_monitoring_system(P) :-
    provider(P),
    high_risk_ai_system(S),
    places_on_market(P, S).
post_market_monitoring_system_actively_collects_data(S) :-
    post_market_monitoring_system(S),
    high_risk_ai_system(S).
post_market_monitoring_data_source(S, deployer(D)) :-
    post_market_monitoring_system_actively_collects_data(S),
    deployer(D),
    provides_data_for_monitoring(D, S).
post_market_monitoring_data_source(S, other_source) :-
    post_market_monitoring_system_actively_collects_data(S).
post_market_monitoring_evaluates_continuous_compliance(P, S) :-
    provider(P),
    post_market_monitoring_system_actively_collects_data(S),
    high_risk_ai_system(S),
    places_on_market(P, S).
post_market_monitoring_includes_ai_interaction_analysis(S) :-
    post_market_monitoring_system_actively_collects_data(S),
    interacts_with_other_ai_systems(S).
post_market_monitoring_excludes_sensitive_operational_data(S) :-
    post_market_monitoring_system_actively_collects_data(S),
    deployer(D),
    law_enforcement_authority(D),
    sensitive_operational_data(Data),
    relates_to(Data, S).
post_market_monitoring_based_on_plan(S) :-
    post_market_monitoring_system(S),
    post_market_monitoring_plan(Plan),
    based_on(S, Plan).
post_market_monitoring_plan_part_of_technical_documentation(Plan) :-
    post_market_monitoring_plan(Plan),
    technical_documentation(Doc),
    part_of(Plan, Doc).
commission_adopts_implementing_act_post_market_monitoring_plan.
implementing_act_examination_procedure.
may_integrate_post_market_monitoring_elements(P) :-
    provider(P),
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    existing_post_market_monitoring_system_under_legislation(S),
    places_on_market(P, S).
integration_achieves_equivalent_protection(S) :-
    may_integrate_post_market_monitoring_elements(_P),
    high_risk_ai_system(S),
    equivalent_level_of_protection(S).
post_market_monitoring_applies_to_financial_institutions(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(F),
    places_on_market(F, S).
post_market_monitoring_applies_to_financial_institutions(S) :-
    high_risk_ai_system(S),
    annex_3_point_5(S),
    financial_institution(F),
    putting_into_service(F, S).
provenance(must_establish_post_market_monitoring_system/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_system_actively_collects_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_data_source/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_evaluates_continuous_compliance/2, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_includes_ai_interaction_analysis/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_excludes_sensitive_operational_data/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_based_on_plan/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_plan_part_of_technical_documentation/1, 'celex:32024R1689/oj#art_72').
provenance(commission_adopts_implementing_act_post_market_monitoring_plan/0, 'celex:32024R1689/oj#art_72').
provenance(implementing_act_examination_procedure/0, 'celex:32024R1689/oj#art_72').
provenance(may_integrate_post_market_monitoring_elements/1, 'celex:32024R1689/oj#art_72').
provenance(integration_achieves_equivalent_protection/1, 'celex:32024R1689/oj#art_72').
provenance(post_market_monitoring_applies_to_financial_institutions/1, 'celex:32024R1689/oj#art_72').
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
declared(must_report_serious_incident/2, 'who must report serious incident, what about', 'reconciled').
declared(serious_incident/1, 'incident leading to death, serious harm, or critical disruption', '3').
declared(causal_link_established/2, 'provider has established causal link between AI system and serious incident or reasonable likelihood of such link', 'celex:32024R1689/oj#art_73').
declared(provider_or_deployer_aware/2, 'provider or deployer becomes aware of serious incident', 'celex:32024R1689/oj#art_73').
declared(serious_incident_occurred_in_member_state/2, 'serious incident occurred in member state', 'celex:32024R1689/oj#art_73').
declared(report_made_within_days/3, 'report made within specified number of days after awareness', 'celex:32024R1689/oj#art_73').
declared(report_made_immediately/1, 'report made immediately', 'celex:32024R1689/oj#art_73').
declared(death_of_person/1, 'serious incident involves death of a person', 'celex:32024R1689/oj#art_73').
declared(causal_relationship_suspected/2, 'provider or deployer suspects causal relationship between high-risk AI system and serious incident', 'celex:32024R1689/oj#art_73').
declared(initial_report_incomplete/1, 'initial report that is incomplete submitted', 'celex:32024R1689/oj#art_73').
declared(complete_report_follows/1, 'complete report follows initial incomplete report', 'celex:32024R1689/oj#art_73').
declared(risk_assessment_performed/2, 'risk assessment of incident performed by provider', 'celex:32024R1689/oj#art_73').
declared(corrective_action_taken/2, 'corrective action taken by provider', 'celex:32024R1689/oj#art_73').
declared(investigation_involves_altering_ai_system/2, 'investigation involves altering AI system in way affecting subsequent evaluation', 'celex:32024R1689/oj#art_73').
declared(competent_authorities_informed_of_alteration/2, 'competent authorities informed of action altering AI system prior to performing investigation', 'celex:32024R1689/oj#art_73').
declared(national_public_authorities_or_bodies/1, 'national public authorities or bodies referred to in Article 77(1)', 'celex:32024R1689/oj#art_73').
declared(appropriate_measures_taken_within_days/3, 'market surveillance authority takes appropriate measures within specified days of receiving notification', 'celex:32024R1689/oj#art_73').
declared(notification_procedures_followed/1, 'notification procedures as provided in Regulation 2019/1020 followed', 'celex:32024R1689/oj#art_73').
declared(equivalent_reporting_obligations/1, 'Union legislative instruments laying down reporting obligations equivalent to those in this Regulation', 'celex:32024R1689/oj#art_73').
declared(serious_incident_limited_to_critical_infrastructure_disruption/1, 'serious incident limited to those referred to in Article 3(49)(c) - critical infrastructure disruption', 'celex:32024R1689/oj#art_73').
declared(safety_component_of_device/1, 'high-risk AI system which is safety component of device or is itself a device covered by Regulations 2017/745 or 2017/746', 'celex:32024R1689/oj#art_73').
declared(national_competent_authority_chosen_for_purpose/2, 'national competent authority chosen for that purpose by Member State where incident occurred', 'celex:32024R1689/oj#art_73').
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    market_surveillance_authority(MSA),
    member_state(MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, MSA)).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    causal_link_established(P, I),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(15)).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    provider_or_deployer_aware(P, I),
    report_made_within_days(report(I), P, days(15)).
report_made_within_days(report(I), P, Period) :-
    serious_incident(I),
    severity_of_serious_incident(I, Severity),
    period_takes_account_of_severity(Period, Severity).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    (widespread_infringement(I) ; serious_incident_critical_infrastructure(I)),
    provider_or_deployer_aware(P, I),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(2)).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    death_of_person(I),
    (causal_link_established(P, I) ; causal_relationship_suspected(P, I)),
    report_made_immediately(report(I)),
    report_made_within_days(report(I), P, days(10)).
permitted_incomplete_initial_report(P, serious_incident(I)) :-
    provider(P),
    serious_incident(I),
    initial_report_incomplete(report(I)),
    complete_report_follows(report(I)).
permitted_incomplete_initial_report(D, serious_incident(I)) :-
    deployer(D),
    serious_incident(I),
    initial_report_incomplete(report(I)),
    complete_report_follows(report(I)).
must_investigate_causes(P, serious_incident(I)) :-
    provider(P),
    serious_incident(I),
    without_delay(investigation(I)),
    risk_assessment_performed(P, I),
    corrective_action_taken(P, I).
must_cooperate_with_authorities(P, investigation(serious_incident(I))) :-
    provider(P),
    serious_incident(I),
    must_cooperate_with_authorities(P, competent_authorities),
    must_cooperate_with_authorities(P, notified_body).
must_not_alter_ai_system_without_informing(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    investigation_involves_altering_ai_system(P, S),
    \+ competent_authorities_informed_of_alteration(P, S).
competent_authorities_informed_of_alteration(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    serious_incident(I),
    investigation_involves_altering_ai_system(P, S),
    must_inform_market_surveillance_authority(P, alteration(S, I)).
must_inform_market_surveillance_authority(MSA, national_public_authorities) :-
    market_surveillance_authority(MSA),
    serious_incident(I),
    serious_incident_critical_infrastructure(I),
    national_market_surveillance_authority_notified(MSA, I, notification),
    national_public_authorities_or_bodies(NPA),
    must_inform_market_surveillance_authority(MSA, NPA).
must_develop_guidance(commission, serious_incident_reporting) :-
    guidance_deadline(days_from_date(date(2025, 8, 2))),
    guidance_assessed_regularly(serious_incident_reporting).
must_take_restrictive_measures(MSA, serious_incident(I)) :-
    market_surveillance_authority(MSA),
    serious_incident(I),
    national_market_surveillance_authority_notified(MSA, I, notification),
    appropriate_measures_taken_within_days(measures(I), MSA, days(7)),
    notification_procedures_followed(procedures_2019_1020).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    (placed_on_market(S) ; putting_into_service(S)),
    equivalent_reporting_obligations(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    serious_incident_limited_to_critical_infrastructure_disruption(I),
    market_surveillance_authority(MSA),
    member_state(MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, MSA)).
must_report_serious_incident(P, serious_incident(S, I, MS)) :-
    provider(P),
    high_risk_ai_system(S),
    safety_component_of_device(S),
    serious_incident(I),
    serious_incident_occurred_in_member_state(I, MS),
    serious_incident_limited_to_critical_infrastructure_disruption(I),
    national_competent_authority_chosen_for_purpose(NCA, MS),
    must_notify_market_surveillance_authority(P, serious_incident_report(I, NCA)).
must_notify_market_surveillance_authority(NCA, commission) :-
    national_competent_authority(NCA),
    serious_incident(I),
    national_market_surveillance_authority_notified(NCA, I, notification),
    without_delay(notification_to_commission(I)),
    inform_commission(member_state, serious_incident(I)).
serious_incident_critical_infrastructure(I) :-
    serious_incident(I),
    critical_infrastructure_disruption(I).
putting_into_service(S) :-
    ai_system(S),
    deployer(D),
    deployer_uses(D, S).
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_73').
provenance(causal_link_established/2, 'celex:32024R1689/oj#art_73').
provenance(provider_or_deployer_aware/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_occurred_in_member_state/2, 'celex:32024R1689/oj#art_73').
provenance(report_made_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(report_made_immediately/1, 'celex:32024R1689/oj#art_73').
provenance(death_of_person/1, 'celex:32024R1689/oj#art_73').
provenance(causal_relationship_suspected/2, 'celex:32024R1689/oj#art_73').
provenance(initial_report_incomplete/1, 'celex:32024R1689/oj#art_73').
provenance(complete_report_follows/1, 'celex:32024R1689/oj#art_73').
provenance(risk_assessment_performed/2, 'celex:32024R1689/oj#art_73').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_73').
provenance(investigation_involves_altering_ai_system/2, 'celex:32024R1689/oj#art_73').
provenance(competent_authorities_informed_of_alteration/2, 'celex:32024R1689/oj#art_73').
provenance(national_public_authorities_or_bodies/1, 'celex:32024R1689/oj#art_73').
provenance(appropriate_measures_taken_within_days/3, 'celex:32024R1689/oj#art_73').
provenance(notification_procedures_followed/1, 'celex:32024R1689/oj#art_73').
provenance(equivalent_reporting_obligations/1, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_limited_to_critical_infrastructure_disruption/1, 'celex:32024R1689/oj#art_73').
provenance(safety_component_of_device/1, 'celex:32024R1689/oj#art_73').
provenance(national_competent_authority_chosen_for_purpose/2, 'celex:32024R1689/oj#art_73').
provenance(permitted_incomplete_initial_report/2, 'celex:32024R1689/oj#art_73').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_73').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_73').
provenance(must_not_alter_ai_system_without_informing/2, 'celex:32024R1689/oj#art_73').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(must_develop_guidance/2, 'celex:32024R1689/oj#art_73').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_73').
provenance(must_notify_market_surveillance_authority/2, 'celex:32024R1689/oj#art_73').
provenance(serious_incident_critical_infrastructure/1, 'celex:32024R1689/oj#art_73').
provenance(putting_into_service/1, 'celex:32024R1689/oj#art_73').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_2').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_b').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_73/par_6/unp_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_3/unp_1/pnt_49/pnt_c').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_19').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_73', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_73', 'celex:32017R0745/oj').
references('celex:32024R1689/oj#art_73', 'celex:32017R0746/oj').
references('celex:32024R1689/oj#art_73', 'celex:32019R1020/oj#art_20').

% ==== celex:32024R1689/oj#art_74 ====
declared(market_surveillance_authority_for_ai_system/2, 'market surveillance authority designated for an AI system under this Regulation', 'celex:32024R1689/oj#art_74').
declared(economic_operator_reference_includes/1, 'reference to economic operator under Regulation 2019/1020 includes this operator', 'celex:32024R1689/oj#art_74').
declared(product_reference_includes/1, 'reference to product under Regulation 2019/1020 includes this AI system', 'celex:32024R1689/oj#art_74').
declared(must_report_competition_information/2, 'market surveillance authority must report competition-relevant information to Commission and national competition authorities', 'celex:32024R1689/oj#art_74').
declared(must_report_prohibited_practices/2, 'market surveillance authority must report use of prohibited practices and measures taken to Commission', 'celex:32024R1689/oj#art_74').
declared(sectoral_market_surveillance_authority/1, 'authority responsible for market surveillance under sectoral Union harmonisation legislation', 'celex:32024R1689/oj#art_74').
declared(may_designate_alternative_authority/2, 'Member State may designate alternative authority with coordination', 'celex:32024R1689/oj#art_74').
declared(equivalent_protection_procedures/1, 'sectoral legal acts provide procedures ensuring equivalent level of protection with same objective', 'celex:32024R1689/oj#art_74').
declared(sectoral_procedures_apply/1, 'relevant sectoral procedures apply instead of Articles 79-83', 'celex:32024R1689/oj#art_74').
declared(may_exercise_powers_remotely/2, 'market surveillance authority may exercise powers remotely', 'celex:32024R1689/oj#art_74').
declared(financial_supervision_authority/1, 'national authority responsible for financial supervision of regulated financial institutions', 'celex:32024R1689/oj#art_74').
declared(regulated_financial_institution/1, 'financial institution regulated by Union financial services law', 'celex:32024R1689/oj#art_74').
declared(must_report_to_ecb/2, 'national market surveillance authority must report prudential information to European Central Bank', 'celex:32024R1689/oj#art_74').
declared(credit_institution_participating_ssm/1, 'regulated credit institution participating in Single Supervisory Mechanism', 'celex:32024R1689/oj#art_74').
declared(data_protection_authority_designated/1, 'competent data protection supervisory authority designated as market surveillance authority', 'celex:32024R1689/oj#art_74').
declared(other_authority_designated/1, 'other authority designated pursuant to LED conditions', 'celex:32024R1689/oj#art_74').
declared(judicial_independence_preserved/0, 'market surveillance activities do not affect independence of judicial authorities', 'celex:32024R1689/oj#art_74').
declared(edps_acts_as_authority/1, 'European Data Protection Supervisor acts as market surveillance authority for this entity', 'celex:32024R1689/oj#art_74').
declared(union_institution_body_office_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_74').
declared(court_of_justice_judicial_capacity/1, 'Court of Justice of the European Union acting in its judicial capacity', 'celex:32024R1689/oj#art_74').
declared(must_facilitate_coordination/2, 'Member State must facilitate coordination between authorities', 'celex:32024R1689/oj#art_74').
declared(may_propose_joint_activities/2, 'market surveillance authorities and Commission may propose joint activities', 'celex:32024R1689/oj#art_74').
declared(joint_investigation_coordination_support/1, 'AI Office provides coordination support for joint investigations', 'celex:32024R1689/oj#art_74').
declared(full_access_to_documentation/2, 'market surveillance authority granted full access to provider documentation and data sets', 'celex:32024R1689/oj#art_74').
declared(access_to_source_code/2, 'market surveillance authority granted access to source code', 'celex:32024R1689/oj#art_74').
declared(source_code_access_necessary/1, 'access to source code is necessary to assess conformity with Chapter III Section 2 requirements', 'celex:32024R1689/oj#art_74').
declared(testing_procedures_exhausted/1, 'testing or auditing procedures based on provider data and documentation exhausted or insufficient', 'celex:32024R1689/oj#art_74').
declared(reasoned_request_for_source_code/1, 'reasoned request for source code access', 'celex:32024R1689/oj#art_74').
economic_operator_reference_includes(O) :-
    operator(O).
product_reference_includes(S) :-
    ai_system(S).
must_report_competition_information(A, information(competition_rules, identified_in_market_surveillance)) :-
    market_surveillance_authority(A),
    annually(A).
must_report_prohibited_practices(A, report(prohibited_practices_use_and_measures, year(Y))) :-
    market_surveillance_authority(A),
    annually(A),
    year(Y).
annually(_A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    sectoral_market_surveillance_authority(A).
may_designate_alternative_authority(M, A) :-
    member_state(M),
    market_surveillance_authority(A),
    coordination_ensured(A, sectoral_market_surveillance_authority).
coordination_ensured(_A, _B).
sectoral_procedures_apply(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S),
    equivalent_protection_procedures(S).
equivalent_protection_procedures(S) :-
    high_risk_ai_system(S),
    union_harmonisation_legislation_applies(S).
may_exercise_powers_remotely(A, powers(article_14_4_d_j, regulation_2019_1020)) :-
    market_surveillance_authority(A),
    appropriate(A).
appropriate(_A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    placed_on_market(S),
    regulated_financial_institution(I),
    used_by_financial_institution(S, I),
    financial_supervision_authority(A),
    direct_connection_with_financial_services(S).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    putting_into_service(S),
    regulated_financial_institution(I),
    used_by_financial_institution(S, I),
    financial_supervision_authority(A),
    direct_connection_with_financial_services(S).
used_by_financial_institution(S, I) :-
    high_risk_ai_system(S),
    regulated_financial_institution(I).
direct_connection_with_financial_services(_S).
may_designate_alternative_authority(M, A) :-
    member_state(M),
    market_surveillance_authority(A),
    coordination_ensured(A, financial_supervision_authority).
must_report_to_ecb(A, information(prudential_supervision, identified_in_market_surveillance)) :-
    market_surveillance_authority(A),
    credit_institution_participating_ssm(I),
    supervises_credit_institution(A, I),
    without_delay(A).
supervises_credit_institution(A, I) :-
    market_surveillance_authority(A),
    credit_institution_participating_ssm(I).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    for_purposes_of_law_enforcement(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_border_management(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_justice_and_democracy(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_6(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_7(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_8(S),
    data_protection_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    for_purposes_of_law_enforcement(S),
    other_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_border_management(S),
    other_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_for_justice_and_democracy(S),
    other_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_6(S),
    other_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_7(S),
    other_authority_designated(A).
market_surveillance_authority_for_ai_system(A, S) :-
    high_risk_ai_system(S),
    annex_3_point_8(S),
    other_authority_designated(A).
annex_3_point_6(S) :- high_risk_ai_system(S).
annex_3_point_7(S) :- high_risk_ai_system(S).
annex_3_point_8(S) :- high_risk_ai_system(S).
used_for_border_management(S) :- high_risk_ai_system(S).
used_for_justice_and_democracy(S) :- high_risk_ai_system(S).
judicial_independence_preserved.
edps_acts_as_authority(E) :-
    union_institution_body_office_agency(E),
    \+ court_of_justice_judicial_capacity(E).
must_facilitate_coordination(M, coordination(market_surveillance_authorities, other_relevant_authorities)) :-
    member_state(M).
may_propose_joint_activities(A, joint_activities(promoting_compliance, identifying_non_compliance, raising_awareness, providing_guidance)) :-
    market_surveillance_authority(A).
may_propose_joint_activities(ai_office, joint_activities(promoting_compliance, identifying_non_compliance, raising_awareness, providing_guidance)).
joint_investigation_coordination_support(ai_office).
full_access_to_documentation(A, access(documentation, training_data, validation_data, testing_data)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    provider(P),
    provides(P, S).
provides(P, S) :-
    provider(P),
    ai_system(S).
access_to_source_code(A, source_code(S)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    reasoned_request_for_source_code(request(A, S)),
    source_code_access_necessary(assessment(S, chapter_3_section_2_requirements)),
    testing_procedures_exhausted(procedures(S)).
must_treat_information_confidentially(A, information_or_documentation(obtained_by_market_surveillance_authority)) :-
    market_surveillance_authority(A).
provenance(market_surveillance_authority_for_ai_system/2, 'celex:32024R1689/oj#art_74').
provenance(economic_operator_reference_includes/1, 'celex:32024R1689/oj#art_74').
provenance(product_reference_includes/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_competition_information/2, 'celex:32024R1689/oj#art_74').
provenance(must_report_prohibited_practices/2, 'celex:32024R1689/oj#art_74').
provenance(sectoral_market_surveillance_authority/1, 'celex:32024R1689/oj#art_74').
provenance(may_designate_alternative_authority/2, 'celex:32024R1689/oj#art_74').
provenance(equivalent_protection_procedures/1, 'celex:32024R1689/oj#art_74').
provenance(sectoral_procedures_apply/1, 'celex:32024R1689/oj#art_74').
provenance(may_exercise_powers_remotely/2, 'celex:32024R1689/oj#art_74').
provenance(financial_supervision_authority/1, 'celex:32024R1689/oj#art_74').
provenance(regulated_financial_institution/1, 'celex:32024R1689/oj#art_74').
provenance(must_report_to_ecb/2, 'celex:32024R1689/oj#art_74').
provenance(credit_institution_participating_ssm/1, 'celex:32024R1689/oj#art_74').
provenance(data_protection_authority_designated/1, 'celex:32024R1689/oj#art_74').
provenance(other_authority_designated/1, 'celex:32024R1689/oj#art_74').
provenance(judicial_independence_preserved/0, 'celex:32024R1689/oj#art_74').
provenance(edps_acts_as_authority/1, 'celex:32024R1689/oj#art_74').
provenance(union_institution_body_office_agency/1, 'celex:32024R1689/oj#art_74').
provenance(court_of_justice_judicial_capacity/1, 'celex:32024R1689/oj#art_74').
provenance(must_facilitate_coordination/2, 'celex:32024R1689/oj#art_74').
provenance(may_propose_joint_activities/2, 'celex:32024R1689/oj#art_74').
provenance(joint_investigation_coordination_support/1, 'celex:32024R1689/oj#art_74').
provenance(full_access_to_documentation/2, 'celex:32024R1689/oj#art_74').
provenance(access_to_source_code/2, 'celex:32024R1689/oj#art_74').
provenance(source_code_access_necessary/1, 'celex:32024R1689/oj#art_74').
provenance(testing_procedures_exhausted/1, 'celex:32024R1689/oj#art_74').
provenance(reasoned_request_for_source_code/1, 'celex:32024R1689/oj#art_74').
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
declared(ai_office_has_market_surveillance_powers/1, 'AI Office has all powers of a market surveillance authority for monitoring and supervision', 'celex:32024R1689/oj#art_75').
declared(same_provider_developed_model_and_system/2, 'same provider developed both the general-purpose AI model and the AI system based on it', 'celex:32024R1689/oj#art_75').
declared(general_purpose_ai_system_usable_by_deployers/1, 'general-purpose AI system that can be used directly by deployers', 'celex:32024R1689/oj#art_75').
declared(general_purpose_ai_system_high_risk_purpose/1, 'general-purpose AI system usable by deployers for at least one purpose classified as high-risk', 'celex:32024R1689/oj#art_75').
declared(sufficient_reason_to_consider_non_compliant/2, 'market surveillance authority has sufficient reason to consider system non-compliant with requirements', 'celex:32024R1689/oj#art_75').
declared(unable_to_conclude_investigation/2, 'market surveillance authority unable to conclude investigation due to inability to access information related to general-purpose AI model', 'celex:32024R1689/oj#art_75').
declared(made_all_appropriate_efforts/1, 'authority made all appropriate efforts to obtain information', 'celex:32024R1689/oj#art_75').
declared(reasoned_request_to_ai_office/2, 'market surveillance authority submits reasoned request to AI Office for access to information', 'celex:32024R1689/oj#art_75').
declared(ai_office_supplies_information/2, 'AI Office supplies relevant information to applicant authority', 'celex:32024R1689/oj#art_75').
declared(within_days/2, 'action taken within specified number of days', 'celex:32024R1689/oj#art_75').
declared(information_relevant_to_establish_non_compliance/1, 'information relevant to establish whether high-risk AI system is non-compliant', 'celex:32024R1689/oj#art_75').
declared(safeguard_confidentiality_of_information/2, 'market surveillance authority safeguards confidentiality of information obtained', 'celex:32024R1689/oj#art_75').
declared(procedure_applies_mutatis_mutandis/2, 'procedure from another act applies mutatis mutandis', 'celex:32024R1689/oj#art_75').
ai_office_has_market_surveillance_powers(S) :-
    ai_system(S),
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    same_provider_developed_model_and_system(P, S),
    provider(P),
    ai_system_based_on_model(S, M).
ai_system_based_on_model(S, M) :-
    ai_system(S),
    general_purpose_ai_model(M),
    based_on_model(S, M).
based_on_model(S, M) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M).
same_provider_developed_model_and_system(P, S) :-
    provider(P),
    general_purpose_ai_model(M),
    general_purpose_ai_system(S),
    developed_by(P, M),
    developed_by(P, S).
developed_by(P, X) :-
    provider(P),
    (general_purpose_ai_model(X) ; ai_system(X)).
must_cooperate_with_ai_office(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system_usable_by_deployers(S),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).
must_inform_board_and_other_authorities(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system_usable_by_deployers(S),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).
sufficient_reason_to_consider_non_compliant(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    non_compliant_with_requirements(S).
non_compliant_with_requirements(S) :-
    high_risk_ai_system(S),
    \+ meets_requirements(S).
meets_requirements(S) :-
    high_risk_ai_system(S),
    conforms_to_requirements(S).
conforms_to_requirements(S) :-
    high_risk_ai_system(S),
    compliant(S).
reasoned_request_to_ai_office(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(A, S),
    made_all_appropriate_efforts(A).
unable_to_conclude_investigation(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    cannot_access_information(A, M).
cannot_access_information(A, M) :-
    market_surveillance_authority(A),
    general_purpose_ai_model(M),
    information_related_to_model(M),
    \+ has_access_to(A, M).
has_access_to(A, M) :-
    market_surveillance_authority(A),
    general_purpose_ai_model(M),
    access_granted(A, M).
information_related_to_model(M) :-
    general_purpose_ai_model(M).
made_all_appropriate_efforts(A) :-
    market_surveillance_authority(A),
    attempted_all_means(A).
attempted_all_means(A) :-
    market_surveillance_authority(A),
    exhausted_efforts(A).
must_supply_information_within(A, I) :-
    ai_office(Office),
    market_surveillance_authority(A),
    reasoned_request_to_ai_office(A, S),
    high_risk_ai_system(S),
    information_relevant_to_establish_non_compliance(I),
    within_days(30, supply(Office, A, I)).
ai_office_supplies_information(Office, A) :-
    ai_office(Office),
    market_surveillance_authority(A),
    reasoned_request_to_ai_office(A, _S),
    without_delay(0).
safeguard_confidentiality_of_information(A, I) :-
    market_surveillance_authority(A),
    information_obtained(A, I),
    must_treat_information_confidentially(A, I).
information_obtained(A, I) :-
    market_surveillance_authority(A),
    ai_office(Office),
    reasoned_request_to_ai_office(A, _S),
    supplied_by(Office, A, I).
supplied_by(Office, A, I) :-
    ai_office(Office),
    market_surveillance_authority(A),
    information_relevant_to_establish_non_compliance(I).
procedure_applies_mutatis_mutandis(chp_6_of_regulation_2019_1020, art_75_3) :-
    true.
general_purpose_ai_system_usable_by_deployers(S) :-
    general_purpose_ai_system(S),
    usable_by_deployers(S).
usable_by_deployers(S) :-
    general_purpose_ai_system(S),
    direct_use_by_deployers(S).
direct_use_by_deployers(S) :-
    general_purpose_ai_system(S),
    deployer_can_use_directly(S).
deployer_can_use_directly(S) :-
    general_purpose_ai_system(S).
general_purpose_ai_system_high_risk_purpose(S) :-
    general_purpose_ai_system_usable_by_deployers(S),
    high_risk_purpose(P),
    usable_for_purpose(S, P).
usable_for_purpose(S, P) :-
    general_purpose_ai_system(S),
    purpose(P),
    can_be_used_for(S, P).
can_be_used_for(S, P) :-
    general_purpose_ai_system(S),
    high_risk_purpose(P).
purpose(P) :-
    high_risk_purpose(P).
provenance(ai_office_has_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(same_provider_developed_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_usable_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_to_consider_non_compliant/2, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/2, 'celex:32024R1689/oj#art_75').
provenance(made_all_appropriate_efforts/1, 'celex:32024R1689/oj#art_75').
provenance(reasoned_request_to_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(ai_office_supplies_information/2, 'celex:32024R1689/oj#art_75').
provenance(within_days/2, 'celex:32024R1689/oj#art_75').
provenance(information_relevant_to_establish_non_compliance/1, 'celex:32024R1689/oj#art_75').
provenance(safeguard_confidentiality_of_information/2, 'celex:32024R1689/oj#art_75').
provenance(procedure_applies_mutatis_mutandis/2, 'celex:32024R1689/oj#art_75').
provenance(ai_system_based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(developed_by/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_other_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(non_compliant_with_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(meets_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(conforms_to_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(compliant/1, 'celex:32024R1689/oj#art_75').
provenance(cannot_access_information/2, 'celex:32024R1689/oj#art_75').
provenance(has_access_to/2, 'celex:32024R1689/oj#art_75').
provenance(access_granted/2, 'celex:32024R1689/oj#art_75').
provenance(information_related_to_model/1, 'celex:32024R1689/oj#art_75').
provenance(attempted_all_means/1, 'celex:32024R1689/oj#art_75').
provenance(exhausted_efforts/1, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within/2, 'celex:32024R1689/oj#art_75').
provenance(information_obtained/2, 'celex:32024R1689/oj#art_75').
provenance(supplied_by/3, 'celex:32024R1689/oj#art_75').
provenance(usable_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(direct_use_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(deployer_can_use_directly/1, 'celex:32024R1689/oj#art_75').
provenance(usable_for_purpose/2, 'celex:32024R1689/oj#art_75').
provenance(can_be_used_for/2, 'celex:32024R1689/oj#art_75').
provenance(purpose/1, 'celex:32024R1689/oj#art_75').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').

% ==== celex:32024R1689/oj#art_76 ====
declared(market_surveillance_authority_has_competences_and_powers/1, 'market surveillance authority has competences and powers to ensure testing in real world conditions is in accordance with the regulation', 'celex:32024R1689/oj#art_76').
declared(verify_compliance_with_art_60/1, 'market surveillance authority verifies compliance with Article 60 as part of supervisory role for AI regulatory sandbox', 'celex:32024R1689/oj#art_76').
declared(may_allow_testing_in_derogation/2, 'market surveillance authority may allow testing in real world conditions by provider or prospective provider in derogation from conditions in Article 60(4)(f) and (g)', 'celex:32024R1689/oj#art_76').
declared(may_suspend_or_terminate_testing/1, 'market surveillance authority may suspend or terminate testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(may_require_modification_of_testing/1, 'market surveillance authority may require provider or prospective provider and deployer or prospective deployer to modify any aspect of testing in real world conditions', 'celex:32024R1689/oj#art_76').
declared(decision_or_objection_indicates_grounds_and_challenge/1, 'decision or objection indicates grounds and how provider or prospective provider can challenge', 'celex:32024R1689/oj#art_76').
declared(communicate_grounds_to_other_member_states/1, 'market surveillance authority communicates grounds to market surveillance authorities of other Member States where AI system has been tested', 'celex:32024R1689/oj#art_76').
market_surveillance_authority_has_competences_and_powers(A) :-
    market_surveillance_authority(A).
must_ensure_testing_in_real_world_conditions_in_accordance(A) :-
    market_surveillance_authority(A),
    market_surveillance_authority_has_competences_and_powers(A).
verify_compliance_with_art_60(A) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    supervised_within_sandbox(S).
may_allow_testing_in_derogation(A, testing_by_provider_or_prospective_provider) :-
    market_surveillance_authority(A),
    testing_in_real_world_conditions(S),
    ai_regulatory_sandbox(S),
    verify_compliance_with_art_60(A).
may_suspend_or_terminate_testing(A) :-
    market_surveillance_authority(A),
    informed_of_serious_incident(A, _Provider, _ThirdParty),
    testing_in_real_world_conditions(S).
may_suspend_or_terminate_testing(A) :-
    market_surveillance_authority(A),
    other_grounds_for_considering_conditions_not_met(A, S),
    testing_in_real_world_conditions(S).
may_require_modification_of_testing(A) :-
    market_surveillance_authority(A),
    informed_of_serious_incident(A, _Provider, _ThirdParty),
    testing_in_real_world_conditions(S).
may_require_modification_of_testing(A) :-
    market_surveillance_authority(A),
    other_grounds_for_considering_conditions_not_met(A, S),
    testing_in_real_world_conditions(S).
decision_or_objection_indicates_grounds_and_challenge(A) :-
    market_surveillance_authority(A),
    taken_decision_referred_to_in_par_3(A).
decision_or_objection_indicates_grounds_and_challenge(A) :-
    market_surveillance_authority(A),
    issued_objection_meaning_art_60_par_4_unp_1_pnt_b(A).
communicate_grounds_to_other_member_states(A) :-
    market_surveillance_authority(A),
    taken_decision_referred_to_in_par_3(A),
    member_state(OtherMS),
    member_state(OtherMS),
    OtherMS \= A,
    tested_in_member_state(S, OtherMS),
    testing_in_real_world_conditions(S).
provenance(market_surveillance_authority_has_competences_and_powers/1, 'celex:32024R1689/oj#art_76').
provenance(verify_compliance_with_art_60/1, 'celex:32024R1689/oj#art_76').
provenance(may_allow_testing_in_derogation/2, 'celex:32024R1689/oj#art_76').
provenance(may_suspend_or_terminate_testing/1, 'celex:32024R1689/oj#art_76').
provenance(may_require_modification_of_testing/1, 'celex:32024R1689/oj#art_76').
provenance(decision_or_objection_indicates_grounds_and_challenge/1, 'celex:32024R1689/oj#art_76').
provenance(communicate_grounds_to_other_member_states/1, 'celex:32024R1689/oj#art_76').
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
declared(documentation_created_or_maintained_under_regulation/1, 'documentation created or maintained under this regulation', 'celex:32024R1689/oj#art_77').
declared(accessible_language_and_format/1, 'documentation in accessible language and format', 'celex:32024R1689/oj#art_77').
declared(access_necessary_for_mandate/2, 'access to documentation is necessary for effectively fulfilling mandate of authority', 'celex:32024R1689/oj#art_77').
declared(request_and_access_documentation/2, 'fundamental rights authority requests and accesses documentation', 'celex:32024R1689/oj#art_77').
declared(inform_market_surveillance_authority_of_request/2, 'fundamental rights authority informs market surveillance authority of request', 'celex:32024R1689/oj#art_77').
declared(identified_by_member_state/2, 'member state identifies fundamental rights authority', 'celex:32024R1689/oj#art_77').
declared(list_publicly_available/1, 'list of fundamental rights authorities made publicly available', 'celex:32024R1689/oj#art_77').
declared(notified_to_commission_and_member_states/2, 'member state notifies list to Commission and other Member States', 'celex:32024R1689/oj#art_77').
declared(list_kept_up_to_date/1, 'member state keeps list of fundamental rights authorities up to date', 'celex:32024R1689/oj#art_77').
declared(documentation_insufficient_to_ascertain_infringement/1, 'documentation insufficient to ascertain whether infringement of fundamental rights obligations has occurred', 'celex:32024R1689/oj#art_77').
declared(reasoned_request_to_market_surveillance_authority/2, 'fundamental rights authority makes reasoned request to market surveillance authority', 'celex:32024R1689/oj#art_77').
declared(organise_testing_of_high_risk_ai_system/2, 'market surveillance authority organises testing of high-risk AI system', 'celex:32024R1689/oj#art_77').
declared(close_involvement_of_requesting_authority/2, 'testing organised with close involvement of requesting fundamental rights authority', 'celex:32024R1689/oj#art_77').
declared(testing_within_reasonable_time/1, 'testing organised within reasonable time following request', 'celex:32024R1689/oj#art_77').
declared(information_treated_confidentially/2, 'information or documentation obtained treated in accordance with confidentiality obligations', 'celex:32024R1689/oj#art_77').
fundamental_rights_authority(A) :-
    national_public_authority_or_body(A),
    supervises_or_enforces_fundamental_rights_obligations(A).
request_and_access_documentation(A, D) :-
    fundamental_rights_authority(A),
    documentation_created_or_maintained_under_regulation(D),
    high_risk_ai_system(S),
    related_to_use(D, S),
    accessible_language_and_format(D),
    access_necessary_for_mandate(A, D).
must_inform_market_surveillance_authority(A, request(D)) :-
    fundamental_rights_authority(A),
    request_and_access_documentation(A, D),
    member_state(M),
    market_surveillance_authority(MSA),
    concerned_member_state(A, M),
    market_surveillance_authority_of_member_state(MSA, M).
identified_by_member_state(M, A) :-
    member_state(M),
    fundamental_rights_authority(A).
list_publicly_available(L) :-
    member_state(M),
    identified_by_member_state(M, A),
    list_contains(L, A).
notified_to_commission_and_member_states(M, L) :-
    member_state(M),
    list_publicly_available(L),
    commission(C),
    other_member_states(OMS),
    notify(M, C, L),
    notify(M, OMS, L).
list_kept_up_to_date(M) :-
    member_state(M),
    list_publicly_available(L),
    member_state_maintains_list(M, L).
reasoned_request_to_market_surveillance_authority(A, MSA) :-
    fundamental_rights_authority(A),
    documentation_insufficient_to_ascertain_infringement(D),
    market_surveillance_authority(MSA),
    from_competent_authority(reasoned_request, A).
organise_testing_of_high_risk_ai_system(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    reasoned_request_to_market_surveillance_authority(A, MSA),
    close_involvement_of_requesting_authority(A, MSA),
    testing_within_reasonable_time(request(A, S)).
must_treat_information_confidentially(A, info(D)) :-
    fundamental_rights_authority(A),
    information_or_documentation_obtained(A, D),
    pursuant_to(D, 'celex:32024R1689/oj#art_77'),
    confidentiality_obligations_set_out_in('celex:32024R1689/oj#art_78').
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(documentation_created_or_maintained_under_regulation/1, 'celex:32024R1689/oj#art_77').
provenance(accessible_language_and_format/1, 'celex:32024R1689/oj#art_77').
provenance(access_necessary_for_mandate/2, 'celex:32024R1689/oj#art_77').
provenance(request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(inform_market_surveillance_authority_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(identified_by_member_state/2, 'celex:32024R1689/oj#art_77').
provenance(list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(notified_to_commission_and_member_states/2, 'celex:32024R1689/oj#art_77').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(documentation_insufficient_to_ascertain_infringement/1, 'celex:32024R1689/oj#art_77').
provenance(reasoned_request_to_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(organise_testing_of_high_risk_ai_system/2, 'celex:32024R1689/oj#art_77').
provenance(close_involvement_of_requesting_authority/2, 'celex:32024R1689/oj#art_77').
provenance(testing_within_reasonable_time/1, 'celex:32024R1689/oj#art_77').
provenance(information_treated_confidentially/2, 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').

% ==== celex:32024R1689/oj#art_78 ====
declared(must_respect_confidentiality/2, 'who must respect confidentiality, of what information', 'celex:32024R1689/oj#art_78').
declared(protected_by_confidentiality/1, 'information protected by confidentiality obligation', 'celex:32024R1689/oj#art_78').
declared(intellectual_property_rights/1, 'intellectual property rights', 'celex:32024R1689/oj#art_78').
declared(confidential_business_information/1, 'confidential business information', 'celex:32024R1689/oj#art_78').
declared(trade_secrets/1, 'trade secrets', 'celex:32024R1689/oj#art_78').
declared(source_code/1, 'source code', 'celex:32024R1689/oj#art_78').
declared(effective_implementation_of_regulation/1, 'effective implementation of the regulation', 'celex:32024R1689/oj#art_78').
declared(inspections_investigations_audits/1, 'inspections, investigations or audits', 'celex:32024R1689/oj#art_78').
declared(public_and_national_security_interests/1, 'public and national security interests', 'celex:32024R1689/oj#art_78').
declared(conduct_of_criminal_or_administrative_proceedings/1, 'conduct of criminal or administrative proceedings', 'celex:32024R1689/oj#art_78').
declared(information_classified_pursuant_to_law/1, 'information classified pursuant to Union or national law', 'celex:32024R1689/oj#art_78').
declared(must_request_only_strictly_necessary_data/2, 'authority must request only data strictly necessary, for what purpose', 'celex:32024R1689/oj#art_78').
declared(must_put_in_place_cybersecurity_measures/2, 'authority must put in place adequate and effective cybersecurity measures, for what', 'celex:32024R1689/oj#art_78').
declared(must_delete_data_when_no_longer_needed/2, 'authority must delete data when no longer needed, what data', 'celex:32024R1689/oj#art_78').
declared(confidential_information_exchange/2, 'information exchanged on confidential basis, between whom', 'celex:32024R1689/oj#art_78').
declared(must_not_disclose_without_prior_consultation/3, 'information must not be disclosed without prior consultation, of whom, what information', 'celex:32024R1689/oj#art_78').
declared(jeopardises_public_and_national_security/1, 'disclosure would jeopardise public and national security interests', 'celex:32024R1689/oj#art_78').
declared(sensitive_operational_data_excluded_from_exchange/1, 'sensitive operational data excluded from exchange of information', 'celex:32024R1689/oj#art_78').
declared(technical_documentation_remains_on_premises/2, 'technical documentation remains on premises, of which authority', 'celex:32024R1689/oj#art_78').
declared(must_ensure_immediate_access_to_documentation/2, 'authority must ensure immediate access to documentation, for which market surveillance authority', 'celex:32024R1689/oj#art_78').
declared(staff_with_security_clearance_only/1, 'only staff with appropriate security clearance allowed access', 'celex:32024R1689/oj#art_78').
declared(must_not_affect_exchange_of_information_rights/1, 'provisions do not affect rights or obligations regarding exchange of information and dissemination of warnings', 'celex:32024R1689/oj#art_78').
declared(must_not_affect_criminal_law_information_obligations/1, 'provisions do not affect obligations to provide information under criminal law', 'celex:32024R1689/oj#art_78').
declared(may_exchange_confidential_information_with_third_countries/2, 'Commission and Member States may exchange confidential information, with which third country regulatory authorities', 'celex:32024R1689/oj#art_78').
declared(bilateral_or_multilateral_confidentiality_arrangement/1, 'bilateral or multilateral confidentiality arrangement guaranteeing adequate level of confidentiality', 'celex:32024R1689/oj#art_78').
declared(involved_in_application_of_regulation/1, 'natural or legal person involved in application of the regulation', 'celex:32024R1689/oj#art_78').
declared(obtained_in_carrying_out_tasks/1, 'information and data obtained in carrying out tasks and activities', 'celex:32024R1689/oj#art_78').
must_respect_confidentiality(Actor, Info) :-
    involved_in_application_of_regulation(Actor),
    obtained_in_carrying_out_tasks(Info).
must_respect_confidentiality(commission, Info) :-
    obtained_in_carrying_out_tasks(Info).
must_respect_confidentiality(market_surveillance_authority(A), Info) :-
    market_surveillance_authority(A),
    obtained_in_carrying_out_tasks(Info).
must_respect_confidentiality(notified_body(B), Info) :-
    notified_body(B),
    obtained_in_carrying_out_tasks(Info).
protected_by_confidentiality(Info) :-
    intellectual_property_rights(Info).
protected_by_confidentiality(Info) :-
    confidential_business_information(Info).
protected_by_confidentiality(Info) :-
    trade_secrets(Info).
protected_by_confidentiality(Info) :-
    source_code(Info).
protected_by_confidentiality(Info) :-
    effective_implementation_of_regulation(Info),
    inspections_investigations_audits(Purpose),
    serves(Info, Purpose).
protected_by_confidentiality(Info) :-
    public_and_national_security_interests(Info).
protected_by_confidentiality(Info) :-
    conduct_of_criminal_or_administrative_proceedings(Info).
protected_by_confidentiality(Info) :-
    information_classified_pursuant_to_law(Info).
must_treat_information_confidentially(Actor, Info) :-
    must_respect_confidentiality(Actor, Info),
    protected_by_confidentiality(Info).
must_request_only_strictly_necessary_data(Authority, Purpose) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for(Purpose, assessment_of_risk_posed_by_ai_systems).
must_request_only_strictly_necessary_data(Authority, Purpose) :-
    involved_in_application_of_regulation(Authority),
    strictly_necessary_for(Purpose, exercise_of_powers).
must_put_in_place_cybersecurity_measures(Authority, Info) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Info),
    adequate_and_effective(cybersecurity_measures),
    protects(security_and_confidentiality, Info).
must_delete_data_when_no_longer_needed(Authority, Data) :-
    involved_in_application_of_regulation(Authority),
    obtained_in_carrying_out_tasks(Data),
    no_longer_needed_for_original_purpose(Data).
confidential_information_exchange(Info, between(Authority1, Authority2)) :-
    national_competent_authority(Authority1),
    national_competent_authority(Authority2),
    exchanged_on_confidential_basis(Info).
confidential_information_exchange(Info, between(national_competent_authority(A), commission)) :-
    national_competent_authority(A),
    exchanged_on_confidential_basis(Info).
must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_law_enforcement_authority(S, A),
    law_enforcement_authority(A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).
must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_border_control_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).
must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_immigration_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).
must_not_disclose_without_prior_consultation(Info, OriginatingAuthority, deployer(D)) :-
    confidential_information_exchange(Info, between(OriginatingAuthority, _)),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    used_by_asylum_authority(S, A),
    deployer_of(S, D),
    jeopardises_public_and_national_security(disclosure(Info)).
sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, law_enforcement).
sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, border_control).
sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, immigration).
sensitive_operational_data_excluded_from_exchange(Info) :-
    sensitive_operational_data(Info),
    relates_to_activities_of(Info, asylum).
technical_documentation_remains_on_premises(Doc, Authority) :-
    law_enforcement_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).
technical_documentation_remains_on_premises(Doc, Authority) :-
    immigration_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).
technical_documentation_remains_on_premises(Doc, Authority) :-
    asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    technical_documentation_of(S, Doc).
must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    law_enforcement_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).
must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    immigration_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).
must_ensure_immediate_access_to_documentation(Authority, MarketSurveillanceAuthority) :-
    asylum_authority(Authority),
    provider(Authority),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    market_surveillance_authority(MarketSurveillanceAuthority),
    upon_request_immediate_access_granted(MarketSurveillanceAuthority, documentation_of(S)).
staff_with_security_clearance_only(Staff) :-
    market_surveillance_authority(A),
    staff_of(Staff, A),
    holds_appropriate_level_of_security_clearance(Staff).
must_not_affect_exchange_of_information_rights(commission).
must_not_affect_exchange_of_information_rights(member_state(M)) :-
    member_state(M).
must_not_affect_exchange_of_information_rights(notified_body(B)) :-
    notified_body(B).
must_not_affect_criminal_law_information_obligations(member_state(M)) :-
    member_state(M).
may_exchange_confidential_information_with_third_countries(Info, RegulatoryAuthority) :-
    regulatory_authority_of_third_country(RegulatoryAuthority),
    bilateral_or_multilateral_confidentiality_arrangement(Arrangement),
    concluded_with(Arrangement, RegulatoryAuthority),
    guarantees_adequate_level_of_confidentiality(Arrangement),
    necessary_for_purposes(Info, international_trade_agreements).
involved_in_application_of_regulation(commission).
involved_in_application_of_regulation(market_surveillance_authority(A)) :-
    market_surveillance_authority(A).
involved_in_application_of_regulation(notified_body(B)) :-
    notified_body(B).
involved_in_application_of_regulation(Person) :-
    natural_or_legal_person(Person),
    involved_in_application_of_regulation_tasks(Person).
provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(protected_by_confidentiality/1, 'celex:32024R1689/oj#art_78').
provenance(intellectual_property_rights/1, 'celex:32024R1689/oj#art_78').
provenance(confidential_business_information/1, 'celex:32024R1689/oj#art_78').
provenance(trade_secrets/1, 'celex:32024R1689/oj#art_78').
provenance(source_code/1, 'celex:32024R1689/oj#art_78').
provenance(effective_implementation_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(inspections_investigations_audits/1, 'celex:32024R1689/oj#art_78').
provenance(public_and_national_security_interests/1, 'celex:32024R1689/oj#art_78').
provenance(conduct_of_criminal_or_administrative_proceedings/1, 'celex:32024R1689/oj#art_78').
provenance(information_classified_pursuant_to_law/1, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_strictly_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_put_in_place_cybersecurity_measures/2, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(confidential_information_exchange/2, 'celex:32024R1689/oj#art_78').
provenance(must_not_disclose_without_prior_consultation/3, 'celex:32024R1689/oj#art_78').
provenance(jeopardises_public_and_national_security/1, 'celex:32024R1689/oj#art_78').
provenance(sensitive_operational_data_excluded_from_exchange/1, 'celex:32024R1689/oj#art_78').
provenance(technical_documentation_remains_on_premises/2, 'celex:32024R1689/oj#art_78').
provenance(must_ensure_immediate_access_to_documentation/2, 'celex:32024R1689/oj#art_78').
provenance(staff_with_security_clearance_only/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_affect_exchange_of_information_rights/1, 'celex:32024R1689/oj#art_78').
provenance(must_not_affect_criminal_law_information_obligations/1, 'celex:32024R1689/oj#art_78').
provenance(may_exchange_confidential_information_with_third_countries/2, 'celex:32024R1689/oj#art_78').
provenance(bilateral_or_multilateral_confidentiality_arrangement/1, 'celex:32024R1689/oj#art_78').
provenance(involved_in_application_of_regulation/1, 'celex:32024R1689/oj#art_78').
provenance(obtained_in_carrying_out_tasks/1, 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').

% ==== celex:32024R1689/oj#art_79 ====
declared(market_surveillance_authority/1, 'national authority carrying out market surveillance', 'reconciled').
declared(notified_body/1, 'conformity assessment body notified in accordance with the regulation', 'reconciled').
declared(operator/1, 'provider, product manufacturer, deployer, authorised representative, importer or distributor', 'reconciled').
declared(ai_system/1, 'machine‑based system with autonomy', 'reconciled').
declared(harmonised_standard/1, 'standard defined in EU legislation', 'reconciled').
declared(common_specification/1, 'set of technical specifications to comply with requirements', 'reconciled').
declared(ai_system_presenting_risk/1, 'AI system presenting a risk as defined in Article 79(1)', 'celex:32024R1689/oj#art_79').
declared(sufficient_reason_to_consider_risk/2, 'market surveillance authority has sufficient reason to consider AI system presents risk', 'celex:32024R1689/oj#art_79').
declared(evaluation_of_compliance/2, 'market surveillance authority carries out evaluation of AI system compliance with requirements and obligations', 'celex:32024R1689/oj#art_79').
declared(particular_attention_vulnerable_groups/1, 'particular attention given to AI systems presenting risk to vulnerable groups', 'celex:32024R1689/oj#art_79').
declared(inform_and_cooperate_fundamental_rights/2, 'market surveillance authority informs and fully cooperates with national public authorities on fundamental rights risks', 'celex:32024R1689/oj#art_79').
declared(operator_cooperation_required/2, 'relevant operators cooperate with market surveillance authority and national public authorities', 'celex:32024R1689/oj#art_79').
declared(non_compliance_found/2, 'market surveillance authority finds AI system does not comply with requirements and obligations', 'celex:32024R1689/oj#art_79').
declared(corrective_action_period/2, 'period prescribed by market surveillance authority for corrective action, at most 15 working days or as provided in Union harmonisation legislation', 'celex:32024R1689/oj#art_79').
declared(inform_notified_body/2, 'market surveillance authority informs relevant notified body of measures', 'celex:32024R1689/oj#art_79').
declared(non_compliance_not_restricted_national/1, 'non-compliance is not restricted to national territory', 'celex:32024R1689/oj#art_79').
declared(inform_commission_and_member_states/3, 'market surveillance authority informs Commission and other Member States of evaluation results and required actions', 'celex:32024R1689/oj#art_79').
declared(corrective_action_all_union_market/2, 'operator ensures corrective action taken for all AI systems made available on Union market', 'celex:32024R1689/oj#art_79').
declared(inadequate_corrective_action/2, 'operator does not take adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_79').
declared(provisional_measures_taken/2, 'market surveillance authority takes provisional measures to prohibit, restrict, withdraw or recall', 'celex:32024R1689/oj#art_79').
declared(notify_provisional_measures/3, 'market surveillance authority notifies Commission and other Member States of provisional measures', 'celex:32024R1689/oj#art_79').
declared(notification_details_included/2, 'notification includes all available details about non-compliant AI system', 'celex:32024R1689/oj#art_79').
declared(non_compliance_cause_identified/2, 'market surveillance authority indicates cause of non-compliance', 'celex:32024R1689/oj#art_79').
declared(other_authorities_inform_of_measures/3, 'other market surveillance authorities inform Commission and Member States of measures and objections', 'celex:32024R1689/oj#art_79').
declared(provisional_measure_deemed_justified/1, 'provisional measure deemed justified after no objection within three months', 'celex:32024R1689/oj#art_79').
declared(objection_raised/2, 'objection raised by market surveillance authority of Member State or Commission', 'celex:32024R1689/oj#art_79').
declared(period_reduced_for_art_5_non_compliance/1, 'three-month period reduced to 30 days for non-compliance with Article 5 prohibition', 'celex:32024R1689/oj#art_79').
ai_system_presenting_risk(S) :-
    ai_system(S),
    presents_risk(S),
    risk_to_health_safety_fundamental_rights(S).
risk_to_health_safety_fundamental_rights(S) :-
    risk_to_health_or_safety(S).
risk_to_health_safety_fundamental_rights(S) :-
    risk_to_fundamental_rights(S).
sufficient_reason_to_consider_risk(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    ai_system_presenting_risk(S).
evaluation_of_compliance(A, S) :-
    sufficient_reason_to_consider_risk(A, S),
    ai_system(S).
particular_attention_vulnerable_groups(S) :-
    evaluation_of_compliance(_A, S),
    ai_system_presenting_risk(S).
inform_and_cooperate_fundamental_rights(A, S) :-
    evaluation_of_compliance(A, S),
    risk_to_fundamental_rights(S).
operator_cooperation_required(O, A) :-
    operator(O),
    evaluation_of_compliance(A, _S),
    member_state(A).
non_compliance_found(A, S) :-
    evaluation_of_compliance(A, S),
    \+ meets_all_requirements(S).
meets_all_requirements(S) :-
    ai_system(S),
    complies_with_requirements(S).
must_take_corrective_actions(O, S) :-
    operator(O),
    non_compliance_found(A, S),
    member_state(A),
    without_delay(corrective_action_required(O, S)).
corrective_action_period(A, period(working_days(15))) :-
    market_surveillance_authority(A),
    member_state(A).
corrective_action_period(A, period(as_in_union_harmonisation_legislation)) :-
    market_surveillance_authority(A),
    member_state(A).
inform_notified_body(A, B) :-
    market_surveillance_authority(A),
    notified_body(B),
    non_compliance_found(A, _S).
non_compliance_not_restricted_national(S) :-
    non_compliance_found(_A, S),
    ai_system(S).
inform_commission_and_member_states(A, S, results(evaluation, actions_required)) :-
    market_surveillance_authority(A),
    member_state(A),
    non_compliance_not_restricted_national(S),
    without_delay.
corrective_action_all_union_market(O, S) :-
    operator(O),
    non_compliance_found(_A, S),
    made_available_on_union_market(O, S).
made_available_on_union_market(O, S) :-
    operator(O),
    ai_system(S),
    making_available_on_market(S).
inadequate_corrective_action(O, S) :-
    operator(O),
    non_compliance_found(A, S),
    \+ adequate_corrective_action_taken(O, S, A).
adequate_corrective_action_taken(O, S, A) :-
    operator(O),
    non_compliance_found(A, S),
    corrective_action_completed(O, S).
provisional_measures_taken(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    inadequate_corrective_action(_O, S),
    measure(prohibit_or_restrict_or_withdraw_or_recall).
notify_provisional_measures(A, S, commission_and_member_states) :-
    market_surveillance_authority(A),
    member_state(A),
    provisional_measures_taken(A, S),
    without_delay.
notification_details_included(A, details(identification, origin, supply_chain, nature_non_compliance, risk, nature_duration_measures, operator_arguments)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, _S).
non_compliance_cause_identified(A, cause(non_compliance_with_prohibition)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    non_compliance_with_prohibition(S).
non_compliance_cause_identified(A, cause(failure_high_risk_requirements)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    high_risk_ai_system(S),
    \+ meets_chapter_3_section_2_requirements(S).
non_compliance_cause_identified(A, cause(shortcomings_harmonised_standards_or_common_specifications)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    harmonised_standard(_H),
    \+ presumption_of_conformity_conferred(S).
non_compliance_cause_identified(A, cause(non_compliance_with_article_50)) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S),
    \+ complies_with_article_50(S).
other_authorities_inform_of_measures(A, S, measures_and_objections) :-
    market_surveillance_authority(A),
    member_state(A),
    \+ initiating_authority(A, S),
    provisional_measures_taken(_InitiatingA, S),
    without_delay.
initiating_authority(A, S) :-
    market_surveillance_authority(A),
    provisional_measures_taken(A, S).
objection_raised(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    provisional_measures_taken(_InitiatingA, S),
    \+ initiating_authority(A, S).
objection_raised(commission, S) :-
    provisional_measures_taken(_A, S).
provisional_measure_deemed_justified(S) :-
    provisional_measures_taken(A, S),
    member_state(A),
    no_objection_within(months(3), S).
no_objection_within(months(3), S) :-
    provisional_measures_taken(A, S),
    \+ objection_raised(_, S).
period_reduced_for_art_5_non_compliance(S) :-
    provisional_measures_taken(_A, S),
    non_compliance_with_prohibition(S).
no_objection_within(days(30), S) :-
    period_reduced_for_art_5_non_compliance(S),
    \+ objection_raised(_, S).
must_take_restrictive_measures(A, S) :-
    market_surveillance_authority(A),
    member_state(A),
    non_compliance_found(A, S),
    without_delay(withdrawal_from_market(S)).
provenance(ai_system_presenting_risk/1, 'celex:32024R1689/oj#art_79').
provenance(risk_to_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_79').
provenance(sufficient_reason_to_consider_risk/2, 'celex:32024R1689/oj#art_79').
provenance(evaluation_of_compliance/2, 'celex:32024R1689/oj#art_79').
provenance(particular_attention_vulnerable_groups/1, 'celex:32024R1689/oj#art_79').
provenance(inform_and_cooperate_fundamental_rights/2, 'celex:32024R1689/oj#art_79').
provenance(operator_cooperation_required/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_found/2, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_period/2, 'celex:32024R1689/oj#art_79').
provenance(inform_notified_body/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_not_restricted_national/1, 'celex:32024R1689/oj#art_79').
provenance(inform_commission_and_member_states/3, 'celex:32024R1689/oj#art_79').
provenance(corrective_action_all_union_market/2, 'celex:32024R1689/oj#art_79').
provenance(inadequate_corrective_action/2, 'celex:32024R1689/oj#art_79').
provenance(provisional_measures_taken/2, 'celex:32024R1689/oj#art_79').
provenance(notify_provisional_measures/3, 'celex:32024R1689/oj#art_79').
provenance(notification_details_included/2, 'celex:32024R1689/oj#art_79').
provenance(non_compliance_cause_identified/2, 'celex:32024R1689/oj#art_79').
provenance(other_authorities_inform_of_measures/3, 'celex:32024R1689/oj#art_79').
provenance(provisional_measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').
provenance(objection_raised/2, 'celex:32024R1689/oj#art_79').
provenance(period_reduced_for_art_5_non_compliance/1, 'celex:32024R1689/oj#art_79').
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
declared(sufficient_reason_to_consider_high_risk/2, 'market surveillance authority has sufficient reason to consider AI system classified as non-high-risk is indeed high-risk', 'celex:32024R1689/oj#art_80').
declared(classified_as_non_high_risk_by_provider/1, 'AI system classified by provider as non-high-risk pursuant to Article 6(3)', 'celex:32024R1689/oj#art_80').
declared(evaluation_of_classification/2, 'market surveillance authority carries out evaluation of AI system classification as high-risk', 'celex:32024R1689/oj#art_80').
declared(evaluation_based_on_conditions/2, 'evaluation based on conditions set out in Article 6(3) and Commission guidelines', 'celex:32024R1689/oj#art_80').
declared(found_high_risk_in_evaluation/2, 'market surveillance authority finds AI system is high-risk in course of evaluation', 'celex:32024R1689/oj#art_80').
declared(use_not_restricted_to_national_territory/1, 'use of AI system is not restricted to national territory', 'celex:32024R1689/oj#art_80').
declared(results_of_evaluation/2, 'results of the evaluation', 'celex:32024R1689/oj#art_80').
declared(actions_required_of_provider/2, 'actions which market surveillance authority has required provider to take', 'celex:32024R1689/oj#art_80').
declared(provider_fails_to_bring_into_compliance/2, 'provider does not bring AI system into compliance within prescribed period', 'celex:32024R1689/oj#art_80').
declared(provider_fails_to_take_adequate_corrective_action/2, 'provider does not take adequate corrective action within prescribed period', 'celex:32024R1689/oj#art_80').
declared(misclassified_to_circumvent_requirements/2, 'AI system was misclassified by provider as non-high-risk to circumvent application of requirements in Chapter 3 Section 2', 'celex:32024R1689/oj#art_80').
declared(subject_to_fines/2, 'provider is subject to fines in accordance with Article 99', 'celex:32024R1689/oj#art_80').
declared(appropriate_checks_performed/2, 'market surveillance authority performs appropriate checks in exercising power to monitor application of Article 80', 'celex:32024R1689/oj#art_80').
classified_as_non_high_risk_by_provider(S) :-
    ai_system(S),
    concluded_not_high_risk(S).
sufficient_reason_to_consider_high_risk(A, S) :-
    market_surveillance_authority(A),
    classified_as_non_high_risk_by_provider(S).
evaluation_of_classification(A, S) :-
    sufficient_reason_to_consider_high_risk(A, S).
evaluation_based_on_conditions(A, S) :-
    evaluation_of_classification(A, S).
found_high_risk_in_evaluation(A, S) :-
    evaluation_of_classification(A, S),
    high_risk_ai_system(S).
must_take_necessary_steps(A, bring_into_compliance(S)) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    provider(P),
    ai_system(S),
    within(days(_), prescribed_by(A)).
must_take_corrective_actions(A, S) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    ai_system(S).
must_inform_commission(A, results_of_evaluation(S, actions_required_of_provider(A, P))) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    use_not_restricted_to_national_territory(S),
    member_state(_),
    without_delay.
must_inform_commission(A, other_member_states) :-
    found_high_risk_in_evaluation(A, S),
    market_surveillance_authority(A),
    use_not_restricted_to_national_territory(S),
    without_delay.
must_ensure_compliance(P, S) :-
    provider(P),
    ai_system(S),
    found_high_risk_in_evaluation(_, S).
provider_fails_to_bring_into_compliance(P, S) :-
    provider(P),
    ai_system(S),
    must_ensure_compliance(P, S),
    \+ brought_into_compliance(P, S).
subject_to_fines(P, art_99) :-
    provider_fails_to_bring_into_compliance(P, _).
must_take_corrective_actions(P, all_ai_systems_made_available_on_union_market) :-
    provider(P),
    ai_system(S),
    found_high_risk_in_evaluation(_, S).
provider_fails_to_take_adequate_corrective_action(P, S) :-
    provider(P),
    ai_system(S),
    must_take_corrective_actions(P, all_ai_systems_made_available_on_union_market),
    \+ adequate_corrective_action_taken(P, S).
art_79_par_5_to_9_apply(P, S) :-
    provider_fails_to_take_adequate_corrective_action(P, S).
misclassified_to_circumvent_requirements(P, S) :-
    provider(P),
    ai_system(S),
    classified_as_non_high_risk_by_provider(S),
    evaluation_of_classification(_, S),
    circumvented_application_of_requirements(P, S).
subject_to_fines(P, art_99) :-
    misclassified_to_circumvent_requirements(P, _).
appropriate_checks_performed(A, art_80) :-
    market_surveillance_authority(A),
    in_accordance_with_regulation(celex_32019R1020_art_11).
provenance(sufficient_reason_to_consider_high_risk/2, 'celex:32024R1689/oj#art_80').
provenance(classified_as_non_high_risk_by_provider/1, 'celex:32024R1689/oj#art_80').
provenance(evaluation_of_classification/2, 'celex:32024R1689/oj#art_80').
provenance(evaluation_based_on_conditions/2, 'celex:32024R1689/oj#art_80').
provenance(found_high_risk_in_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(use_not_restricted_to_national_territory/1, 'celex:32024R1689/oj#art_80').
provenance(results_of_evaluation/2, 'celex:32024R1689/oj#art_80').
provenance(actions_required_of_provider/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_to_bring_into_compliance/2, 'celex:32024R1689/oj#art_80').
provenance(provider_fails_to_take_adequate_corrective_action/2, 'celex:32024R1689/oj#art_80').
provenance(misclassified_to_circumvent_requirements/2, 'celex:32024R1689/oj#art_80').
provenance(subject_to_fines/2, 'celex:32024R1689/oj#art_80').
provenance(appropriate_checks_performed/2, 'celex:32024R1689/oj#art_80').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_99').
references('celex:32024R1689/oj#art_80', 'celex:32024R1689/oj#art_80/par_2').
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
declared(must_enter_into_consultation/2, 'Commission enters into consultation with Member State authority and operators', 'celex:32024R1689/oj#art_81').
declared(must_evaluate_national_measure/1, 'Commission evaluates the national measure', 'celex:32024R1689/oj#art_81').
declared(must_decide_justification/2, 'Commission decides whether national measure is justified within deadline', 'celex:32024R1689/oj#art_81').
declared(must_notify_decision/2, 'Commission notifies its decision to the market surveillance authority concerned', 'celex:32024R1689/oj#art_81').
declared(must_inform_all_authorities/2, 'Commission informs all other market surveillance authorities of its decision', 'celex:32024R1689/oj#art_81').
declared(justified_national_measure/1, 'Commission considers the national measure justified', 'celex:32024R1689/oj#art_81').
declared(unjustified_national_measure/1, 'Commission considers the national measure unjustified', 'celex:32024R1689/oj#art_81').
declared(objections_raised/2, 'market surveillance authority of a Member State raises objections to a measure', 'celex:32024R1689/oj#art_81').
declared(commission_considers_contrary_to_union_law/1, 'Commission considers the measure contrary to Union law', 'celex:32024R1689/oj#art_81').
declared(trigger_union_safeguard_procedure/1, 'condition triggering the Union safeguard procedure is met', 'celex:32024R1689/oj#art_81').
declared(non_compliance_with_prohibition_present/1, 'non-compliance with the prohibition of AI practices under Article 5 is present', 'celex:32024R1689/oj#art_81').
declared(deadline_months/2, 'deadline expressed in months for a given situation', 'celex:32024R1689/oj#art_81').
declared(deadline_days/2, 'deadline expressed in days for a given situation', 'celex:32024R1689/oj#art_81').
declared(notification_received/1, 'notification under Article 79(5) has been received', 'celex:32024R1689/oj#art_81').
declared(national_measure_taken/2, 'market surveillance authority of a Member State has taken a national measure', 'celex:32024R1689/oj#art_81').
declared(shortcomings_in_harmonised_standards_or_common_specifications/1, 'non-compliance attributed to shortcomings in harmonised standards or common specifications', 'celex:32024R1689/oj#art_81').
trigger_union_safeguard_procedure(M) :-
    national_measure_taken(A, M),
    notification_received(N),
    within_period(N, months(3), M),
    objections_raised(A, M).
trigger_union_safeguard_procedure(M) :-
    national_measure_taken(A, M),
    notification_received(N),
    within_period(N, days(30), M),
    non_compliance_with_prohibition_present(M),
    objections_raised(A, M).
trigger_union_safeguard_procedure(M) :-
    national_measure_taken(_A, M),
    commission_considers_contrary_to_union_law(M).
must_enter_into_consultation(commission, member_state(M)) :-
    trigger_union_safeguard_procedure(Measure),
    national_measure_taken(A, Measure),
    market_surveillance_authority(A),
    member_state(M),
    without_delay.
must_evaluate_national_measure(Measure) :-
    trigger_union_safeguard_procedure(Measure),
    must_enter_into_consultation(commission, _).
must_decide_justification(commission, Measure) :-
    must_evaluate_national_measure(Measure),
    notification_received(N),
    within_period(N, months(6), Measure).
must_decide_justification(commission, Measure) :-
    must_evaluate_national_measure(Measure),
    non_compliance_with_prohibition_present(Measure),
    notification_received(N),
    within_period(N, days(60), Measure).
must_notify_decision(commission, A) :-
    must_decide_justification(commission, Measure),
    national_measure_taken(A, Measure),
    market_surveillance_authority(A).
must_inform_all_authorities(commission, A) :-
    must_decide_justification(commission, _Measure),
    market_surveillance_authority(A),
    member_state(MS),
    \+ national_measure_taken(A, _).
justified_national_measure(Measure) :-
    must_decide_justification(commission, Measure),
    commission_decides_justified(Measure).
unjustified_national_measure(Measure) :-
    must_decide_justification(commission, Measure),
    commission_decides_unjustified(Measure).
must_take_restrictive_measures(MS, Measure) :-
    justified_national_measure(Measure),
    member_state(MS),
    without_delay(1).
must_withdraw_measure(A, Measure) :-
    unjustified_national_measure(Measure),
    national_measure_taken(A, Measure).
inform_commission(MS, decision(Measure, withdrawn)) :-
    must_withdraw_measure(_A, Measure),
    member_state(MS).
inform_commission(MS, decision(Measure, restrictive_measures_taken)) :-
    must_take_restrictive_measures(MS, Measure).
shortcomings_in_harmonised_standards_or_common_specifications(Measure) :-
    justified_national_measure(Measure),
    non_compliance_attributed_to_shortcomings(Measure).
apply_procedure_regulation_1025_2012(Measure) :-
    shortcomings_in_harmonised_standards_or_common_specifications(Measure).
within_period(N, months(M), Measure) :-
    notification_received(N),
    national_measure_taken(_A, Measure),
    period_months(M).
within_period(N, days(D), Measure) :-
    notification_received(N),
    national_measure_taken(_A, Measure),
    non_compliance_with_prohibition_present(Measure),
    period_days(D).
provenance(trigger_union_safeguard_procedure/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(justified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(unjustified_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(objections_raised/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_union_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_prohibition_present/1, 'celex:32024R1689/oj#art_81').
provenance(deadline_months/2, 'celex:32024R1689/oj#art_81').
provenance(deadline_days/2, 'celex:32024R1689/oj#art_81').
provenance(notification_received/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_taken/2, 'celex:32024R1689/oj#art_81').
provenance(shortcomings_in_harmonised_standards_or_common_specifications/1, 'celex:32024R1689/oj#art_81').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').

% ==== celex:32024R1689/oj#art_82 ====
declared(placing_on_market/1, 'first making available of an AI system on the Union market', 'reconciled').
declared(putting_into_service/1, 'supply of an AI system for first use by the deployer', 'reconciled').
declared(making_available_on_market/1, 'supply of an AI system for distribution or use on the Union market', 'reconciled').
declared(evaluation_under_article_79/1, 'evaluation performed under Article 79', 'celex:32024R1689/oj#art_82').
declared(consulted_national_public_authority/2, 'market surveillance authority consulted national public authority referred to in Article 77(1)', 'celex:32024R1689/oj#art_82').
declared(compliant_with_regulation/1, 'AI system complies with the regulation', 'celex:32024R1689/oj#art_82').
declared(risk_to_other_aspects_of_public_interest_protection/1, 'risk to other aspects of public interest protection', 'celex:32024R1689/oj#art_82').
declared(prescribed_period/2, 'period prescribed by market surveillance authority', 'celex:32024R1689/oj#art_82').
declared(corrective_action_taken/2, 'corrective action taken by operator for AI system', 'celex:32024R1689/oj#art_82').
declared(all_ai_systems_concerned/2, 'all AI systems concerned made available on Union market by operator', 'celex:32024R1689/oj#art_82').
declared(member_state_informs_commission_and_other_member_states/2, 'Member State informs Commission and other Member States', 'celex:32024R1689/oj#art_82').
declared(information_includes_details/2, 'information includes all available details', 'celex:32024R1689/oj#art_82').
declared(commission_enters_into_consultation/1, 'Commission enters into consultation with Member States and operators', 'celex:32024R1689/oj#art_82').
declared(commission_evaluates_national_measures/1, 'Commission evaluates national measures taken', 'celex:32024R1689/oj#art_82').
declared(commission_decides_justification/2, 'Commission decides whether measure is justified and proposes other measures', 'celex:32024R1689/oj#art_82').
declared(commission_communicates_decision/2, 'Commission communicates decision to Member States and operators', 'celex:32024R1689/oj#art_82').
evaluation_under_article_79(E) :-
    market_surveillance_authority(M),
    member_state(M).
consulted_national_public_authority(M, A) :-
    market_surveillance_authority(M),
    member_state(M).
compliant_with_regulation(S) :-
    high_risk_ai_system(S).
risk_to_other_aspects_of_public_interest_protection(S) :-
    presents_risk(S).
presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S).
presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_health_or_safety(S).
presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_fundamental_rights(S).
presents_risk(S) :-
    high_risk_ai_system(S),
    risk_to_other_aspects_of_public_interest_protection(S).
must_take_necessary_steps(Operator, eliminate_risk(S, Period)) :-
    market_surveillance_authority(M),
    member_state(M),
    evaluation_under_article_79(E),
    consulted_national_public_authority(M, _A),
    high_risk_ai_system(S),
    compliant_with_regulation(S),
    presents_risk(S),
    operator(Operator),
    prescribed_period(M, Period),
    without_delay(eliminate_risk(S, Period)).
must_take_corrective_actions(Operator, S) :-
    provider(Operator),
    high_risk_ai_system(S),
    all_ai_systems_concerned(Operator, S),
    market_surveillance_authority(M),
    member_state(M),
    prescribed_period(M, _Period).
must_take_corrective_actions(Operator, S) :-
    operator(Operator),
    \+ provider(Operator),
    high_risk_ai_system(S),
    all_ai_systems_concerned(Operator, S),
    market_surveillance_authority(M),
    member_state(M),
    prescribed_period(M, _Period).
all_ai_systems_concerned(Operator, S) :-
    high_risk_ai_system(S),
    making_available_on_market(S),
    operator(Operator).
member_state_informs_commission_and_other_member_states(M, finding(S)) :-
    member_state(M),
    market_surveillance_authority(M),
    high_risk_ai_system(S),
    compliant_with_regulation(S),
    presents_risk(S),
    without_delay.
information_includes_details(Info, details(S, Origin, SupplyChain, RiskNature, MeasureNature, MeasureDuration)) :-
    high_risk_ai_system(S),
    member_state_informs_commission_and_other_member_states(_M, finding(S)),
    Info = details(S, Origin, SupplyChain, RiskNature, MeasureNature, MeasureDuration).
commission_enters_into_consultation(Consultation) :-
    member_state_informs_commission_and_other_member_states(M, finding(S)),
    member_state(M),
    operator(Operator),
    without_delay,
    Consultation = consultation(M, Operator, S).
commission_evaluates_national_measures(Evaluation) :-
    commission_enters_into_consultation(Consultation),
    Evaluation = evaluate(Consultation).
commission_decides_justification(Decision, justified) :-
    commission_evaluates_national_measures(Evaluation),
    Decision = decide(Evaluation, justified).
commission_decides_justification(Decision, other_measures(Measures)) :-
    commission_evaluates_national_measures(Evaluation),
    Decision = decide(Evaluation, other_measures(Measures)).
commission_communicates_decision(M, Decision) :-
    member_state(M),
    commission_decides_justification(Decision, _Justification),
    without_delay.
commission_communicates_decision(M, Decision) :-
    operator(Operator),
    commission_decides_justification(Decision, _Justification),
    without_delay.
inform_commission(M, finding(S)) :-
    member_state_informs_commission_and_other_member_states(M, finding(S)).
provenance(evaluation_under_article_79/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_national_public_authority/2, 'celex:32024R1689/oj#art_82').
provenance(compliant_with_regulation/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_other_aspects_of_public_interest_protection/1, 'celex:32024R1689/oj#art_82').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_82').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_82').
provenance(all_ai_systems_concerned/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_commission_and_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(information_includes_details/2, 'celex:32024R1689/oj#art_82').
provenance(commission_enters_into_consultation/1, 'celex:32024R1689/oj#art_82').
provenance(commission_evaluates_national_measures/1, 'celex:32024R1689/oj#art_82').
provenance(commission_decides_justification/2, 'celex:32024R1689/oj#art_82').
provenance(commission_communicates_decision/2, 'celex:32024R1689/oj#art_82').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_necessary_steps/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_actions/2, 'celex:32024R1689/oj#art_82').
provenance(inform_commission/2, 'celex:32024R1689/oj#art_82').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').

% ==== celex:32024R1689/oj#art_83 ====
declared(formal_non_compliance/1, 'finding of formal non-compliance by market surveillance authority', 'celex:32024R1689/oj#art_83').
declared(ce_marking_affixed_in_violation/1, 'CE marking affixed in violation of Article 48', 'celex:32024R1689/oj#art_83').
declared(ce_marking_not_affixed/1, 'CE marking not affixed', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_not_drawn_up/1, 'EU declaration of conformity not drawn up', 'celex:32024R1689/oj#art_83').
declared(eu_declaration_not_drawn_up_correctly/1, 'EU declaration of conformity not drawn up correctly', 'celex:32024R1689/oj#art_83').
declared(registration_not_carried_out/1, 'registration in EU database not carried out', 'celex:32024R1689/oj#art_83').
declared(no_authorised_representative_appointed/1, 'no authorised representative appointed where applicable', 'celex:32024R1689/oj#art_83').
declared(technical_documentation_not_available/1, 'technical documentation not available', 'celex:32024R1689/oj#art_83').
declared(non_compliance_persists/1, 'non-compliance referred to in Article 83(1) persists', 'celex:32024R1689/oj#art_83').
formal_non_compliance(S) :-
    ce_marking_affixed_in_violation(S).
formal_non_compliance(S) :-
    ce_marking_not_affixed(S).
formal_non_compliance(S) :-
    eu_declaration_not_drawn_up(S).
formal_non_compliance(S) :-
    eu_declaration_not_drawn_up_correctly(S).
formal_non_compliance(S) :-
    registration_not_carried_out(S).
formal_non_compliance(S) :-
    no_authorised_representative_appointed(S).
formal_non_compliance(S) :-
    technical_documentation_not_available(S).
must_take_restrictive_measures(Authority, restrict_or_prohibit_making_available(S)) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    non_compliance_persists(S),
    high_risk_ai_system(S),
    without_delay.
must_take_restrictive_measures(Authority, ensure_recall_or_withdrawal(S)) :-
    market_surveillance_authority(Authority),
    member_state(Authority),
    non_compliance_persists(S),
    high_risk_ai_system(S),
    without_delay.
non_compliance_persists(S) :-
    formal_non_compliance(S).
provenance(formal_non_compliance/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_affixed_in_violation/1, 'celex:32024R1689/oj#art_83').
provenance(ce_marking_not_affixed/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_not_drawn_up/1, 'celex:32024R1689/oj#art_83').
provenance(eu_declaration_not_drawn_up_correctly/1, 'celex:32024R1689/oj#art_83').
provenance(registration_not_carried_out/1, 'celex:32024R1689/oj#art_83').
provenance(no_authorised_representative_appointed/1, 'celex:32024R1689/oj#art_83').
provenance(technical_documentation_not_available/1, 'celex:32024R1689/oj#art_83').
provenance(non_compliance_persists/1, 'celex:32024R1689/oj#art_83').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_83', 'celex:32024R1689/oj#art_83/par_1').

% ==== celex:32024R1689/oj#art_84 ====
declared(designated_union_ai_testing_support_structure/1, 'Union AI testing support structure designated by the Commission', 'celex:32024R1689/oj#art_84').
declared(performs_tasks_under_regulation_1020_art_21_par_6/1, 'performs tasks listed under Article 21(6) of Regulation 2019/1020 in the area of AI', 'celex:32024R1689/oj#art_84').
declared(provides_independent_technical_or_scientific_advice/3, 'provides independent technical or scientific advice to requester', 'celex:32024R1689/oj#art_84').
declared(ai_board/1, 'the Board established under this Regulation', 'celex:32024R1689/oj#art_84').
must_designate_union_ai_testing_support_structures(commission) :-
    designated_union_ai_testing_support_structure(S),
    performs_tasks_under_regulation_1020_art_21_par_6(S).
designated_union_ai_testing_support_structure(S) :-
    union_ai_testing_support(S),
    performs_tasks_under_regulation_1020_art_21_par_6(S).
performs_tasks_under_regulation_1020_art_21_par_6(S) :-
    designated_union_ai_testing_support_structure(S).
provides_independent_technical_or_scientific_advice(S, Requester) :-
    designated_union_ai_testing_support_structure(S),
    requested_by(Requester),
    independent_advice(technical_or_scientific).
requested_by(ai_board).
requested_by(commission).
requested_by(S) :-
    market_surveillance_authority(S).
independent_advice(technical_or_scientific).
provenance(designated_union_ai_testing_support_structure/1, 'celex:32024R1689/oj#art_84').
provenance(performs_tasks_under_regulation_1020_art_21_par_6/1, 'celex:32024R1689/oj#art_84').
provenance(provides_independent_technical_or_scientific_advice/3, 'celex:32024R1689/oj#art_84').
provenance(ai_board/1, 'celex:32024R1689/oj#art_84').
provenance(must_designate_union_ai_testing_support_structures/1, 'celex:32024R1689/oj#art_84').
references('celex:32024R1689/oj#art_84', 'celex:32019R1020/oj#art_21/par_6').
references('celex:32024R1689/oj#art_84', 'celex:32024R1689/oj#art_84/par_1').

% ==== celex:32024R1689/oj#art_85 ====
declared(may_lodge_complaint/2, 'natural or legal person may lodge complaint with market surveillance authority', 'celex:32024R1689/oj#art_85').
declared(complaint_grounds/2, 'person has grounds to consider infringement of provisions of the regulation', 'celex:32024R1689/oj#art_85').
declared(complaint_taken_into_account/2, 'complaint taken into account for market surveillance activities', 'celex:32024R1689/oj#art_85').
declared(complaint_handled_per_procedures/2, 'complaint handled in line with dedicated procedures by market surveillance authority', 'celex:32024R1689/oj#art_85').
may_lodge_complaint(Person, Authority) :-
    market_surveillance_authority(Authority),
    complaint_grounds(Person, infringement).
complaint_grounds(Person, infringement) :-
    person(Person).
person(Person) :-
    natural_person(Person).
person(Person) :-
    legal_person(Person).
complaint_taken_into_account(Complaint, market_surveillance_activities) :-
    may_lodge_complaint(_Person, Authority),
    complaint_submitted_to(Complaint, Authority).
complaint_handled_per_procedures(Complaint, Authority) :-
    market_surveillance_authority(Authority),
    complaint_submitted_to(Complaint, Authority),
    dedicated_procedures_established(Authority).
complaint_submitted_to(Complaint, Authority) :-
    may_lodge_complaint(_Person, Authority),
    complaint(Complaint).
complaint(Complaint) :-
    complaint_grounds(_Person, infringement),
    submitted(Complaint).
submitted(Complaint) :-
    complaint(Complaint).
dedicated_procedures_established(Authority) :-
    market_surveillance_authority(Authority).
natural_person(_).
legal_person(_).
provenance(may_lodge_complaint/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_grounds/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_taken_into_account/2, 'celex:32024R1689/oj#art_85').
provenance(complaint_handled_per_procedures/2, 'celex:32024R1689/oj#art_85').
references('celex:32024R1689/oj#art_85', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_85', 'celex:32019R1020/oj').

% ==== celex:32024R1689/oj#art_86 ====
declared(affected_person/1, 'natural person subject to a decision taken by the deployer', 'celex:32024R1689/oj#art_86').
declared(decision_taken_by_deployer/2, 'decision taken by deployer on basis of output from high-risk AI system', 'celex:32024R1689/oj#art_86').
declared(decision_based_on_ai_output/2, 'decision is based on output from a high-risk AI system', 'celex:32024R1689/oj#art_86').
declared(produces_legal_effects/1, 'decision produces legal effects', 'celex:32024R1689/oj#art_86').
declared(similarly_significantly_affects/2, 'decision similarly significantly affects the person', 'celex:32024R1689/oj#art_86').
declared(adverse_impact_considered_by_person/2, 'person considers decision to have adverse impact on health, safety or fundamental rights', 'celex:32024R1689/oj#art_86').
declared(right_to_explanation/2, 'affected person has right to obtain clear and meaningful explanations from deployer', 'celex:32024R1689/oj#art_86').
declared(explanation_of_ai_role/2, 'explanation of the role of the AI system in the decision-making procedure', 'celex:32024R1689/oj#art_86').
declared(explanation_of_main_elements/2, 'explanation of the main elements of the decision taken', 'celex:32024R1689/oj#art_86').
declared(exception_from_union_or_national_law/1, 'exception from or restriction to the obligation follows from Union or national law in compliance with Union law', 'celex:32024R1689/oj#art_86').
declared(right_already_provided_under_union_law/1, 'right to explanation is otherwise provided for under Union law', 'celex:32024R1689/oj#art_86').
declared(high_risk_ai_system_annex_3_excluding_point_2/1, 'high-risk AI system listed in Annex III with exception of systems listed under point 2 thereof', 'celex:32024R1689/oj#art_86').
high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S).
high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).
high_risk_ai_system_annex_3_excluding_point_2(S) :-
    high_risk_ai_system(S),
    critical_infrastructure(S).
decision_based_on_ai_output(D, S) :-
    decision_taken_by_deployer(D, S).
decision_taken_by_deployer(D, S) :-
    deployer(_Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    decision_based_on_ai_output(D, S).
produces_legal_effects(D) :-
    decision_taken_by_deployer(D, _S).
similarly_significantly_affects(D, P) :-
    affected_person(P),
    decision_taken_by_deployer(D, _S).
adverse_impact_considered_by_person(D, P) :-
    affected_person(P),
    decision_taken_by_deployer(D, _S),
    risk_to_health_safety_fundamental_rights(D).
right_to_explanation(P, Dep) :-
    affected_person(P),
    decision_taken_by_deployer(D, S),
    deployer(Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    produces_legal_effects(D),
    adverse_impact_considered_by_person(D, P),
    \+ exception_from_union_or_national_law(D),
    \+ right_already_provided_under_union_law(D).
right_to_explanation(P, Dep) :-
    affected_person(P),
    decision_taken_by_deployer(D, S),
    deployer(Dep),
    high_risk_ai_system_annex_3_excluding_point_2(S),
    similarly_significantly_affects(D, P),
    adverse_impact_considered_by_person(D, P),
    \+ exception_from_union_or_national_law(D),
    \+ right_already_provided_under_union_law(D).
must_provide_explanation(Dep, P) :-
    right_to_explanation(P, Dep).
explanation_of_ai_role(Dep, P) :-
    right_to_explanation(P, Dep).
explanation_of_main_elements(Dep, P) :-
    right_to_explanation(P, Dep).
exception_from_union_or_national_law(D) :-
    decision_taken_by_deployer(D, _S),
    in_accordance_with_national_rules(D).
exception_from_union_or_national_law(D) :-
    decision_taken_by_deployer(D, _S),
    union_law_considers_application_disproportionate(D).
right_already_provided_under_union_law(D) :-
    decision_taken_by_deployer(D, _S).
provenance(affected_person/1, 'celex:32024R1689/oj#art_86').
provenance(decision_taken_by_deployer/2, 'celex:32024R1689/oj#art_86').
provenance(decision_based_on_ai_output/2, 'celex:32024R1689/oj#art_86').
provenance(produces_legal_effects/1, 'celex:32024R1689/oj#art_86').
provenance(similarly_significantly_affects/2, 'celex:32024R1689/oj#art_86').
provenance(adverse_impact_considered_by_person/2, 'celex:32024R1689/oj#art_86').
provenance(right_to_explanation/2, 'celex:32024R1689/oj#art_86').
provenance(explanation_of_ai_role/2, 'celex:32024R1689/oj#art_86').
provenance(explanation_of_main_elements/2, 'celex:32024R1689/oj#art_86').
provenance(exception_from_union_or_national_law/1, 'celex:32024R1689/oj#art_86').
provenance(right_already_provided_under_union_law/1, 'celex:32024R1689/oj#art_86').
provenance(high_risk_ai_system_annex_3_excluding_point_2/1, 'celex:32024R1689/oj#art_86').
provenance(must_provide_explanation/2, 'celex:32024R1689/oj#art_86').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86/par_1').
references('celex:32024R1689/oj#art_86', 'celex:32024R1689/oj#art_86').

% ==== celex:32024R1689/oj#art_87 ====
declared(whistleblower_directive_applies/1, 'Directive (EU) 2019/1937 applies to reporting of infringements and protection of reporting persons', 'celex:32024R1689/oj#art_87').
whistleblower_directive_applies(reporting_of_infringements(Regulation, Person)) :-
    Regulation = 'celex:32024R1689/oj',
    Person = reporting_person.
provenance(whistleblower_directive_applies/1, 'celex:32024R1689/oj#art_87').
references('celex:32024R1689/oj#art_87', 'celex:32019L1937/oj').
references('celex:32024R1689/oj#art_87', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_88 ====
declared(commission_has_exclusive_powers/1, 'Commission has exclusive powers to supervise and enforce Chapter V', 'celex:32024R1689/oj#art_88').
declared(commission_entrusts_implementation_to_ai_office/1, 'Commission entrusts implementation of supervision and enforcement tasks to the AI Office', 'celex:32024R1689/oj#art_88').
declared(market_surveillance_authority_may_request_commission/2, 'market surveillance authority may request Commission to exercise powers under Chapter 9 Section 5', 'celex:32024R1689/oj#art_88').
commission_has_exclusive_powers(supervise_and_enforce_chapter_v).
commission_entrusts_implementation_to_ai_office(implementation(supervise_and_enforce_chapter_v)).
market_surveillance_authority_may_request_commission(A, exercise_powers(chapter_9_section_5)) :-
    market_surveillance_authority(A),
    necessary_and_proportionate_to_assist_fulfilment_of_tasks(A).
necessary_and_proportionate_to_assist_fulfilment_of_tasks(A) :-
    market_surveillance_authority(A).
provenance(commission_has_exclusive_powers/1, 'celex:32024R1689/oj#art_88').
provenance(commission_entrusts_implementation_to_ai_office/1, 'celex:32024R1689/oj#art_88').
provenance(market_surveillance_authority_may_request_commission/2, 'celex:32024R1689/oj#art_88').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_88', 'celex:12016M/oj').
references('celex:32024R1689/oj#art_88', 'celex:12016E/oj').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#art_75/par_3').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_88', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_89 ====
declared(may_take_monitoring_actions/1, 'AI Office may take necessary actions to monitor effective implementation and compliance by providers of general-purpose AI models', 'celex:32024R1689/oj#art_89').
declared(right_to_lodge_complaint/1, 'downstream provider has the right to lodge a complaint alleging an infringement', 'celex:32024R1689/oj#art_89').
declared(complaint_duly_reasoned/1, 'complaint is duly reasoned', 'celex:32024R1689/oj#art_89').
declared(complaint_indicates_point_of_contact/2, 'complaint indicates the point of contact of the provider of the general-purpose AI model concerned', 'celex:32024R1689/oj#art_89').
declared(complaint_describes_relevant_facts/1, 'complaint describes the relevant facts', 'celex:32024R1689/oj#art_89').
declared(complaint_indicates_provisions_concerned/1, 'complaint indicates the provisions of the regulation concerned', 'celex:32024R1689/oj#art_89').
declared(complaint_states_reason_for_infringement/1, 'complaint states the reason why the downstream provider considers the provider infringed the regulation', 'celex:32024R1689/oj#art_89').
declared(complaint_includes_other_relevant_information/1, 'complaint includes any other information the downstream provider considers relevant', 'celex:32024R1689/oj#art_89').
declared(complaint_includes_own_initiative_information/1, 'complaint includes, where appropriate, information gathered on the downstream provider''s own initiative', 'celex:32024R1689/oj#art_89').
may_take_monitoring_actions(ai_office) :-
    ai_office(ai_office),
    general_purpose_ai_model_provider(P),
    monitors_effective_implementation_and_compliance(P).
monitors_effective_implementation_and_compliance(P) :-
    general_purpose_ai_model_provider(P),
    monitors_compliance_with_regulation(P),
    monitors_adherence_to_approved_codes_of_practice(P).
monitors_compliance_with_regulation(P) :-
    general_purpose_ai_model_provider(P).
monitors_adherence_to_approved_codes_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    approved_code_of_practice(C),
    adheres_to_code_of_practice(P, C).
right_to_lodge_complaint(DP) :-
    downstream_provider(DP).
complaint_duly_reasoned(C) :-
    right_to_lodge_complaint(DP),
    lodges_complaint(DP, C),
    complaint_indicates_point_of_contact(C, P),
    complaint_describes_relevant_facts(C),
    complaint_indicates_provisions_concerned(C),
    complaint_states_reason_for_infringement(C).
complaint_indicates_point_of_contact(C, P) :-
    lodges_complaint(DP, C),
    general_purpose_ai_model_provider(P),
    indicates_point_of_contact(C, P).
complaint_describes_relevant_facts(C) :-
    lodges_complaint(_DP, C),
    describes_relevant_facts(C).
complaint_indicates_provisions_concerned(C) :-
    lodges_complaint(_DP, C),
    indicates_provisions_concerned(C).
complaint_states_reason_for_infringement(C) :-
    lodges_complaint(DP, C),
    general_purpose_ai_model_provider(P),
    states_reason_why_considers_infringement(DP, P, C).
complaint_includes_other_relevant_information(C) :-
    lodges_complaint(DP, C),
    includes_other_relevant_information(DP, C).
complaint_includes_own_initiative_information(C) :-
    lodges_complaint(DP, C),
    includes_information_gathered_on_own_initiative(DP, C).
provenance(may_take_monitoring_actions/1, 'celex:32024R1689/oj#art_89').
provenance(right_to_lodge_complaint/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_duly_reasoned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_point_of_contact/2, 'celex:32024R1689/oj#art_89').
provenance(complaint_describes_relevant_facts/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_indicates_provisions_concerned/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_states_reason_for_infringement/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_other_relevant_information/1, 'celex:32024R1689/oj#art_89').
provenance(complaint_includes_own_initiative_information/1, 'celex:32024R1689/oj#art_89').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_89', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_90 ====
declared(scientific_panel/1, 'scientific panel established under the regulation', 'celex:32024R1689/oj#art_90').
declared(board/1, 'the Board referred to in the regulation', 'celex:32024R1689/oj#art_90').
declared(qualified_alert/2, 'qualified alert from scientific panel to AI Office about a general-purpose AI model', 'celex:32024R1689/oj#art_90').
declared(concrete_identifiable_risk_at_union_level/1, 'general-purpose AI model poses concrete identifiable risk at Union level', 'celex:32024R1689/oj#art_90').
declared(meets_conditions_article_51/1, 'general-purpose AI model meets the conditions referred to in Article 51', 'celex:32024R1689/oj#art_90').
declared(reason_to_suspect/2, 'scientific panel has reason to suspect about a general-purpose AI model', 'celex:32024R1689/oj#art_90').
declared(may_exercise_powers/2, 'Commission through AI Office may exercise powers for a purpose', 'celex:32024R1689/oj#art_90').
declared(informed_board/1, 'Board has been informed', 'celex:32024R1689/oj#art_90').
declared(must_inform_board/2, 'AI Office must inform Board of a measure', 'celex:32024R1689/oj#art_90').
declared(duly_reasoned/1, 'qualified alert is duly reasoned', 'celex:32024R1689/oj#art_90').
declared(indicates_point_of_contact/2, 'qualified alert indicates point of contact of provider of general-purpose AI model', 'celex:32024R1689/oj#art_90').
declared(indicates_description_of_facts_and_reasons/1, 'qualified alert indicates description of relevant facts and reasons for the alert', 'celex:32024R1689/oj#art_90').
declared(indicates_other_relevant_information/1, 'qualified alert indicates other relevant information including information gathered on own initiative', 'celex:32024R1689/oj#art_90').
qualified_alert(Alert, Model) :-
    scientific_panel(Panel),
    ai_office(Office),
    general_purpose_ai_model(Model),
    reason_to_suspect(Panel, Model),
    ( concrete_identifiable_risk_at_union_level(Model)
    ; meets_conditions_article_51(Model)
    ),
    alert_from_to(Alert, Panel, Office).
may_exercise_powers(commission_through_ai_office, assessing_matter) :-
    qualified_alert(Alert, Model),
    general_purpose_ai_model(Model),
    informed_board(Board),
    board(Board).
must_inform_board(ai_office, measure(Measure)) :-
    qualified_alert(_Alert, _Model),
    measure(Measure).
duly_reasoned(Alert) :-
    qualified_alert(Alert, _Model).
indicates_point_of_contact(Alert, point_of_contact(Provider)) :-
    qualified_alert(Alert, Model),
    general_purpose_ai_model(Model),
    provider(Provider),
    general_purpose_ai_model_provider(Provider),
    model_provided_by(Model, Provider).
indicates_description_of_facts_and_reasons(Alert) :-
    qualified_alert(Alert, _Model).
indicates_other_relevant_information(Alert) :-
    qualified_alert(Alert, _Model).
alert_from_to(Alert, Panel, Office) :-
    scientific_panel(Panel),
    ai_office(Office).
model_provided_by(Model, Provider) :-
    general_purpose_ai_model(Model),
    provider(Provider).
measure(_Measure).
provenance(scientific_panel/1, 'celex:32024R1689/oj#art_90').
provenance(board/1, 'celex:32024R1689/oj#art_90').
provenance(qualified_alert/2, 'celex:32024R1689/oj#art_90').
provenance(concrete_identifiable_risk_at_union_level/1, 'celex:32024R1689/oj#art_90').
provenance(meets_conditions_article_51/1, 'celex:32024R1689/oj#art_90').
provenance(reason_to_suspect/2, 'celex:32024R1689/oj#art_90').
provenance(may_exercise_powers/2, 'celex:32024R1689/oj#art_90').
provenance(informed_board/1, 'celex:32024R1689/oj#art_90').
provenance(must_inform_board/2, 'celex:32024R1689/oj#art_90').
provenance(duly_reasoned/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_point_of_contact/2, 'celex:32024R1689/oj#art_90').
provenance(indicates_description_of_facts_and_reasons/1, 'celex:32024R1689/oj#art_90').
provenance(indicates_other_relevant_information/1, 'celex:32024R1689/oj#art_90').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#chp_9/sec_5').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_90', 'celex:32024R1689/oj#art_94').

% ==== celex:32024R1689/oj#art_91 ====
declared(may_request_documentation/2, 'Commission may request documentation from provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_request_information/2, 'Commission may request information from provider of general-purpose AI model', 'celex:32024R1689/oj#art_91').
declared(may_initiate_structured_dialogue/2, 'AI Office may initiate structured dialogue with provider before sending request', 'celex:32024R1689/oj#art_91').
declared(may_issue_request_for_information/2, 'Commission may issue request for information to provider upon substantiated request from scientific panel', 'celex:32024R1689/oj#art_91').
declared(request_states_legal_basis/1, 'request for information states the legal basis', 'celex:32024R1689/oj#art_91').
declared(request_states_purpose/1, 'request for information states the purpose', 'celex:32024R1689/oj#art_91').
declared(request_specifies_information_required/1, 'request for information specifies what information is required', 'celex:32024R1689/oj#art_91').
declared(request_sets_period/1, 'request for information sets a period within which information is to be provided', 'celex:32024R1689/oj#art_91').
declared(request_indicates_fines/1, 'request for information indicates fines for supplying incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_91').
declared(authorised_representative_supplies_information/2, 'persons authorised to represent provider supply information on behalf of provider', 'celex:32024R1689/oj#art_91').
declared(lawyer_supplies_information/2, 'lawyer duly authorised to act may supply information on behalf of client', 'celex:32024R1689/oj#art_91').
declared(client_remains_responsible/1, 'client remains fully responsible if information supplied is incomplete, incorrect or misleading', 'celex:32024R1689/oj#art_91').
may_request_documentation(commission, P) :-
    general_purpose_ai_model_provider(P).
may_request_information(commission, P) :-
    general_purpose_ai_model_provider(P),
    information_necessary_for_assessing_compliance(P).
may_initiate_structured_dialogue(ai_office, P) :-
    general_purpose_ai_model_provider(P).
may_issue_request_for_information(commission, P) :-
    general_purpose_ai_model_provider(P),
    duly_substantiated_request_from_scientific_panel,
    access_to_information_necessary_and_proportionate(P),
    fulfilment_of_tasks_of_scientific_panel.
request_states_legal_basis(R) :-
    request_for_information(R).
request_states_purpose(R) :-
    request_for_information(R).
request_specifies_information_required(R) :-
    request_for_information(R).
request_sets_period(R) :-
    request_for_information(R).
request_indicates_fines(R) :-
    request_for_information(R).
must_supply_information(P, requested_information) :-
    general_purpose_ai_model_provider(P).
must_supply_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    authorised_representative(P).
authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    legal_person(P).
authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    company(P).
authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    firm(P).
authorised_representative_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    \+ legal_personality(P).
lawyer_supplies_information(P, requested_information) :-
    general_purpose_ai_model_provider(P),
    lawyer_duly_authorised_to_act(P).
client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_incomplete(P).
client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_incorrect(P).
client_remains_responsible(P) :-
    general_purpose_ai_model_provider(P),
    information_supplied_misleading(P).
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_91').
provenance(may_request_information/2, 'celex:32024R1689/oj#art_91').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_91').
provenance(may_issue_request_for_information/2, 'celex:32024R1689/oj#art_91').
provenance(request_states_legal_basis/1, 'celex:32024R1689/oj#art_91').
provenance(request_states_purpose/1, 'celex:32024R1689/oj#art_91').
provenance(request_specifies_information_required/1, 'celex:32024R1689/oj#art_91').
provenance(request_sets_period/1, 'celex:32024R1689/oj#art_91').
provenance(request_indicates_fines/1, 'celex:32024R1689/oj#art_91').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_91').
provenance(authorised_representative_supplies_information/2, 'celex:32024R1689/oj#art_91').
provenance(lawyer_supplies_information/2, 'celex:32024R1689/oj#art_91').
provenance(client_remains_responsible/1, 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_55').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_91', 'celex:32024R1689/oj#art_101').

% ==== celex:32024R1689/oj#art_92 ====
declared(systemic_risk/1, 'risk specific to high-impact capabilities of general-purpose AI models', '65').
declared(may_conduct_evaluation/2, 'AI Office may conduct evaluation of general-purpose AI model for purpose', 'celex:32024R1689/oj#art_92').
declared(evaluation_purpose_assess_compliance/1, 'evaluation purpose is to assess compliance of provider with obligations', 'celex:32024R1689/oj#art_92').
declared(evaluation_purpose_investigate_systemic_risk/1, 'evaluation purpose is to investigate systemic risks at Union level', 'celex:32024R1689/oj#art_92').
declared(information_insufficient/1, 'information gathered pursuant to Article 91 is insufficient', 'celex:32024R1689/oj#art_92').
declared(consulted_board/1, 'AI Office consulted the Board before conducting evaluation', 'celex:32024R1689/oj#art_92').
declared(appointed_independent_expert/1, 'independent expert appointed by Commission to carry out evaluation', 'celex:32024R1689/oj#art_92').
declared(meets_expert_criteria/1, 'independent expert meets criteria outlined in Article 68(2)', 'celex:32024R1689/oj#art_92').
declared(may_request_access/2, 'Commission may request access to general-purpose AI model through means', 'celex:32024R1689/oj#art_92').
declared(access_request_states/2, 'access request states legal basis, purpose, reasons, period and fines', 'celex:32024R1689/oj#art_92').
declared(must_supply_requested_information/2, 'provider or representative must supply information requested', 'celex:32024R1689/oj#art_92').
declared(authorised_representative_provides_access/2, 'authorised representative provides access on behalf of provider', 'celex:32024R1689/oj#art_92').
declared(structured_dialogue_initiated/2, 'AI Office initiated structured dialogue with provider before requesting access', 'celex:32024R1689/oj#art_92').
declared(implementing_act_adopted/1, 'Commission adopted implementing act setting out detailed arrangements for evaluations', 'celex:32024R1689/oj#art_92').
may_conduct_evaluation(M, evaluation(assess_compliance(P))) :-
    ai_office(ai_office),
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    consulted_board(ai_office),
    information_insufficient(art_91_information(P, M)).
may_conduct_evaluation(M, evaluation(investigate_systemic_risk)) :-
    ai_office(ai_office),
    general_purpose_ai_model(M),
    systemic_risk(M),
    consulted_board(ai_office),
    qualified_alert_scientific_panel(alert(M)).
appointed_independent_expert(E) :-
    scientific_panel_expert(E),
    meets_expert_criteria(E).
appointed_independent_expert(E) :-
    \+ scientific_panel_expert(E),
    meets_expert_criteria(E).
may_request_access(M, access(api)) :-
    general_purpose_ai_model(M).
may_request_access(M, access(source_code)) :-
    general_purpose_ai_model(M).
may_request_access(M, access(further_technical_means)) :-
    general_purpose_ai_model(M).
access_request_states(M, request(legal_basis, purpose, reasons, period, fines)) :-
    may_request_access(M, _Means).
must_supply_requested_information(P, information(M)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
must_supply_requested_information(R, access(M)) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    authorised_representative_provides_access(R, P, M).
authorised_representative_provides_access(R, P, M) :-
    authorised_representative(R),
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).
structured_dialogue_initiated(ai_office, P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    may_request_access(M, _Means).
implementing_act_adopted(act(evaluations, detailed_arrangements, independent_experts, selection_procedure)).
provenance(may_conduct_evaluation/2, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_assess_compliance/1, 'celex:32024R1689/oj#art_92').
provenance(evaluation_purpose_investigate_systemic_risk/1, 'celex:32024R1689/oj#art_92').
provenance(information_insufficient/1, 'celex:32024R1689/oj#art_92').
provenance(consulted_board/1, 'celex:32024R1689/oj#art_92').
provenance(appointed_independent_expert/1, 'celex:32024R1689/oj#art_92').
provenance(meets_expert_criteria/1, 'celex:32024R1689/oj#art_92').
provenance(may_request_access/2, 'celex:32024R1689/oj#art_92').
provenance(access_request_states/2, 'celex:32024R1689/oj#art_92').
provenance(must_supply_requested_information/2, 'celex:32024R1689/oj#art_92').
provenance(authorised_representative_provides_access/2, 'celex:32024R1689/oj#art_92').
provenance(structured_dialogue_initiated/2, 'celex:32024R1689/oj#art_92').
provenance(implementing_act_adopted/1, 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_90/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_68/par_2').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_92/par_1').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_92', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_93 ====
declared(may_request_measures/2, 'Commission may request provider to take measures', 'celex:32024R1689/oj#art_93').
declared(necessary_and_appropriate/1, 'request is necessary and appropriate', 'celex:32024R1689/oj#art_93').
declared(structured_dialogue/2, 'AI Office initiates structured dialogue with provider', 'celex:32024R1689/oj#art_93').
declared(commitments_binding/2, 'Commission makes commitments binding by decision', 'celex:32024R1689/oj#art_93').
declared(no_further_grounds_for_action/1, 'no further grounds for action declared', 'celex:32024R1689/oj#art_93').
declared(systemic_risk_at_union_level/1, 'systemic risk at Union level', 'celex:32024R1689/oj#art_93').
declared(serious_and_substantiated_concern/1, 'serious and substantiated concern', 'celex:32024R1689/oj#art_93').
declared(evaluation_under_article_92/1, 'evaluation carried out in accordance with Article 92', 'celex:32024R1689/oj#art_93').
declared(mitigation_measures/1, 'measures to mitigate systemic risk', 'celex:32024R1689/oj#art_93').
declared(provider_general_purpose_ai_model_with_systemic_risk/1, 'provider of general-purpose AI model with systemic risk', 'celex:32024R1689/oj#art_93').
may_request_measures(commission, comply_with_obligations) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P),
    may_request_measures(commission, P).
may_request_measures(commission, implement_mitigation_measures(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P),
    evaluation_under_article_92(E),
    serious_and_substantiated_concern(C),
    systemic_risk_at_union_level(R),
    evaluation_gave_rise_to(E, C, R).
may_request_measures(commission, restrict_making_available(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).
may_request_measures(commission, withdraw_model(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).
may_request_measures(commission, recall_model(P)) :-
    necessary_and_appropriate(request),
    general_purpose_ai_model_provider(P).
structured_dialogue(ai_office, P) :-
    general_purpose_ai_model_provider(P),
    before_requesting_measure.
commitments_binding(commission, P) :-
    provider_general_purpose_ai_model_with_systemic_risk(P),
    structured_dialogue(ai_office, P),
    offers_commitments(P, mitigation_measures(systemic_risk_at_union_level)).
no_further_grounds_for_action(commission) :-
    commitments_binding(commission, _P).
provider_general_purpose_ai_model_with_systemic_risk(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    provider(P, M),
    systemic_risk(M).
provenance(may_request_measures/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(no_further_grounds_for_action/1, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern/1, 'celex:32024R1689/oj#art_93').
provenance(evaluation_under_article_92/1, 'celex:32024R1689/oj#art_93').
provenance(mitigation_measures/1, 'celex:32024R1689/oj#art_93').
provenance(provider_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').

% ==== celex:32024R1689/oj#art_94 ====
declared(procedural_rights_apply/1, 'procedural rights under Regulation 2019/1020 Article 18 apply mutatis mutandis', 'celex:32024R1689/oj#art_94').
procedural_rights_apply(P) :-
    general_purpose_ai_model_provider(P).
provenance(procedural_rights_apply/1, 'celex:32024R1689/oj#art_94').
references('celex:32024R1689/oj#art_94', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_94', 'celex:32024R1689/oj').

% ==== celex:32024R1689/oj#art_95 ====
declared(must_facilitate_drawing_up_codes_of_conduct/2, 'actor facilitates drawing up of codes of conduct', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_intended_for_voluntary_application/1, 'codes of conduct intended to foster voluntary application of requirements to AI systems other than high-risk AI systems', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_covering_specific_requirements/1, 'codes of conduct concerning voluntary application of specific requirements to all AI systems', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_drawn_up_by/2, 'codes of conduct drawn up by actor', 'celex:32024R1689/oj#art_95').
declared(codes_of_conduct_may_cover_multiple_systems/1, 'codes of conduct may cover one or more AI systems taking into account similarity of intended purpose', 'celex:32024R1689/oj#art_95').
declared(must_take_into_account_sme_interests/2, 'actor takes into account specific interests and needs of SMEs including start-ups', 'celex:32024R1689/oj#art_95').
must_encourage_development(ai_office, codes_of_conduct_for_voluntary_application).
must_encourage_development(member_state, codes_of_conduct_for_voluntary_application).
must_facilitate_drawing_up_codes_of_conduct(ai_office, codes_of_conduct_for_voluntary_application).
must_facilitate_drawing_up_codes_of_conduct(member_state, codes_of_conduct_for_voluntary_application).
must_facilitate_drawing_up_codes_of_conduct(ai_office, codes_of_conduct_covering_specific_requirements).
must_facilitate_drawing_up_codes_of_conduct(member_state, codes_of_conduct_covering_specific_requirements).
codes_of_conduct_intended_for_voluntary_application(C) :-
    codes_of_conduct(C),
    intended_to_foster_voluntary_application(C),
    applies_to_ai_systems_other_than_high_risk(C).
codes_of_conduct_covering_specific_requirements(C) :-
    codes_of_conduct(C),
    voluntary_application_of_specific_requirements(C),
    applies_to_all_ai_systems(C),
    based_on_clear_objectives_and_key_performance_indicators(C).
codes_of_conduct_drawn_up_by(C, provider).
codes_of_conduct_drawn_up_by(C, deployer).
codes_of_conduct_drawn_up_by(C, organisation_representing_providers_or_deployers).
codes_of_conduct_may_cover_multiple_systems(C) :-
    codes_of_conduct(C),
    covers_one_or_more_ai_systems(C),
    takes_into_account_similarity_of_intended_purpose(C).
must_take_into_account_sme_interests(ai_office, codes_of_conduct).
must_take_into_account_sme_interests(member_state, codes_of_conduct).
must_take_into_account_sme_interests(Actor, codes_of_conduct) :-
    Actor = ai_office,
    specific_interests_and_needs_of_smes_including_startups.
must_take_into_account_sme_interests(Actor, codes_of_conduct) :-
    Actor = member_state,
    specific_interests_and_needs_of_smes_including_startups.
provenance(must_encourage_development/2, 'celex:32024R1689/oj#art_95').
provenance(must_facilitate_drawing_up_codes_of_conduct/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_intended_for_voluntary_application/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_covering_specific_requirements/1, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_drawn_up_by/2, 'celex:32024R1689/oj#art_95').
provenance(codes_of_conduct_may_cover_multiple_systems/1, 'celex:32024R1689/oj#art_95').
provenance(must_take_into_account_sme_interests/2, 'celex:32024R1689/oj#art_95').
references('celex:32024R1689/oj#art_95', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_96 ====
declared(must_develop_guidelines/2, 'Commission must develop guidelines on practical implementation of the regulation, covering specified topics', 'celex:32024R1689/oj#art_96').
declared(guidelines_topic/1, 'topic that Commission guidelines must cover', 'celex:32024R1689/oj#art_96').
declared(must_pay_particular_attention_to/2, 'Commission must pay particular attention to specified groups when issuing guidelines', 'celex:32024R1689/oj#art_96').
declared(guidelines_must_take_due_account_of/1, 'guidelines must take due account of specified sources', 'celex:32024R1689/oj#art_96').
declared(must_update_guidelines/2, 'Commission must update previously adopted guidelines when deemed necessary, at request of Member States or AI Office or on own initiative', 'celex:32024R1689/oj#art_96').
must_develop_guidelines(commission, guidelines(practical_implementation)).
guidelines_topic(application_of_requirements_and_obligations).
guidelines_topic(prohibited_practices).
guidelines_topic(practical_implementation_of_substantial_modification).
guidelines_topic(practical_implementation_of_transparency_obligations).
guidelines_topic(detailed_information_on_relationship_with_union_harmonisation_legislation).
guidelines_topic(application_of_definition_of_ai_system).
must_develop_guidelines(commission, guidelines(Topic)) :-
    guidelines_topic(Topic).
must_pay_particular_attention_to(commission, needs_of_smes_including_startups).
must_pay_particular_attention_to(commission, needs_of_local_public_authorities).
must_pay_particular_attention_to(commission, needs_of_sectors_most_likely_to_be_affected).
guidelines_must_take_due_account_of(generally_acknowledged_state_of_the_art_on_ai).
guidelines_must_take_due_account_of(relevant_harmonised_standards).
guidelines_must_take_due_account_of(relevant_common_specifications).
guidelines_must_take_due_account_of(harmonised_standards_or_technical_specifications_set_out_pursuant_to_union_harmonisation_law).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    member_state(_MemberState),
    request_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    ai_office(ai_office),
    request_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    own_initiative_update(PreviouslyAdopted).
must_update_guidelines(commission, guidelines(PreviouslyAdopted)) :-
    deemed_necessary_update(PreviouslyAdopted).
declared(request_update/1, 'Member State or AI Office requests update of guidelines', 'celex:32024R1689/oj#art_96').
declared(own_initiative_update/1, 'Commission acts on own initiative to update guidelines', 'celex:32024R1689/oj#art_96').
declared(deemed_necessary_update/1, 'update deemed necessary', 'celex:32024R1689/oj#art_96').
provenance(must_develop_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_topic/1, 'celex:32024R1689/oj#art_96').
provenance(must_pay_particular_attention_to/2, 'celex:32024R1689/oj#art_96').
provenance(guidelines_must_take_due_account_of/1, 'celex:32024R1689/oj#art_96').
provenance(must_update_guidelines/2, 'celex:32024R1689/oj#art_96').
provenance(request_update/1, 'celex:32024R1689/oj#art_96').
provenance(own_initiative_update/1, 'celex:32024R1689/oj#art_96').
provenance(deemed_necessary_update/1, 'celex:32024R1689/oj#art_96').
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
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_97').
declared(european_parliament/1, 'the European Parliament', 'celex:32024R1689/oj#art_97').
declared(council/1, 'the Council of the European Union', 'celex:32024R1689/oj#art_97').
declared(delegated_act/1, 'act adopted by the Commission under delegated power', 'celex:32024R1689/oj#art_97').
declared(power_to_adopt_delegated_acts_conferred/1, 'power to adopt delegated acts conferred on the Commission', 'celex:32024R1689/oj#art_97').
declared(delegation_period/2, 'delegation of power conferred for a period', 'celex:32024R1689/oj#art_97').
declared(tacit_extension/1, 'delegation of power tacitly extended for periods of identical duration', 'celex:32024R1689/oj#art_97').
declared(opposition_to_extension/2, 'European Parliament or Council opposes extension of delegation', 'celex:32024R1689/oj#art_97').
declared(revocation_of_delegation/2, 'delegation of power revoked by European Parliament or Council', 'celex:32024R1689/oj#art_97').
declared(revocation_decision/1, 'decision of revocation of delegation of power', 'celex:32024R1689/oj#art_97').
declared(report_on_delegation/1, 'Commission draws up report in respect of delegation of power', 'celex:32024R1689/oj#art_97').
declared(consult_experts/1, 'Commission consults experts designated by each Member State before adopting delegated act', 'celex:32024R1689/oj#art_97').
declared(notify_simultaneously/2, 'Commission notifies delegated act simultaneously to European Parliament and Council', 'celex:32024R1689/oj#art_97').
declared(delegated_act_enters_into_force/1, 'delegated act enters into force', 'celex:32024R1689/oj#art_97').
declared(no_objection_period/2, 'period within which no objection expressed by European Parliament or Council', 'celex:32024R1689/oj#art_97').
declared(objection_period_extended/2, 'objection period extended at initiative of European Parliament or Council', 'celex:32024R1689/oj#art_97').
european_parliament(european_parliament).
council(council).
power_to_adopt_delegated_acts_conferred(commission).
delegation_period(commission, years(5)).
report_on_delegation(commission).
must_draw_up_report(commission, delegation_of_power) :-
    commission(commission),
    delegation_period(commission, years(5)).
tacit_extension(commission) :-
    commission(commission),
    delegation_period(commission, years(5)),
    \+ opposition_to_extension(_, commission).
opposition_to_extension(european_parliament, commission).
opposition_to_extension(council, commission).
revocation_of_delegation(european_parliament, commission).
revocation_of_delegation(council, commission).
revocation_decision(D) :-
    revocation_of_delegation(_, commission),
    delegated_act(D).
must_consult_experts(commission, experts_designated_by_member_states) :-
    commission(commission),
    before_adopting_delegated_act(commission).
must_notify_simultaneously(commission, Act) :-
    commission(commission),
    delegated_act(Act),
    as_soon_as_adopted(commission, Act).
delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    no_objection_within(Act, months(3)).
delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    european_parliament_informed_no_objection(Act),
    council_informed_no_objection(Act).
no_objection_within(Act, months(3)) :-
    delegated_act(Act),
    \+ objection_expressed(european_parliament, Act),
    \+ objection_expressed(council, Act).
objection_period_extended(Act, months(6)) :-
    delegated_act(Act),
    initiative_to_extend(european_parliament, Act).
objection_period_extended(Act, months(6)) :-
    delegated_act(Act),
    initiative_to_extend(council, Act).
provenance(commission/1, 'celex:32024R1689/oj#art_97').
provenance(european_parliament/1, 'celex:32024R1689/oj#art_97').
provenance(council/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(power_to_adopt_delegated_acts_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(opposition_to_extension/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_of_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_decision/1, 'celex:32024R1689/oj#art_97').
provenance(report_on_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(consult_experts/1, 'celex:32024R1689/oj#art_97').
provenance(notify_simultaneously/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(no_objection_period/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period_extended/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_simultaneously/2, 'celex:32024R1689/oj#art_97').
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
declared(committee_assists_commission/1, 'committee assists the Commission', 'celex:32024R1689/oj#art_98').
declared(committee_within_meaning_of_regulation_182_2011/1, 'committee is a committee within the meaning of Regulation 182/2011', 'celex:32024R1689/oj#art_98').
declared(article_5_of_regulation_182_2011_applies/0, 'Article 5 of Regulation 182/2011 applies where reference is made to Article 98(2)', 'celex:32024R1689/oj#art_98').
committee_assists_commission(C) :-
    committee_within_meaning_of_regulation_182_2011(C).
committee_within_meaning_of_regulation_182_2011(C) :-
    committee(C).
article_5_of_regulation_182_2011_applies :-
    reference_made_to_article_98_par_2.
provenance(committee_assists_commission/1, 'celex:32024R1689/oj#art_98').
provenance(committee_within_meaning_of_regulation_182_2011/1, 'celex:32024R1689/oj#art_98').
provenance(article_5_of_regulation_182_2011_applies/0, 'celex:32024R1689/oj#art_98').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj').
references('celex:32024R1689/oj#art_98', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_98', 'celex:32011R0182/oj#art_5').

% ==== celex:32024R1689/oj#art_99 ====
declared(must_lay_down_penalty_rules/1, 'Member State lays down rules on penalties and enforcement measures for infringements by operators', 'celex:32024R1689/oj#art_99').
declared(penalty_applies_to_infringement/2, 'penalty applies to infringement by operator', 'celex:32024R1689/oj#art_99').
declared(administrative_fine_amount/3, 'administrative fine amount for infringement type, entity, and amount', 'celex:32024R1689/oj#art_99').
declared(fine_cap_eur/2, 'fine capped at EUR amount for infringement type', 'celex:32024R1689/oj#art_99').
declared(fine_cap_percent_turnover/3, 'fine capped at percentage of total worldwide annual turnover for infringement type', 'celex:32024R1689/oj#art_99').
declared(fine_cap_higher_of/2, 'fine is higher of two caps for infringement type', 'celex:32024R1689/oj#art_99').
declared(fine_reduced_for_sme/2, 'fine for SME is lower of applicable caps', 'celex:32024R1689/oj#art_99').
declared(must_notify_commission_penalties/1, 'Member State notifies Commission of penalty rules without delay', 'celex:32024R1689/oj#art_99').
declared(must_notify_commission_amendments/1, 'Member State notifies Commission of amendments to penalty rules without delay', 'celex:32024R1689/oj#art_99').
declared(must_take_into_account_sme_interests/1, 'penalties take into account interests of SMEs and their economic viability', 'celex:32024R1689/oj#art_99').
declared(must_consider_circumstances_for_fine/1, 'all relevant circumstances taken into account when deciding on fine', 'celex:32024R1689/oj#art_99').
declared(must_report_annual_fines/1, 'Member State reports annually to Commission about administrative fines issued', 'celex:32024R1689/oj#art_99').
declared(must_lay_down_rules_public_authorities/1, 'Member State lays down rules on fines for public authorities and bodies', 'celex:32024R1689/oj#art_99').
declared(fines_imposed_by_courts_or_bodies/1, 'fines imposed by competent national courts or other bodies with equivalent effect', 'celex:32024R1689/oj#art_99').
declared(procedural_safeguards_apply/1, 'exercise of powers subject to procedural safeguards including judicial remedies and due process', 'celex:32024R1689/oj#art_99').
must_lay_down_penalty_rules(MS) :-
    member_state(MS).
penalty_applies_to_infringement(MS, O) :-
    member_state(MS),
    operator(O).
effective_proportionate_dissuasive(penalty_rules(MS)) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).
must_take_into_account_sme_interests(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).
must_notify_commission_penalties(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS),
    without_delay.
must_notify_commission_amendments(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS),
    without_delay.
inform_commission(MS, penalty_rules) :-
    must_notify_commission_penalties(MS).
inform_commission(MS, amendment(penalty_rules)) :-
    must_notify_commission_amendments(MS).
fine_cap_eur(non_compliance_with_prohibition, eur(35000000)).
fine_cap_percent_turnover(non_compliance_with_prohibition, percent(7), preceding_financial_year).
fine_cap_higher_of(non_compliance_with_prohibition, higher_of(eur(35000000), percent(7))).
administrative_fine_amount(non_compliance_with_prohibition, O, Amount) :-
    operator(O),
    fine_cap_higher_of(non_compliance_with_prohibition, Cap),
    fine_amount_within_cap(O, non_compliance_with_prohibition, Cap, Amount).
fine_cap_eur(operator_obligations, eur(15000000)).
fine_cap_percent_turnover(operator_obligations, percent(3), preceding_financial_year).
fine_cap_higher_of(operator_obligations, higher_of(eur(15000000), percent(3))).
administrative_fine_amount(operator_obligations, O, Amount) :-
    operator(O),
    fine_cap_higher_of(operator_obligations, Cap),
    fine_amount_within_cap(O, operator_obligations, Cap, Amount).
fine_cap_eur(misleading_information, eur(7500000)).
fine_cap_percent_turnover(misleading_information, percent(1), preceding_financial_year).
fine_cap_higher_of(misleading_information, higher_of(eur(7500000), percent(1))).
administrative_fine_amount(misleading_information, O, Amount) :-
    operator(O),
    fine_cap_higher_of(misleading_information, Cap),
    fine_amount_within_cap(O, misleading_information, Cap, Amount).
fine_amount_within_cap(O, Type, higher_of(EurCap, percent(P)), Amount) :-
    undertaking(O),
    annual_total_worldwide_turnover(O, Turnover),
    PercentAmount is Turnover * P / 100,
    Amount = max(EurCap, PercentAmount).
fine_amount_within_cap(O, _Type, higher_of(EurCap, _Percent), EurCap) :-
    \+ undertaking(O).
fine_reduced_for_sme(O, Type) :-
    sme(O),
    member_state(MS),
    penalty_applies_to_infringement(MS, O).
must_consider_circumstances_for_fine(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).
relevant_circumstance(nature_gravity_duration).
relevant_circumstance(previous_fines_same_infringement).
relevant_circumstance(previous_fines_other_law).
relevant_circumstance(size_turnover_market_share).
relevant_circumstance(aggravating_mitigating_factors).
relevant_circumstance(cooperation_with_authorities).
relevant_circumstance(degree_of_responsibility).
relevant_circumstance(manner_infringement_became_known).
relevant_circumstance(intentional_or_negligent).
relevant_circumstance(action_to_mitigate_harm).
must_lay_down_rules_public_authorities(MS) :-
    member_state(MS).
fines_imposed_by_courts_or_bodies(MS) :-
    member_state(MS).
procedural_safeguards_apply(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).
must_report_annual_fines(MS) :-
    member_state(MS),
    must_lay_down_penalty_rules(MS).
must_report(MS, annual_administrative_fines) :-
    must_report_annual_fines(MS).
declared(undertaking/1, 'entity that is an undertaking', 'celex:32024R1689/oj#art_99').
declared(sme/1, 'small or medium-sized enterprise including start-up', 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_penalty_rules/1, 'celex:32024R1689/oj#art_99').
provenance(penalty_applies_to_infringement/2, 'celex:32024R1689/oj#art_99').
provenance(administrative_fine_amount/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_eur/2, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_percent_turnover/3, 'celex:32024R1689/oj#art_99').
provenance(fine_cap_higher_of/2, 'celex:32024R1689/oj#art_99').
provenance(fine_reduced_for_sme/2, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_penalties/1, 'celex:32024R1689/oj#art_99').
provenance(must_notify_commission_amendments/1, 'celex:32024R1689/oj#art_99').
provenance(must_take_into_account_sme_interests/1, 'celex:32024R1689/oj#art_99').
provenance(must_consider_circumstances_for_fine/1, 'celex:32024R1689/oj#art_99').
provenance(must_report_annual_fines/1, 'celex:32024R1689/oj#art_99').
provenance(must_lay_down_rules_public_authorities/1, 'celex:32024R1689/oj#art_99').
provenance(fines_imposed_by_courts_or_bodies/1, 'celex:32024R1689/oj#art_99').
provenance(procedural_safeguards_apply/1, 'celex:32024R1689/oj#art_99').
provenance(undertaking/1, 'celex:32024R1689/oj#art_99').
provenance(sme/1, 'celex:32024R1689/oj#art_99').
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
declared(union_institution_body_office_or_agency/1, 'Union institution, body, office or agency', 'celex:32024R1689/oj#art_100').
declared(administrative_fine/2, 'administrative fine of a given amount imposed on an entity', 'celex:32024R1689/oj#art_100').
declared(may_impose_administrative_fine/2, 'EDPS may impose administrative fine on entity', 'celex:32024R1689/oj#art_100').
declared(relevant_circumstance_for_fine/1, 'circumstance to be taken into account when deciding on administrative fine', 'celex:32024R1689/oj#art_100').
declared(nature_gravity_duration_of_infringement/1, 'nature, gravity and duration of the infringement and its consequences', 'celex:32024R1689/oj#art_100').
declared(degree_of_responsibility/1, 'degree of responsibility taking into account technical and organisational measures', 'celex:32024R1689/oj#art_100').
declared(action_to_mitigate_damage/1, 'action taken to mitigate damage suffered by affected persons', 'celex:32024R1689/oj#art_100').
declared(degree_of_cooperation_with_edps/1, 'degree of cooperation with EDPS to remedy infringement and mitigate adverse effects', 'celex:32024R1689/oj#art_100').
declared(similar_previous_infringements/1, 'similar previous infringements by the entity', 'celex:32024R1689/oj#art_100').
declared(manner_infringement_became_known/1, 'manner in which infringement became known to EDPS, including whether and to what extent entity notified', 'celex:32024R1689/oj#art_100').
declared(annual_budget/1, 'annual budget of the entity', 'celex:32024R1689/oj#art_100').
declared(fine_amount_limit/2, 'maximum administrative fine amount for a category of infringement', 'celex:32024R1689/oj#art_100').
declared(non_compliance_with_prohibition_fine_limit/1, 'fine limit for non-compliance with Article 5 prohibition', 'celex:32024R1689/oj#art_100').
declared(non_compliance_with_other_requirements_fine_limit/1, 'fine limit for non-compliance with other requirements or obligations', 'celex:32024R1689/oj#art_100').
declared(opportunity_to_be_heard/2, 'EDPS gives entity opportunity to be heard before taking decision', 'celex:32024R1689/oj#art_100').
declared(decisions_based_only_on_commented_elements/1, 'EDPS bases decisions only on elements and circumstances on which parties have been able to comment', 'celex:32024R1689/oj#art_100').
declared(complainants_associated_with_proceedings/1, 'complainants are associated closely with the proceedings', 'celex:32024R1689/oj#art_100').
declared(rights_of_defence_respected/1, 'rights of defence of parties concerned are fully respected', 'celex:32024R1689/oj#art_100').
declared(access_to_file/1, 'parties entitled to access EDPS file subject to legitimate interests', 'celex:32024R1689/oj#art_100').
declared(fines_contribute_to_union_budget/1, 'funds collected by fines contribute to general budget of the Union', 'celex:32024R1689/oj#art_100').
declared(fines_do_not_affect_effective_operation/1, 'fines do not affect effective operation of the fined entity', 'celex:32024R1689/oj#art_100').
declared(must_notify_commission_annually/2, 'EDPS must notify Commission annually of fines imposed and litigation initiated', 'celex:32024R1689/oj#art_100').
european_data_protection_supervisor(edps).
union_institution_body_office_or_agency(E) :-
    union_institution(E).
union_institution_body_office_or_agency(E) :-
    union_body(E).
union_institution_body_office_or_agency(E) :-
    union_office(E).
union_institution_body_office_or_agency(E) :-
    union_agency(E).
may_impose_administrative_fine(edps, E) :-
    union_institution_body_office_or_agency(E),
    in_scope_of_regulation(E).
relevant_circumstance_for_fine(nature_gravity_duration_of_infringement(C)) :-
    nature_gravity_duration(C).
relevant_circumstance_for_fine(degree_of_responsibility(C)) :-
    degree_of_responsibility(C).
relevant_circumstance_for_fine(action_to_mitigate_damage(C)) :-
    action_to_mitigate_damage(C).
relevant_circumstance_for_fine(degree_of_cooperation_with_edps(C)) :-
    degree_of_cooperation_with_edps(C).
relevant_circumstance_for_fine(similar_previous_infringements(C)) :-
    similar_previous_infringements(C).
relevant_circumstance_for_fine(manner_infringement_became_known(C)) :-
    manner_infringement_became_known(C).
relevant_circumstance_for_fine(annual_budget(C)) :-
    annual_budget(C).
fine_amount_limit(non_compliance_with_prohibition, eur(1500000)).
fine_amount_limit(non_compliance_with_other_requirements, eur(750000)).
non_compliance_with_prohibition_fine_limit(eur(1500000)).
non_compliance_with_other_requirements_fine_limit(eur(750000)).
administrative_fine(E, Amount) :-
    non_compliance_with_prohibition(E),
    Amount =< eur(1500000).
administrative_fine(E, Amount) :-
    non_compliance_with_other_requirements(E),
    Amount =< eur(750000).
opportunity_to_be_heard(edps, E) :-
    subject_of_proceedings(E, edps),
    before_decision(edps, E).
decisions_based_only_on_commented_elements(edps).
complainants_associated_with_proceedings(P) :-
    complainant(C),
    associated_with_proceedings(C, P).
rights_of_defence_respected(P) :-
    party_concerned(P).
access_to_file(P) :-
    party_concerned(P),
    \+ legitimate_interest_excludes_access(P).
fines_contribute_to_union_budget(F) :-
    administrative_fine(_E, F).
fines_do_not_affect_effective_operation(E) :-
    administrative_fine(E, _Amount).
must_notify_commission_annually(edps, notification(fines_imposed, litigation_initiated)).
provenance(european_data_protection_supervisor/1, 'celex:32024R1689/oj#art_100').
provenance(union_institution_body_office_or_agency/1, 'celex:32024R1689/oj#art_100').
provenance(administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(may_impose_administrative_fine/2, 'celex:32024R1689/oj#art_100').
provenance(relevant_circumstance_for_fine/1, 'celex:32024R1689/oj#art_100').
provenance(nature_gravity_duration_of_infringement/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_responsibility/1, 'celex:32024R1689/oj#art_100').
provenance(action_to_mitigate_damage/1, 'celex:32024R1689/oj#art_100').
provenance(degree_of_cooperation_with_edps/1, 'celex:32024R1689/oj#art_100').
provenance(similar_previous_infringements/1, 'celex:32024R1689/oj#art_100').
provenance(manner_infringement_became_known/1, 'celex:32024R1689/oj#art_100').
provenance(annual_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fine_amount_limit/2, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_with_prohibition_fine_limit/1, 'celex:32024R1689/oj#art_100').
provenance(non_compliance_with_other_requirements_fine_limit/1, 'celex:32024R1689/oj#art_100').
provenance(opportunity_to_be_heard/2, 'celex:32024R1689/oj#art_100').
provenance(decisions_based_only_on_commented_elements/1, 'celex:32024R1689/oj#art_100').
provenance(complainants_associated_with_proceedings/1, 'celex:32024R1689/oj#art_100').
provenance(rights_of_defence_respected/1, 'celex:32024R1689/oj#art_100').
provenance(access_to_file/1, 'celex:32024R1689/oj#art_100').
provenance(fines_contribute_to_union_budget/1, 'celex:32024R1689/oj#art_100').
provenance(fines_do_not_affect_effective_operation/1, 'celex:32024R1689/oj#art_100').
provenance(must_notify_commission_annually/2, 'celex:32024R1689/oj#art_100').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_100', 'celex:32024R1689/oj#art_100').

% ==== celex:32024R1689/oj#art_101 ====
declared(fine_for_general_purpose_ai_model_provider/2, 'Commission may impose fine on provider of general-purpose AI model, amount', 'celex:32024R1689/oj#art_101').
declared(fine_amount_not_exceeding/2, 'fine amount does not exceed the higher of 3 percent of annual total worldwide turnover or EUR 15000000', 'celex:32024R1689/oj#art_101').
declared(commission_finds_intentional_or_negligent_infringement/2, 'Commission finds provider intentionally or negligently infringed, circumstance', 'celex:32024R1689/oj#art_101').
declared(infringed_relevant_provisions/1, 'provider infringed relevant provisions of the regulation', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_request/2, 'provider failed to comply with request, request type', 'celex:32024R1689/oj#art_101').
declared(supplied_incorrect_incomplete_or_misleading_information/1, 'provider supplied incorrect, incomplete or misleading information', 'celex:32024R1689/oj#art_101').
declared(failed_to_comply_with_measure/2, 'provider failed to comply with measure requested under Article 93', 'celex:32024R1689/oj#art_101').
declared(failed_to_make_available_access/2, 'provider failed to make available access to model for evaluation under Article 92', 'celex:32024R1689/oj#art_101').
declared(regard_had_to_nature_gravity_duration/1, 'regard had to nature, gravity and duration of infringement', 'celex:32024R1689/oj#art_101').
declared(take_due_account_of_proportionality_and_appropriateness/1, 'take due account of principles of proportionality and appropriateness', 'celex:32024R1689/oj#art_101').
declared(take_into_account_commitments/2, 'take into account commitments made, source of commitments', 'celex:32024R1689/oj#art_101').
declared(commitments_made_under_article_93_par_3/1, 'commitments made in accordance with Article 93(3)', 'celex:32024R1689/oj#art_101').
declared(commitments_made_in_codes_of_practice/1, 'commitments made in relevant codes of practice in accordance with Article 56', 'celex:32024R1689/oj#art_101').
declared(commission_communicates_preliminary_findings/2, 'Commission communicates preliminary findings to provider before adopting decision', 'celex:32024R1689/oj#art_101').
declared(opportunity_to_be_heard/1, 'provider given opportunity to be heard', 'celex:32024R1689/oj#art_101').
declared(fines_effective_proportionate_dissuasive/1, 'fines imposed are effective, proportionate and dissuasive', 'celex:32024R1689/oj#art_101').
declared(information_on_fines_communicated_to_board/1, 'information on fines communicated to the Board as appropriate', 'celex:32024R1689/oj#art_101').
declared(court_of_justice_unlimited_jurisdiction/1, 'Court of Justice has unlimited jurisdiction to review Commission decisions fixing fines', 'celex:32024R1689/oj#art_101').
declared(court_may_cancel_reduce_or_increase_fine/1, 'Court may cancel, reduce or increase the fine imposed', 'celex:32024R1689/oj#art_101').
declared(commission_adopts_implementing_acts/1, 'Commission adopts implementing acts with detailed arrangements and procedural safeguards', 'celex:32024R1689/oj#art_101').
declared(implementing_acts_adopted_under_examination_procedure/1, 'implementing acts adopted in accordance with examination procedure under Article 98(2)', 'celex:32024R1689/oj#art_101').
fine_for_general_purpose_ai_model_provider(P, Amount) :-
    general_purpose_ai_model_provider(P),
    commission_finds_intentional_or_negligent_infringement(P, _Circumstance),
    fine_amount_not_exceeding(P, Amount).
fine_amount_not_exceeding(P, Amount) :-
    general_purpose_ai_model_provider(P),
    annual_total_worldwide_turnover(P, Turnover),
    MaxByPercentage is Turnover * 0.03,
    MaxByFixed is 15000000,
    Amount = max(MaxByPercentage, MaxByFixed).
commission_finds_intentional_or_negligent_infringement(P, infringed_relevant_provisions) :-
    general_purpose_ai_model_provider(P),
    infringed_relevant_provisions(P).
commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_request(document_or_information)) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_request(P, document_or_information).
commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_request(document_or_information)) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_request(P, document_or_information),
    supplied_incorrect_incomplete_or_misleading_information(P).
commission_finds_intentional_or_negligent_infringement(P, failed_to_comply_with_measure) :-
    general_purpose_ai_model_provider(P),
    failed_to_comply_with_measure(P, _Measure).
commission_finds_intentional_or_negligent_infringement(P, failed_to_make_available_access) :-
    general_purpose_ai_model_provider(P),
    failed_to_make_available_access(P, _Model).
infringed_relevant_provisions(P) :-
    general_purpose_ai_model_provider(P),
    acting_contrary_to_obligations(P).
failed_to_comply_with_request(P, document_or_information) :-
    general_purpose_ai_model_provider(P),
    must_provide(P, _Information),
    \+ must_provide(P, _Information).
failed_to_comply_with_measure(P, measure_requested_under_article_93) :-
    general_purpose_ai_model_provider(P),
    must_take_necessary_steps(P, _Steps),
    \+ must_take_necessary_steps(P, _Steps).
failed_to_make_available_access(P, general_purpose_ai_model) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ access_made_available(P, M).
failed_to_make_available_access(P, general_purpose_ai_model_with_systemic_risk) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ access_made_available(P, M).
regard_had_to_nature_gravity_duration(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    nature_gravity_duration(_Infringement).
take_due_account_of_proportionality_and_appropriateness(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    effective_proportionate_dissuasive(Fine).
take_into_account_commitments(P, commitments_under_article_93_par_3) :-
    general_purpose_ai_model_provider(P),
    commitments_made_under_article_93_par_3(P).
take_into_account_commitments(P, commitments_in_codes_of_practice) :-
    general_purpose_ai_model_provider(P),
    commitments_made_in_codes_of_practice(P).
commission_communicates_preliminary_findings(P, preliminary_findings) :-
    general_purpose_ai_model_provider(P),
    opportunity_to_be_heard(P).
fines_effective_proportionate_dissuasive(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine),
    effective_proportionate_dissuasive(Fine).
information_on_fines_communicated_to_board(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine).
court_of_justice_unlimited_jurisdiction(decision) :-
    fine_for_general_purpose_ai_model_provider(_P, _Amount).
court_may_cancel_reduce_or_increase_fine(Fine) :-
    fine_for_general_purpose_ai_model_provider(_P, Fine).
commission_adopts_implementing_acts(implementing_acts_for_proceedings) :-
    true.
implementing_acts_adopted_under_examination_procedure(act) :-
    commission_adopts_implementing_acts(act).
provenance(fine_for_general_purpose_ai_model_provider/2, 'celex:32024R1689/oj#art_101').
provenance(fine_amount_not_exceeding/2, 'celex:32024R1689/oj#art_101').
provenance(commission_finds_intentional_or_negligent_infringement/2, 'celex:32024R1689/oj#art_101').
provenance(infringed_relevant_provisions/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_request/2, 'celex:32024R1689/oj#art_101').
provenance(supplied_incorrect_incomplete_or_misleading_information/1, 'celex:32024R1689/oj#art_101').
provenance(failed_to_comply_with_measure/2, 'celex:32024R1689/oj#art_101').
provenance(failed_to_make_available_access/2, 'celex:32024R1689/oj#art_101').
provenance(regard_had_to_nature_gravity_duration/1, 'celex:32024R1689/oj#art_101').
provenance(take_due_account_of_proportionality_and_appropriateness/1, 'celex:32024R1689/oj#art_101').
provenance(take_into_account_commitments/2, 'celex:32024R1689/oj#art_101').
provenance(commitments_made_under_article_93_par_3/1, 'celex:32024R1689/oj#art_101').
provenance(commitments_made_in_codes_of_practice/1, 'celex:32024R1689/oj#art_101').
provenance(commission_communicates_preliminary_findings/2, 'celex:32024R1689/oj#art_101').
provenance(opportunity_to_be_heard/1, 'celex:32024R1689/oj#art_101').
provenance(fines_effective_proportionate_dissuasive/1, 'celex:32024R1689/oj#art_101').
provenance(information_on_fines_communicated_to_board/1, 'celex:32024R1689/oj#art_101').
provenance(court_of_justice_unlimited_jurisdiction/1, 'celex:32024R1689/oj#art_101').
provenance(court_may_cancel_reduce_or_increase_fine/1, 'celex:32024R1689/oj#art_101').
provenance(commission_adopts_implementing_acts/1, 'celex:32024R1689/oj#art_101').
provenance(implementing_acts_adopted_under_examination_procedure/1, 'celex:32024R1689/oj#art_101').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_91').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_101/par_1').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_93/par_3').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_101', 'celex:32024R1689/oj#art_98/par_2').

% ==== celex:32024R1689/oj#art_102 ====
declared(must_take_into_account_requirements/2, 'when adopting detailed measures for security equipment concerning AI systems, the requirements of Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_102').
must_take_into_account_requirements(adopting_detailed_measures, requirements(chapter_3_section_2)) :-
    adopting_detailed_measures_for_security_equipment(S),
    security_equipment_concerning_ai_systems(S).
adopting_detailed_measures_for_security_equipment(S) :-
    adopting_detailed_measures(S),
    related_to_technical_specifications_and_procedures(S),
    for_approval_and_use_of_security_equipment(S).
security_equipment_concerning_ai_systems(S) :-
    security_equipment(S),
    concerning_ai_systems(S),
    ai_system(S).
adopting_detailed_measures(_).
declared(adopting_detailed_measures/1, 'adopting detailed measures related to technical specifications and procedures', 'celex:32024R1689/oj#art_102').
declared(related_to_technical_specifications_and_procedures/1, 'related to technical specifications and procedures for approval and use', 'celex:32024R1689/oj#art_102').
declared(for_approval_and_use_of_security_equipment/1, 'for approval and use of security equipment', 'celex:32024R1689/oj#art_102').
declared(security_equipment/1, 'security equipment', 'celex:32024R1689/oj#art_102').
declared(concerning_ai_systems/1, 'concerning Artificial Intelligence systems within the meaning of the AI Act', 'celex:32024R1689/oj#art_102').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures_for_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment_concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').
provenance(adopting_detailed_measures/1, 'celex:32024R1689/oj#art_102').
provenance(related_to_technical_specifications_and_procedures/1, 'celex:32024R1689/oj#art_102').
provenance(for_approval_and_use_of_security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(security_equipment/1, 'celex:32024R1689/oj#art_102').
provenance(concerning_ai_systems/1, 'celex:32024R1689/oj#art_102').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account', 'celex:32024R1689/oj#art_103').
must_take_into_account_requirements(adopting_delegated_acts, requirements(chapter_3_section_2)) :-
    ai_system_safety_component(S),
    delegated_act_concerning_ai_safety_components(A),
    concerns(A, S).
concerns(A, S) :-
    adopting_delegated_acts(A),
    ai_system_safety_component(S).
adopting_delegated_acts(A) :-
    delegated_act_concerning_ai_safety_components(A).
ai_system_safety_component(S) :-
    safety_component(S),
    ai_system(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_103').
provenance(concerns/2, 'celex:32024R1689/oj#art_103').
provenance(adopting_delegated_acts/1, 'celex:32024R1689/oj#art_103').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_103').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5').
references('celex:32024R1689/oj#art_103', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_103', 'celex:32013R0167/oj#art_17/par_5/unp_1').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account', 'celex:32024R1689/oj#art_104').
must_take_into_account_requirements(Commission, requirements(chapter_3_section_2)) :-
    adopting_delegated_acts(Commission, concerning(ai_systems_safety_components)).
adopting_delegated_acts(Commission, concerning(ai_systems_safety_components)) :-
    member_state(Commission),
    ai_system_safety_component(S),
    delegated_act_concerning_ai_safety_components(A),
    adopts(Commission, A).
ai_system_safety_component(S) :-
    ai_system(S),
    safety_component(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_104').
provenance(adopting_delegated_acts/2, 'celex:32024R1689/oj#art_104').
provenance(ai_system_safety_component/1, 'celex:32024R1689/oj#art_104').
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
declared(must_take_into_account_ai_act_requirements/1, 'Commission takes into account requirements set out in Chapter III Section 2 of the AI Act when carrying out activities under Lifts Directive Article 8', 'celex:32024R1689/oj#art_105').
declared(ai_system_safety_component_lifts_directive/1, 'AI system that is a safety component within the meaning of the AI Act and subject to Lifts Directive', 'celex:32024R1689/oj#art_105').
declared(commission_activity_under_lifts_directive/1, 'Commission activity carried out pursuant to Lifts Directive Article 8(1) or adopting technical specifications and testing standards under Article 8(2) or 8(3)', 'celex:32024R1689/oj#art_105').
ai_system_safety_component_lifts_directive(S) :-
    ai_system_safety_component(S),
    union_harmonisation_legislation_applies(S).
commission_activity_under_lifts_directive(A) :-
    commission_carries_out_activity_under_lifts_directive_par_1(A).
commission_activity_under_lifts_directive(A) :-
    commission_adopts_technical_specifications_under_lifts_directive_par_2(A).
commission_activity_under_lifts_directive(A) :-
    commission_adopts_testing_standards_under_lifts_directive_par_3(A).
must_take_into_account_ai_act_requirements(A) :-
    commission_activity_under_lifts_directive(A),
    ai_system_safety_component_lifts_directive(S),
    chapter_3_section_2_requirements_apply(S).
chapter_3_section_2_requirements_apply(S) :-
    high_risk_ai_system(S).
provenance(must_take_into_account_ai_act_requirements/1, 'celex:32024R1689/oj#art_105').
provenance(ai_system_safety_component_lifts_directive/1, 'celex:32024R1689/oj#art_105').
provenance(commission_activity_under_lifts_directive/1, 'celex:32024R1689/oj#art_105').
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
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#art_8/par_1').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_2').
references('celex:32024R1689/oj#art_105', 'celex:32014L0090/oj#art_8/par_3').
references('celex:32024R1689/oj#art_105', 'celex:32024R1689/oj#chp_3/sec_2').

% ==== celex:32024R1689/oj#art_106 ====
declared(must_take_into_account_requirements/2, 'when adopting delegated and implementing acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account', 'celex:32024R1689/oj#art_106').
declared(ai_system_safety_component_of_ai_act/1, 'AI system which is a safety component within the meaning of the AI Act', 'celex:32024R1689/oj#art_106').
ai_system_safety_component_of_ai_act(S) :-
    ai_system(S),
    safety_component(S),
    ai_system_safety_component(S).
must_take_into_account_requirements(adopting_delegated_or_implementing_acts, chapter_3_section_2_requirements) :-
    ai_system_safety_component_of_ai_act(S),
    concerning(S, adopting_delegated_or_implementing_acts).
concerning(S, adopting_delegated_or_implementing_acts) :-
    delegated_act_concerning_ai_safety_components(S).
concerning(S, adopting_delegated_or_implementing_acts) :-
    implementing_act_concerning_ai_safety_components(S).
declared(delegated_act_concerning_ai_safety_components/1, 'delegated act concerning AI systems which are safety components', 'celex:32024R1689/oj#art_106').
declared(implementing_act_concerning_ai_safety_components/1, 'implementing act concerning AI systems which are safety components', 'celex:32024R1689/oj#art_106').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_106').
provenance(ai_system_safety_component_of_ai_act/1, 'celex:32024R1689/oj#art_106').
provenance(delegated_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_106').
provenance(implementing_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_106').
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
declared(must_take_into_account_requirements/2, 'when adopting delegated acts concerning AI systems which are safety components, the requirements set out in Chapter III Section 2 shall be taken into account', 'celex:32024R1689/oj#art_107').
declared(adopting_delegated_acts_concerning_ai_safety_components/1, 'adopting delegated acts pursuant to Article 5(3) of Regulation 2018/858 concerning AI systems which are safety components', 'celex:32024R1689/oj#art_107').
must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_delegated_acts_concerning_ai_safety_components(Act).
adopting_delegated_acts_concerning_ai_safety_components(Act) :-
    delegated_act_concerning_ai_safety_components(Act),
    ai_system_safety_component(S),
    Act = delegated_act(S).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_107').
provenance(adopting_delegated_acts_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_107').
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
declared(must_take_into_account_requirements/2, 'when adopting acts concerning AI systems that are safety components, the requirements of Chapter 3 Section 2 shall be taken into account', 'celex:32024R1689/oj#art_108').
declared(adopting_implementing_act/2, 'adopting implementing act pursuant to a specific legal basis concerning a subject matter', 'celex:32024R1689/oj#art_108').
declared(adopting_delegated_act/2, 'adopting delegated act pursuant to a specific legal basis concerning a subject matter', 'celex:32024R1689/oj#art_108').
declared(concerning_ai_safety_components/1, 'act concerns Artificial Intelligence systems which are safety components within the meaning of the AI Act', 'celex:32024R1689/oj#art_108').
must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(Act, LegalBasis),
    concerning_ai_safety_components(Act),
    legal_basis_for_ai_safety_components(LegalBasis).
must_take_into_account_requirements(Act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(Act, LegalBasis),
    concerning_ai_safety_components(Act),
    legal_basis_for_ai_safety_components(LegalBasis).
concerning_ai_safety_components(Act) :-
    act_concerns(Act, S),
    ai_system_safety_component(S).
adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1') :-
    true.
adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1') :-
    true.
adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1') :-
    true.
adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1') :-
    true.
adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2') :-
    true.
adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1') :-
    true.
adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2') :-
    true.
adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1') :-
    true.
adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2') :-
    true.
legal_basis_for_ai_safety_components('celex:32018R1139/oj#art_17/par_1').
legal_basis_for_ai_safety_components('celex:32014L0090/oj#art_19/par_1').
legal_basis_for_ai_safety_components('celex:32014L0090/oj#art_19/par_2').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_43/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_47/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_47/par_2').
legal_basis_for_ai_safety_components('celex:32018R1139/oj#art_57/unp_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_58/par_1').
legal_basis_for_ai_safety_components('celex:32024R1689/oj#art_58/par_2').
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32018R1139/oj#art_17/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32014L0090/oj#art_19/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32024R1689/oj#art_43/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_implementing_act(act, 'celex:32018R1139/oj#art_57/unp_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_47/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_1'),
    act_concerns(act, S),
    ai_system_safety_component(S).
must_take_into_account_requirements(act, chapter_3_section_2_requirements) :-
    adopting_delegated_act(act, 'celex:32024R1689/oj#art_58/par_2'),
    act_concerns(act, S),
    ai_system_safety_component(S).
declared(act_concerns/2, 'an act concerns a subject matter', 'celex:32024R1689/oj#art_108').
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_implementing_act/2, 'celex:32024R1689/oj#art_108').
provenance(adopting_delegated_act/2, 'celex:32024R1689/oj#art_108').
provenance(concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_108').
provenance(act_concerns/2, 'celex:32024R1689/oj#art_108').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_17/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_108', 'celex:32008R0300/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0167/oj').
references('celex:32024R1689/oj#art_108', 'celex:32013R0168/oj').
references('celex:32024R1689/oj#art_108', 'celex:32018R0858/oj').
references('celex:32024R1689/oj#art_108', 'celex:32019R2144/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj').
references('celex:32024R1689/oj#art_108', 'celex:32016L0797/oj').
references('celex:32024R1689/oj#art_108', 'celex:32020L1828/oj').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32014L0090/oj#art_19/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_43/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_47/par_2').
references('celex:32024R1689/oj#art_108', 'celex:32018R1139/oj#art_57/unp_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_108', 'celex:32024R1689/oj#art_58/par_2').

% ==== celex:32024R1689/oj#art_109 ====
declared(must_take_into_account_requirements/2, 'requirements of Chapter 3 Section 2 taken into account when adopting implementing acts', 'celex:32024R1689/oj#art_109').
declared(implementing_act_concerning_ai_safety_components/1, 'implementing act concerning AI systems which are safety components', 'celex:32024R1689/oj#art_109').
declared(adopting_implementing_acts_pursuant_to/2, 'adopting implementing acts pursuant to a specific article paragraph', 'celex:32024R1689/oj#art_109').
implementing_act_concerning_ai_safety_components(A) :-
    ai_system_safety_component(S),
    implementing_act(A, S).
adopting_implementing_acts_pursuant_to(Commission, art_11_par_2) :-
    member_state(Commission).
must_take_into_account_requirements(Commission, requirements(chp_3, sec_2)) :-
    adopting_implementing_acts_pursuant_to(Commission, art_11_par_2),
    implementing_act_concerning_ai_safety_components(A),
    adopting(A, Commission).
provenance(must_take_into_account_requirements/2, 'celex:32024R1689/oj#art_109').
provenance(implementing_act_concerning_ai_safety_components/1, 'celex:32024R1689/oj#art_109').
provenance(adopting_implementing_acts_pursuant_to/2, 'celex:32024R1689/oj#art_109').
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
declared(amended_annex_i/1, 'Annex I of Directive 2020/1828 is amended by adding point 68 on the AI Act', 'celex:32024R1689/oj#art_110').
declared(annex_i_point_68_added/1, 'point 68 is added to Annex I of Directive 2020/1828', 'celex:32024R1689/oj#art_110').
declared(annex_i_point_68_refers_to_ai_act/1, 'point 68 of Annex I refers to Regulation 2024/1689 (AI Act)', 'celex:32024R1689/oj#art_110').
amended_annex_i(directive_2020_1828).
annex_i_point_68_added(directive_2020_1828).
annex_i_point_68_refers_to_ai_act(directive_2020_1828).
provenance(amended_annex_i/1, 'celex:32024R1689/oj#art_110').
provenance(annex_i_point_68_added/1, 'celex:32024R1689/oj#art_110').
provenance(annex_i_point_68_refers_to_ai_act/1, 'celex:32024R1689/oj#art_110').
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
declared(large_scale_it_system/1, 'large-scale IT system established by legal acts listed in Annex X', 'celex:32024R1689/oj#art_111').
declared(component_of_large_scale_it_system/2, 'AI system is a component of a large-scale IT system', 'celex:32024R1689/oj#art_111').
declared(placed_on_market_or_put_into_service_before/2, 'AI system placed on market or put into service before a date', 'celex:32024R1689/oj#art_111').
declared(significant_change_in_design/1, 'AI system subject to significant change in design', 'celex:32024R1689/oj#art_111').
declared(intended_for_use_by_public_authorities/1, 'high-risk AI system intended to be used by public authorities', 'celex:32024R1689/oj#art_111').
declared(must_comply_by_date/2, 'entity must take necessary steps to comply with the regulation by a date', 'celex:32024R1689/oj#art_111').
declared(evaluation_of_large_scale_it_system/1, 'evaluation of large-scale IT system undertaken as provided for in legal acts', 'celex:32024R1689/oj#art_111').
large_scale_it_system(S) :-
    ai_system(S),
    component_of_large_scale_it_system(S, _).
component_of_large_scale_it_system(S, L) :-
    ai_system(S),
    large_scale_it_system(L).
placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)) :-
    ai_system(S),
    placing_on_market(S).
placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)) :-
    ai_system(S),
    putting_into_service(S).
placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    placing_on_market(S).
placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    putting_into_service(S).
placed_on_market_or_put_into_service_before(S, date(2025, 8, 2)) :-
    general_purpose_ai_model(S),
    placing_on_market(S).
must_comply_by_date(S, date(2030, 12, 31)) :-
    ai_system(S),
    component_of_large_scale_it_system(S, _),
    placed_on_market_or_put_into_service_before(S, date(2027, 8, 2)).
must_comply_by_date(S, date(2030, 8, 2)) :-
    high_risk_ai_system(S),
    intended_for_use_by_public_authorities(S),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)).
must_comply_by_date(S, date(2027, 8, 2)) :-
    general_purpose_ai_model(S),
    placed_on_market_or_put_into_service_before(S, date(2025, 8, 2)).
must_comply_by_date(S, date(2026, 8, 2)) :-
    high_risk_ai_system(S),
    \+ component_of_large_scale_it_system(S, _),
    placed_on_market_or_put_into_service_before(S, date(2026, 8, 2)),
    significant_change_in_design(S).
evaluation_of_large_scale_it_system(L) :-
    large_scale_it_system(L).
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
provenance(component_of_large_scale_it_system/2, 'celex:32024R1689/oj#art_111').
provenance(placed_on_market_or_put_into_service_before/2, 'celex:32024R1689/oj#art_111').
provenance(significant_change_in_design/1, 'celex:32024R1689/oj#art_111').
provenance(intended_for_use_by_public_authorities/1, 'celex:32024R1689/oj#art_111').
provenance(must_comply_by_date/2, 'celex:32024R1689/oj#art_111').
provenance(evaluation_of_large_scale_it_system/1, 'celex:32024R1689/oj#art_111').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#anx_10').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_111', 'celex:32024R1689/oj#art_111/par_1').

% ==== celex:32024R1689/oj#art_112 ====
declared(must_assess_need_for_amendment/2, 'Commission assesses need for amendment of a list', 'celex:32024R1689/oj#art_112').
declared(must_submit_findings/2, 'Commission submits findings to a body', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_and_report/3, 'Commission evaluates and reports on a topic to a body', 'celex:32024R1689/oj#art_112').
declared(must_submit_report/3, 'Commission submits a report on a topic to a body', 'celex:32024R1689/oj#art_112').
declared(report_shall_include_assessment/2, 'report includes an assessment on a topic', 'celex:32024R1689/oj#art_112').
declared(report_shall_pay_specific_attention/2, 'report pays specific attention to a topic', 'celex:32024R1689/oj#art_112').
declared(report_shall_be_made_public/1, 'report is made public', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_functioning/2, 'Commission evaluates functioning of an entity', 'celex:32024R1689/oj#art_112').
declared(must_review_progress/2, 'Commission reviews progress on a topic', 'celex:32024R1689/oj#art_112').
declared(must_evaluate_impact_and_effectiveness/2, 'Commission evaluates impact and effectiveness of a measure', 'celex:32024R1689/oj#art_112').
declared(must_provide_information_upon_request/2, 'entity provides information to Commission upon request', 'celex:32024R1689/oj#art_112').
declared(must_take_into_account/2, 'Commission takes into account positions and findings', 'celex:32024R1689/oj#art_112').
declared(must_submit_appropriate_proposals/2, 'Commission submits appropriate proposals to amend', 'celex:32024R1689/oj#art_112').
declared(must_undertake_to_develop_methodology/2, 'AI Office undertakes to develop a methodology', 'celex:32024R1689/oj#art_112').
declared(amendment_shall_take_into_account/2, 'amendment takes into account regulatory specificities', 'celex:32024R1689/oj#art_112').
declared(must_carry_out_assessment/2, 'Commission carries out an assessment', 'celex:32024R1689/oj#art_112').
declared(annual_assessment_cycle/1, 'annual assessment cycle applies', 'celex:32024R1689/oj#art_112').
declared(four_year_evaluation_cycle/1, 'four year evaluation cycle applies', 'celex:32024R1689/oj#art_112').
declared(three_year_evaluation_cycle/1, 'three year evaluation cycle applies', 'celex:32024R1689/oj#art_112').
declared(within_delegation_period/1, 'within the period of delegation of power', 'celex:32024R1689/oj#art_112').
declared(deadline_date/2, 'deadline date for a report or assessment', 'celex:32024R1689/oj#art_112').
declared(commission/1, 'the European Commission', 'celex:32024R1689/oj#art_112').
declared(european_parliament/1, 'the European Parliament', 'celex:32024R1689/oj#art_112').
declared(council/1, 'the Council of the European Union', 'celex:32024R1689/oj#art_112').
declared(european_economic_and_social_committee/1, 'the European Economic and Social Committee', 'celex:32024R1689/oj#art_112').
declared(board/1, 'the European Artificial Intelligence Board', 'celex:32024R1689/oj#art_112').
declared(member_states/1, 'the Member States collectively', 'celex:32024R1689/oj#art_112').
declared(list_in_annex_3/1, 'the list set out in Annex III', 'celex:32024R1689/oj#art_112').
declared(list_of_prohibited_ai_practices/1, 'the list of prohibited AI practices laid down in Article 5', 'celex:32024R1689/oj#art_112').
declared(list_of_transparency_measures/1, 'the list of AI systems requiring additional transparency measures in Article 50', 'celex:32024R1689/oj#art_112').
declared(supervision_and_governance_system/1, 'the supervision and governance system', 'celex:32024R1689/oj#art_112').
declared(enforcement_structure/1, 'the structure of enforcement', 'celex:32024R1689/oj#art_112').
declared(union_agency/1, 'a Union agency', 'celex:32024R1689/oj#art_112').
declared(financial_technical_human_resources/1, 'financial, technical and human resources', 'celex:32024R1689/oj#art_112').
declared(state_of_penalties/1, 'the state of penalties applied by Member States', 'celex:32024R1689/oj#art_112').
declared(harmonised_standards_and_common_specifications/1, 'adopted harmonised standards and common specifications', 'celex:32024R1689/oj#art_112').
declared(number_of_undertakings_entering_market/1, 'the number of undertakings that enter the market', 'celex:32024R1689/oj#art_112').
declared(smes/1, 'small and medium-sized enterprises', 'celex:32024R1689/oj#art_112').
declared(functioning_of_ai_office/1, 'the functioning of the AI Office', 'celex:32024R1689/oj#art_112').
declared(sufficient_powers_and_competences/1, 'sufficient powers and competences to fulfil tasks', 'celex:32024R1689/oj#art_112').
declared(upgrade_ai_office/1, 'upgrade the AI Office and its enforcement competences and increase its resources', 'celex:32024R1689/oj#art_112').
declared(standardisation_deliverables_energy_efficiency/1, 'standardisation deliverables on energy-efficient development of general-purpose AI models', 'celex:32024R1689/oj#art_112').
declared(voluntary_codes_of_conduct/1, 'voluntary codes of conduct', 'celex:32024R1689/oj#art_112').
declared(requirements_chapter_3_section_2/1, 'requirements set out in Chapter III Section 2', 'celex:32024R1689/oj#art_112').
declared(environmental_sustainability/1, 'environmental sustainability', 'celex:32024R1689/oj#art_112').
declared(positions_and_findings/1, 'positions and findings of relevant bodies', 'celex:32024R1689/oj#art_112').
declared(developments_in_technology/1, 'developments in technology', 'celex:32024R1689/oj#art_112').
declared(effect_on_health_safety_fundamental_rights/1, 'effect of AI systems on health, safety and fundamental rights', 'celex:32024R1689/oj#art_112').
declared(state_of_progress_information_society/1, 'state of progress in the information society', 'celex:32024R1689/oj#art_112').
declared(objective_participative_methodology/1, 'objective and participative methodology for evaluation of risk levels', 'celex:32024R1689/oj#art_112').
declared(inclusion_of_new_systems/1, 'inclusion of new systems in a list', 'celex:32024R1689/oj#art_112').
declared(sectoral_union_harmonisation_legislation/1, 'sectoral Union harmonisation legislation listed in Annex I Section 2', 'celex:32024R1689/oj#art_112').
declared(regulatory_specificities/1, 'regulatory specificities of each sector', 'celex:32024R1689/oj#art_112').
declared(existing_governance_conformity_enforcement/1, 'existing governance, conformity assessment and enforcement mechanisms and authorities', 'celex:32024R1689/oj#art_112').
declared(first_years_of_application/1, 'the first years of application of the regulation', 'celex:32024R1689/oj#art_112').
european_economic_and_social_committee(european_economic_and_social_committee).
board(board).
member_states(member_states).
list_in_annex_3(annex_3_list).
list_of_prohibited_ai_practices(prohibited_practices_list).
list_of_transparency_measures(transparency_measures_list).
supervision_and_governance_system(supervision_governance_system).
enforcement_structure(enforcement_structure).
union_agency(union_agency).
financial_technical_human_resources(financial_technical_human_resources).
state_of_penalties(state_of_penalties).
harmonised_standards_and_common_specifications(harmonised_standards_common_specifications).
number_of_undertakings_entering_market(number_of_undertakings).
smes(smes).
functioning_of_ai_office(ai_office_functioning).
sufficient_powers_and_competences(sufficient_powers_competences).
upgrade_ai_office(upgrade_ai_office).
standardisation_deliverables_energy_efficiency(standardisation_deliverables_energy_efficiency).
voluntary_codes_of_conduct(voluntary_codes_of_conduct).
requirements_chapter_3_section_2(chapter_3_section_2_requirements).
environmental_sustainability(environmental_sustainability).
positions_and_findings(positions_findings).
developments_in_technology(developments_in_technology).
effect_on_health_safety_fundamental_rights(effect_on_health_safety_fundamental_rights).
state_of_progress_information_society(state_of_progress_information_society).
objective_participative_methodology(objective_participative_methodology).
inclusion_of_new_systems(inclusion_of_new_systems).
sectoral_union_harmonisation_legislation(sectoral_union_harmonisation_legislation).
regulatory_specificities(regulatory_specificities).
existing_governance_conformity_enforcement(existing_governance_conformity_enforcement).
first_years_of_application(first_years_of_application).
annual_assessment_cycle(annual).
four_year_evaluation_cycle(years(4)).
three_year_evaluation_cycle(years(3)).
deadline_date(report_par_2, date(2028, 8, 2)).
deadline_date(report_par_3, date(2029, 8, 2)).
deadline_date(report_par_5, date(2028, 8, 2)).
deadline_date(report_par_6, date(2028, 8, 2)).
deadline_date(report_par_7, date(2028, 8, 2)).
deadline_date(report_par_13, date(2031, 8, 2)).
within_delegation_period(period) :-
    art_97_delegation_period(period).
must_assess_need_for_amendment(commission, List) :-
    annual_assessment_cycle(annual),
    within_delegation_period(_),
    ( List = annex_3_list ; List = prohibited_practices_list ).
must_submit_findings(commission, Body) :-
    ( Body = european_parliament ; Body = council ).
must_evaluate_and_report(commission, Topic, Body) :-
    four_year_evaluation_cycle(years(4)),
    deadline_date(report_par_2, date(2028, 8, 2)),
    ( Body = european_parliament ; Body = council ),
    ( Topic = annex_3_area_headings ;
      Topic = transparency_measures_list ;
      Topic = supervision_governance_system ).
must_submit_report(commission, Topic, Body) :-
    ( Body = european_parliament ; Body = council ),
    ( Topic = evaluation_review_regulation ;
      Topic = ai_office_functioning ;
      Topic = standardisation_deliverables_energy_efficiency ;
      Topic = voluntary_codes_of_conduct_impact ;
      Topic = enforcement_assessment ).
report_shall_include_assessment(Report, Topic) :-
    Report = report_par_3,
    Topic = enforcement_structure.
report_shall_pay_specific_attention(Report, Topic) :-
    Report = report_par_2,
    ( Topic = financial_technical_human_resources ;
      Topic = state_of_penalties ;
      Topic = harmonised_standards_common_specifications ;
      Topic = number_of_undertakings ).
report_shall_be_made_public(Report) :-
    ( Report = report_par_3 ; Report = report_par_6 ).
must_evaluate_functioning(commission, ai_office) :-
    deadline_date(report_par_5, date(2028, 8, 2)).
must_review_progress(commission, standardisation_deliverables_energy_efficiency) :-
    four_year_evaluation_cycle(years(4)),
    deadline_date(report_par_6, date(2028, 8, 2)).
must_evaluate_impact_and_effectiveness(commission, voluntary_codes_of_conduct) :-
    three_year_evaluation_cycle(years(3)),
    deadline_date(report_par_7, date(2028, 8, 2)).
must_provide_information_upon_request(Entity, commission) :-
    ( Entity = board ; Entity = member_states ; Entity = national_competent_authority(_) ),
    without_delay.
must_take_into_account(commission, positions_and_findings) :-
    positions_and_findings(positions_findings).
must_submit_appropriate_proposals(commission, amendment) :-
    developments_in_technology(developments_in_technology),
    effect_on_health_safety_fundamental_rights(effect_on_health_safety_fundamental_rights),
    state_of_progress_information_society(state_of_progress_information_society).
must_undertake_to_develop_methodology(ai_office, objective_participative_methodology) :-
    objective_participative_methodology(objective_participative_methodology).
amendment_shall_take_into_account(amendment, regulatory_specificities) :-
    sectoral_union_harmonisation_legislation(sectoral_union_harmonisation_legislation),
    existing_governance_conformity_enforcement(existing_governance_conformity_enforcement).
must_carry_out_assessment(commission, enforcement) :-
    deadline_date(report_par_13, date(2031, 8, 2)),
    first_years_of_application(first_years_of_application).
provenance(must_assess_need_for_amendment/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_findings/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_and_report/3, 'celex:32024R1689/oj#art_112').
provenance(must_submit_report/3, 'celex:32024R1689/oj#art_112').
provenance(report_shall_include_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_pay_specific_attention/2, 'celex:32024R1689/oj#art_112').
provenance(report_shall_be_made_public/1, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_functioning/2, 'celex:32024R1689/oj#art_112').
provenance(must_review_progress/2, 'celex:32024R1689/oj#art_112').
provenance(must_evaluate_impact_and_effectiveness/2, 'celex:32024R1689/oj#art_112').
provenance(must_provide_information_upon_request/2, 'celex:32024R1689/oj#art_112').
provenance(must_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_submit_appropriate_proposals/2, 'celex:32024R1689/oj#art_112').
provenance(must_undertake_to_develop_methodology/2, 'celex:32024R1689/oj#art_112').
provenance(amendment_shall_take_into_account/2, 'celex:32024R1689/oj#art_112').
provenance(must_carry_out_assessment/2, 'celex:32024R1689/oj#art_112').
provenance(annual_assessment_cycle/1, 'celex:32024R1689/oj#art_112').
provenance(four_year_evaluation_cycle/1, 'celex:32024R1689/oj#art_112').
provenance(three_year_evaluation_cycle/1, 'celex:32024R1689/oj#art_112').
provenance(within_delegation_period/1, 'celex:32024R1689/oj#art_112').
provenance(deadline_date/2, 'celex:32024R1689/oj#art_112').
provenance(commission/1, 'celex:32024R1689/oj#art_112').
provenance(european_parliament/1, 'celex:32024R1689/oj#art_112').
provenance(council/1, 'celex:32024R1689/oj#art_112').
provenance(european_economic_and_social_committee/1, 'celex:32024R1689/oj#art_112').
provenance(board/1, 'celex:32024R1689/oj#art_112').
provenance(member_states/1, 'celex:32024R1689/oj#art_112').
provenance(list_in_annex_3/1, 'celex:32024R1689/oj#art_112').
provenance(list_of_prohibited_ai_practices/1, 'celex:32024R1689/oj#art_112').
provenance(list_of_transparency_measures/1, 'celex:32024R1689/oj#art_112').
provenance(supervision_and_governance_system/1, 'celex:32024R1689/oj#art_112').
provenance(enforcement_structure/1, 'celex:32024R1689/oj#art_112').
provenance(union_agency/1, 'celex:32024R1689/oj#art_112').
provenance(financial_technical_human_resources/1, 'celex:32024R1689/oj#art_112').
provenance(state_of_penalties/1, 'celex:32024R1689/oj#art_112').
provenance(harmonised_standards_and_common_specifications/1, 'celex:32024R1689/oj#art_112').
provenance(number_of_undertakings_entering_market/1, 'celex:32024R1689/oj#art_112').
provenance(smes/1, 'celex:32024R1689/oj#art_112').
provenance(functioning_of_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(sufficient_powers_and_competences/1, 'celex:32024R1689/oj#art_112').
provenance(upgrade_ai_office/1, 'celex:32024R1689/oj#art_112').
provenance(standardisation_deliverables_energy_efficiency/1, 'celex:32024R1689/oj#art_112').
provenance(voluntary_codes_of_conduct/1, 'celex:32024R1689/oj#art_112').
provenance(requirements_chapter_3_section_2/1, 'celex:32024R1689/oj#art_112').
provenance(environmental_sustainability/1, 'celex:32024R1689/oj#art_112').
provenance(positions_and_findings/1, 'celex:32024R1689/oj#art_112').
provenance(developments_in_technology/1, 'celex:32024R1689/oj#art_112').
provenance(effect_on_health_safety_fundamental_rights/1, 'celex:32024R1689/oj#art_112').
provenance(state_of_progress_information_society/1, 'celex:32024R1689/oj#art_112').
provenance(objective_participative_methodology/1, 'celex:32024R1689/oj#art_112').
provenance(inclusion_of_new_systems/1, 'celex:32024R1689/oj#art_112').
provenance(sectoral_union_harmonisation_legislation/1, 'celex:32024R1689/oj#art_112').
provenance(regulatory_specificities/1, 'celex:32024R1689/oj#art_112').
provenance(existing_governance_conformity_enforcement/1, 'celex:32024R1689/oj#art_112').
provenance(first_years_of_application/1, 'celex:32024R1689/oj#art_112').
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
declared(enters_into_force/1, 'the regulation enters into force on the twentieth day following publication in the Official Journal', 'celex:32024R1689/oj#art_113').
declared(applies_from/2, 'a provision applies from a given date', 'celex:32024R1689/oj#art_113').
declared(binding_in_entirety/1, 'the regulation is binding in its entirety', 'celex:32024R1689/oj#art_113').
declared(directly_applicable/1, 'the regulation is directly applicable in all Member States', 'celex:32024R1689/oj#art_113').
enters_into_force(regulation) :-
    published_in_official_journal(regulation),
    day_of_publication(regulation, Day),
    enters_into_force_on(regulation, ForceDay),
    ForceDay is Day + 20.
applies_from(regulation, date(2026, august, 2)).
applies_from('celex:32024R1689/oj#chp_1', date(2025, february, 2)).
applies_from('celex:32024R1689/oj#chp_2', date(2025, february, 2)).
applies_from('celex:32024R1689/oj#chp_3/sec_4', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_5', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_7', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#chp_12', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#art_78', date(2025, august, 2)).
applies_from('celex:32024R1689/oj#art_6/par_1', date(2027, august, 2)).
binding_in_entirety(regulation).
directly_applicable(regulation).
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_113').
provenance(applies_from/2, 'celex:32024R1689/oj#art_113').
provenance(binding_in_entirety/1, 'celex:32024R1689/oj#art_113').
provenance(directly_applicable/1, 'celex:32024R1689/oj#art_113').
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
declared(union_harmonisation_legislation_section_a/1, 'Union harmonisation legislation listed in Annex I Section A based on the New Legislative Framework', 'celex:32024R1689/oj#anx_1').
declared(union_harmonisation_legislation_section_b/1, 'other Union harmonisation legislation listed in Annex I Section B', 'celex:32024R1689/oj#anx_1').
union_harmonisation_legislation_section_a('celex:32006L0042/oj').
union_harmonisation_legislation_section_a('celex:32009L0048/oj').
union_harmonisation_legislation_section_a('celex:32013L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0033/oj').
union_harmonisation_legislation_section_a('celex:32014L0034/oj').
union_harmonisation_legislation_section_a('celex:32014L0053/oj').
union_harmonisation_legislation_section_a('celex:32014L0068/oj').
union_harmonisation_legislation_section_a('celex:32016R0424/oj').
union_harmonisation_legislation_section_a('celex:32016R0425/oj').
union_harmonisation_legislation_section_a('celex:32016R0426/oj').
union_harmonisation_legislation_section_a('celex:32017R0745/oj').
union_harmonisation_legislation_section_a('celex:32017R0746/oj').
union_harmonisation_legislation_section_b('celex:32008R0300/oj').
union_harmonisation_legislation_section_b('celex:32013R0168/oj').
union_harmonisation_legislation_section_b('celex:32013R0167/oj').
union_harmonisation_legislation_section_b('celex:32014L0090/oj').
union_harmonisation_legislation_section_b('celex:32016L0797/oj').
union_harmonisation_legislation_section_b('celex:32018R0858/oj').
union_harmonisation_legislation_section_b('celex:32019R2144/oj').
union_harmonisation_legislation_section_b('celex:32018R1139/oj').
other_union_harmonisation_legislation(L) :-
    union_harmonisation_legislation_section_b(L).
union_harmonisation_legislation_applies(L) :-
    union_harmonisation_legislation_section_a(L).
union_harmonisation_legislation_applies(L) :-
    union_harmonisation_legislation_section_b(L).
provenance(union_harmonisation_legislation_section_a/1, 'celex:32024R1689/oj#anx_1').
provenance(union_harmonisation_legislation_section_b/1, 'celex:32024R1689/oj#anx_1').
provenance(other_union_harmonisation_legislation/1, 'celex:32024R1689/oj#anx_1').
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
declared(criminal_offence_referred_to_in_art_5/1, 'criminal offence listed in Annex II referred to in Article 5(1)(h)(iii)', 'celex:32024R1689/oj#anx_2').
criminal_offence_referred_to_in_art_5(terrorism).
criminal_offence_referred_to_in_art_5(trafficking_in_human_beings).
criminal_offence_referred_to_in_art_5(sexual_exploitation_of_children).
criminal_offence_referred_to_in_art_5(child_pornography).
criminal_offence_referred_to_in_art_5(illicit_trafficking_in_narcotic_drugs_or_psychotropic_substances).
criminal_offence_referred_to_in_art_5(illicit_trafficking_in_weapons_munitions_or_explosives).
criminal_offence_referred_to_in_art_5(murder).
criminal_offence_referred_to_in_art_5(grievous_bodily_injury).
criminal_offence_referred_to_in_art_5(illicit_trade_in_human_organs_or_tissue).
criminal_offence_referred_to_in_art_5(illicit_trafficking_in_nuclear_or_radioactive_materials).
criminal_offence_referred_to_in_art_5(kidnapping).
criminal_offence_referred_to_in_art_5(illegal_restraint_or_hostage_taking).
criminal_offence_referred_to_in_art_5(crimes_within_the_jurisdiction_of_the_international_criminal_court).
criminal_offence_referred_to_in_art_5(unlawful_seizure_of_aircraft_or_ships).
criminal_offence_referred_to_in_art_5(rape).
criminal_offence_referred_to_in_art_5(environmental_crime).
criminal_offence_referred_to_in_art_5(organised_or_armed_robbery).
criminal_offence_referred_to_in_art_5(sabotage).
criminal_offence_referred_to_in_art_5(participation_in_a_criminal_organisation_involved_in_one_or_more_of_the_offences_listed_above).
provenance(criminal_offence_referred_to_in_art_5/1, 'celex:32024R1689/oj#anx_2').
references('celex:32024R1689/oj#anx_2', 'celex:32024R1689/oj#art_5/par_1/unp_1/pnt_h/pnt_iii').

% ==== celex:32024R1689/oj#anx_3 ====
high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    remote_biometric_identification_system(S),
    \+ biometric_verification(S).
high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    biometric_categorisation_system(S),
    based_on_sensitive_or_protected_attributes(S).
high_risk_ai_system(S) :-
    ai_system(S),
    annex_3_point_1(S),
    emotion_recognition_system(S).
high_risk_ai_system(S) :-
    ai_system(S),
    ai_system_safety_component(S),
    critical_infrastructure(S),
    manages_or_operates(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(determine_access_or_admission(S)),
    educational_or_vocational_training_institution(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_learning_outcomes(S)),
    educational_or_vocational_training_institution(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(assess_appropriate_education_level(S)),
    educational_or_vocational_training_institution(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(monitor_prohibited_behaviour_during_tests(S)),
    educational_or_vocational_training_institution(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(recruit_or_select_natural_persons(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(make_decisions_affecting_work_related_relationships(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(evaluate_eligibility_for_essential_public_benefits(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_creditworthiness_or_credit_score(S)),
    \+ intended_purpose(detect_financial_fraud(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(risk_assessment_and_pricing_life_health_insurance(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(evaluate_and_classify_emergency_calls(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(dispatch_emergency_first_response_services(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_becoming_victim_of_criminal_offences(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(polygraph_or_similar_tool(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(evaluate_reliability_of_evidence(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_offending_or_reoffending(S)),
    \+ solely_based_on_profiling(S).
high_risk_ai_system(S) :-
    ai_system(S),
    law_enforcement_area(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(profiling_in_detection_investigation_prosecution(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(polygraph_or_similar_tool(S)),
    migration_asylum_border_control_context(S).
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assess_risk_of_irregular_migration_or_health(S)),
    migration_asylum_border_control_context(S).
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(assist_examination_of_asylum_visa_residence_applications(S)),
    migration_asylum_border_control_context(S).
high_risk_ai_system(S) :-
    ai_system(S),
    used_by_public_authority_or_on_behalf(S),
    intended_purpose(detect_recognise_identify_natural_persons(S)),
    migration_asylum_border_control_context(S),
    \+ verification_of_travel_documents(S).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(assist_judicial_authority_in_researching_interpreting_applying_law(S)).
high_risk_ai_system(S) :-
    ai_system(S),
    intended_purpose(influence_outcome_of_election_or_referendum(S)),
    \+ administrative_logistical_political_campaign_tool(S).
high_risk_biometric_remote_identification(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    remote_biometric_identification_system(S).
law_enforcement_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S),
    law_enforcement_authority(_A),
    used_by_or_on_behalf_of_law_enforcement(S).
annex_3_point_1(S) :-
    high_risk_ai_system(S),
    biometric_related(S).
based_on_sensitive_or_protected_attributes(S) :-
    biometric_categorisation_system(S),
    special_categories_of_personal_data(D),
    uses_data(S, D).
manages_or_operates(S) :-
    ai_system_safety_component(S),
    critical_infrastructure(I),
    manages(S, I).
educational_or_vocational_training_institution(S) :-
    ai_system(S),
    intended_purpose(P),
    education_or_training_context(P).
migration_asylum_border_control_context(S) :-
    ai_system(S),
    intended_purpose(P),
    migration_asylum_border_context(P).
used_by_or_on_behalf_of_law_enforcement(S) :-
    law_enforcement_authority(A),
    used_by(S, A).
biometric_related(S) :-
    remote_biometric_identification_system(S).
biometric_related(S) :-
    biometric_categorisation_system(S).
biometric_related(S) :-
    emotion_recognition_system(S).
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(annex_3_point_1/1, 'celex:32024R1689/oj#anx_3').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_3').
provenance(high_risk_biometric_remote_identification/1, 'celex:32024R1689/oj#anx_3').
provenance(based_on_sensitive_or_protected_attributes/1, 'celex:32024R1689/oj#anx_3').
provenance(manages_or_operates/1, 'celex:32024R1689/oj#anx_3').
provenance(educational_or_vocational_training_institution/1, 'celex:32024R1689/oj#anx_3').
provenance(migration_asylum_border_control_context/1, 'celex:32024R1689/oj#anx_3').
provenance(used_by_or_on_behalf_of_law_enforcement/1, 'celex:32024R1689/oj#anx_3').
provenance(biometric_related/1, 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_3', 'celex:32024R1689/oj#art_6/par_2').
references('celex:32024R1689/oj#anx_3', 'celex:32016L0680/oj#art_3/par_4').

% ==== celex:32024R1689/oj#anx_4 ====
declared(technical_documentation_contains/2, 'technical documentation of AI system contains specified information', 'celex:32024R1689/oj#anx_4').
declared(general_description_of_ai_system/1, 'general description of the AI system', 'celex:32024R1689/oj#anx_4').
declared(detailed_description_of_elements_and_development/1, 'detailed description of elements and development process', 'celex:32024R1689/oj#anx_4').
declared(detailed_information_monitoring_functioning_control/1, 'detailed information about monitoring, functioning and control', 'celex:32024R1689/oj#anx_4').
declared(description_of_appropriateness_of_performance_metrics/1, 'description of appropriateness of performance metrics', 'celex:32024R1689/oj#anx_4').
declared(description_of_risk_management_system/1, 'description of risk management system', 'celex:32024R1689/oj#anx_4').
declared(description_of_relevant_changes_lifecycle/1, 'description of relevant changes through lifecycle', 'celex:32024R1689/oj#anx_4').
declared(list_of_harmonised_standards_applied/1, 'list of harmonised standards applied with references published in Official Journal', 'celex:32024R1689/oj#anx_4').
declared(description_of_solutions_when_no_harmonised_standards/1, 'description of solutions adopted when no harmonised standards applied', 'celex:32024R1689/oj#anx_4').
declared(copy_of_eu_declaration_of_conformity/1, 'copy of EU declaration of conformity', 'celex:32024R1689/oj#anx_4').
declared(description_of_post_market_performance_evaluation_system/1, 'description of system to evaluate post-market performance', 'celex:32024R1689/oj#anx_4').
declared(intended_purpose_name_provider_version/1, 'intended purpose, name of provider and version of system', 'celex:32024R1689/oj#anx_4').
declared(interaction_with_external_hardware_software/1, 'how AI system interacts with external hardware or software', 'celex:32024R1689/oj#anx_4').
declared(versions_of_software_firmware_and_update_requirements/1, 'versions of relevant software or firmware and version update requirements', 'celex:32024R1689/oj#anx_4').
declared(forms_of_market_placement/1, 'description of all forms in which AI system is placed on market or put into service', 'celex:32024R1689/oj#anx_4').
declared(description_of_intended_hardware/1, 'description of hardware on which AI system is intended to run', 'celex:32024R1689/oj#anx_4').
declared(external_features_marking_internal_layout/1, 'photographs or illustrations showing external features, marking and internal layout for product components', 'celex:32024R1689/oj#anx_4').
declared(user_interface_description_for_deployer/1, 'basic description of user-interface provided to deployer', 'celex:32024R1689/oj#anx_4').
declared(instructions_for_use_and_user_interface/1, 'instructions for use and user-interface description where applicable', 'celex:32024R1689/oj#anx_4').
declared(development_methods_and_steps/1, 'methods and steps performed for development including recourse to pre-trained systems', 'celex:32024R1689/oj#anx_4').
declared(design_specifications/1, 'design specifications including logic, algorithms, key design choices, classification choices, optimisation targets', 'celex:32024R1689/oj#anx_4').
declared(system_architecture_and_computational_resources/1, 'system architecture and computational resources used to develop, train, test and validate', 'celex:32024R1689/oj#anx_4').
declared(data_requirements_and_training_data_description/1, 'data requirements, training methodologies, training data sets description, provenance, labelling, cleaning', 'celex:32024R1689/oj#anx_4').
declared(human_oversight_measures_assessment/1, 'assessment of human oversight measures needed', 'celex:32024R1689/oj#anx_4').
declared(predetermined_changes_description/1, 'detailed description of pre-determined changes and technical solutions for continuous compliance', 'celex:32024R1689/oj#anx_4').
declared(validation_and_testing_procedures/1, 'validation and testing procedures, data, metrics, test logs and reports', 'celex:32024R1689/oj#anx_4').
declared(cybersecurity_measures_description/1, 'cybersecurity measures put in place', 'celex:32024R1689/oj#anx_4').
declared(capabilities_and_limitations_performance/1, 'capabilities and limitations in performance including accuracy for specific persons or groups', 'celex:32024R1689/oj#anx_4').
declared(foreseeable_unintended_outcomes_and_risks/1, 'foreseeable unintended outcomes and sources of risks to health, safety, fundamental rights and discrimination', 'celex:32024R1689/oj#anx_4').
declared(input_data_specifications/1, 'specifications on input data as appropriate', 'celex:32024R1689/oj#anx_4').
technical_documentation_contains(S, general_description_of_ai_system(D)) :-
    ai_system(S),
    general_description_of_ai_system(D).
technical_documentation_contains(S, detailed_description_of_elements_and_development(D)) :-
    ai_system(S),
    detailed_description_of_elements_and_development(D).
technical_documentation_contains(S, detailed_information_monitoring_functioning_control(D)) :-
    ai_system(S),
    detailed_information_monitoring_functioning_control(D).
technical_documentation_contains(S, description_of_appropriateness_of_performance_metrics(D)) :-
    ai_system(S),
    description_of_appropriateness_of_performance_metrics(D).
technical_documentation_contains(S, description_of_risk_management_system(D)) :-
    ai_system(S),
    description_of_risk_management_system(D).
technical_documentation_contains(S, description_of_relevant_changes_lifecycle(D)) :-
    ai_system(S),
    description_of_relevant_changes_lifecycle(D).
technical_documentation_contains(S, list_of_harmonised_standards_applied(D)) :-
    ai_system(S),
    list_of_harmonised_standards_applied(D).
technical_documentation_contains(S, description_of_solutions_when_no_harmonised_standards(D)) :-
    ai_system(S),
    description_of_solutions_when_no_harmonised_standards(D).
technical_documentation_contains(S, copy_of_eu_declaration_of_conformity(D)) :-
    ai_system(S),
    copy_of_eu_declaration_of_conformity(D).
technical_documentation_contains(S, description_of_post_market_performance_evaluation_system(D)) :-
    ai_system(S),
    description_of_post_market_performance_evaluation_system(D).
general_description_of_ai_system(D) :-
    intended_purpose_name_provider_version(D).
general_description_of_ai_system(D) :-
    interaction_with_external_hardware_software(D).
general_description_of_ai_system(D) :-
    versions_of_software_firmware_and_update_requirements(D).
general_description_of_ai_system(D) :-
    forms_of_market_placement(D).
general_description_of_ai_system(D) :-
    description_of_intended_hardware(D).
general_description_of_ai_system(D) :-
    external_features_marking_internal_layout(D).
general_description_of_ai_system(D) :-
    user_interface_description_for_deployer(D).
general_description_of_ai_system(D) :-
    instructions_for_use_and_user_interface(D).
detailed_description_of_elements_and_development(D) :-
    development_methods_and_steps(D).
detailed_description_of_elements_and_development(D) :-
    design_specifications(D).
detailed_description_of_elements_and_development(D) :-
    system_architecture_and_computational_resources(D).
detailed_description_of_elements_and_development(D) :-
    data_requirements_and_training_data_description(D).
detailed_description_of_elements_and_development(D) :-
    human_oversight_measures_assessment(D).
detailed_description_of_elements_and_development(D) :-
    predetermined_changes_description(D).
detailed_description_of_elements_and_development(D) :-
    validation_and_testing_procedures(D).
detailed_description_of_elements_and_development(D) :-
    cybersecurity_measures_description(D).
detailed_information_monitoring_functioning_control(D) :-
    capabilities_and_limitations_performance(D).
detailed_information_monitoring_functioning_control(D) :-
    foreseeable_unintended_outcomes_and_risks(D).
detailed_information_monitoring_functioning_control(D) :-
    human_oversight_measures_assessment(D).
detailed_information_monitoring_functioning_control(D) :-
    input_data_specifications(D).
provenance(technical_documentation_contains/2, 'celex:32024R1689/oj#anx_4').
provenance(general_description_of_ai_system/1, 'celex:32024R1689/oj#anx_4').
provenance(detailed_description_of_elements_and_development/1, 'celex:32024R1689/oj#anx_4').
provenance(detailed_information_monitoring_functioning_control/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_appropriateness_of_performance_metrics/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_risk_management_system/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_relevant_changes_lifecycle/1, 'celex:32024R1689/oj#anx_4').
provenance(list_of_harmonised_standards_applied/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_solutions_when_no_harmonised_standards/1, 'celex:32024R1689/oj#anx_4').
provenance(copy_of_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_post_market_performance_evaluation_system/1, 'celex:32024R1689/oj#anx_4').
provenance(intended_purpose_name_provider_version/1, 'celex:32024R1689/oj#anx_4').
provenance(interaction_with_external_hardware_software/1, 'celex:32024R1689/oj#anx_4').
provenance(versions_of_software_firmware_and_update_requirements/1, 'celex:32024R1689/oj#anx_4').
provenance(forms_of_market_placement/1, 'celex:32024R1689/oj#anx_4').
provenance(description_of_intended_hardware/1, 'celex:32024R1689/oj#anx_4').
provenance(external_features_marking_internal_layout/1, 'celex:32024R1689/oj#anx_4').
provenance(user_interface_description_for_deployer/1, 'celex:32024R1689/oj#anx_4').
provenance(instructions_for_use_and_user_interface/1, 'celex:32024R1689/oj#anx_4').
provenance(development_methods_and_steps/1, 'celex:32024R1689/oj#anx_4').
provenance(design_specifications/1, 'celex:32024R1689/oj#anx_4').
provenance(system_architecture_and_computational_resources/1, 'celex:32024R1689/oj#anx_4').
provenance(data_requirements_and_training_data_description/1, 'celex:32024R1689/oj#anx_4').
provenance(human_oversight_measures_assessment/1, 'celex:32024R1689/oj#anx_4').
provenance(predetermined_changes_description/1, 'celex:32024R1689/oj#anx_4').
provenance(validation_and_testing_procedures/1, 'celex:32024R1689/oj#anx_4').
provenance(cybersecurity_measures_description/1, 'celex:32024R1689/oj#anx_4').
provenance(capabilities_and_limitations_performance/1, 'celex:32024R1689/oj#anx_4').
provenance(foreseeable_unintended_outcomes_and_risks/1, 'celex:32024R1689/oj#anx_4').
provenance(input_data_specifications/1, 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_11/par_1').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_14').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_13/par_3/unp_1/pnt_d').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72').
references('celex:32024R1689/oj#anx_4', 'celex:32024R1689/oj#art_72/par_3').

% ==== celex:32024R1689/oj#anx_5 ====
declared(eu_declaration_of_conformity_contains/2, 'EU declaration of conformity contains specified information element', 'celex:32024R1689/oj#anx_5').
declared(eu_declaration_of_conformity/1, 'EU declaration of conformity document', 'celex:32024R1689/oj#anx_5').
eu_declaration_of_conformity_contains(D, ai_system_name_and_type) :-
    eu_declaration_of_conformity(D),
    contains_ai_system_name_and_type(D).
eu_declaration_of_conformity_contains(D, provider_or_representative_name_and_address) :-
    eu_declaration_of_conformity(D),
    contains_provider_or_representative_name_and_address(D).
eu_declaration_of_conformity_contains(D, sole_responsibility_statement) :-
    eu_declaration_of_conformity(D),
    contains_sole_responsibility_statement(D).
eu_declaration_of_conformity_contains(D, conformity_statement) :-
    eu_declaration_of_conformity(D),
    contains_conformity_statement(D).
eu_declaration_of_conformity_contains(D, personal_data_compliance_statement) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D),
    contains_personal_data_compliance_statement(D).
eu_declaration_of_conformity_contains(D, harmonised_standards_or_common_specification_references) :-
    eu_declaration_of_conformity(D),
    contains_harmonised_standards_or_common_specification_references(D).
eu_declaration_of_conformity_contains(D, notified_body_details) :-
    eu_declaration_of_conformity(D),
    applicable_notified_body(D),
    contains_notified_body_details(D).
eu_declaration_of_conformity_contains(D, place_date_signature) :-
    eu_declaration_of_conformity(D),
    contains_place_date_signature(D).
contains_ai_system_name_and_type(D) :-
    eu_declaration_of_conformity_contains(D, ai_system_name_and_type).
contains_provider_or_representative_name_and_address(D) :-
    eu_declaration_of_conformity_contains(D, provider_or_representative_name_and_address).
contains_sole_responsibility_statement(D) :-
    eu_declaration_of_conformity_contains(D, sole_responsibility_statement).
contains_conformity_statement(D) :-
    eu_declaration_of_conformity_contains(D, conformity_statement).
contains_personal_data_compliance_statement(D) :-
    eu_declaration_of_conformity_contains(D, personal_data_compliance_statement).
contains_harmonised_standards_or_common_specification_references(D) :-
    eu_declaration_of_conformity_contains(D, harmonised_standards_or_common_specification_references).
contains_notified_body_details(D) :-
    eu_declaration_of_conformity_contains(D, notified_body_details).
contains_place_date_signature(D) :-
    eu_declaration_of_conformity_contains(D, place_date_signature).
involves_personal_data_processing(D) :-
    eu_declaration_of_conformity(D),
    ai_system_involves_personal_data_processing(D).
applicable_notified_body(D) :-
    eu_declaration_of_conformity(D),
    notified_body_applicable(D).
ai_system_involves_personal_data_processing(D) :-
    eu_declaration_of_conformity(D),
    refers_to_ai_system(D, S),
    processes_personal_data(S).
notified_body_applicable(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_by_notified_body(D).
refers_to_ai_system(D, S) :-
    eu_declaration_of_conformity(D),
    declaration_refers_to_ai_system(D, S).
processes_personal_data(S) :-
    ai_system(S),
    involves_processing_of_personal_data(S).
conformity_assessment_by_notified_body(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_involves_notified_body(D).
declaration_refers_to_ai_system(D, S) :-
    eu_declaration_of_conformity_contains(D, ai_system_name_and_type),
    ai_system_identified_in_declaration(D, S).
ai_system_identified_in_declaration(D, S) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    declaration_identifies_ai_system(D, S).
involves_processing_of_personal_data(S) :-
    ai_system(S),
    processes_personal_data(S).
conformity_assessment_involves_notified_body(D) :-
    eu_declaration_of_conformity(D),
    notified_body_involved_in_conformity_assessment(D).
notified_body_involved_in_conformity_assessment(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_procedure(D, P),
    notified_body_performs(P).
provenance(eu_declaration_of_conformity_contains/2, 'celex:32024R1689/oj#anx_5').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').

% ==== celex:32024R1689/oj#anx_6 ====
declared(conformity_assessment_based_on_internal_control/1, 'conformity assessment procedure based on internal control', 'celex:32024R1689/oj#anx_6').
declared(verifies_quality_management_system_compliance/2, 'provider verifies that the established quality management system is in compliance with the requirements of Article 17', 'celex:32024R1689/oj#anx_6').
declared(examines_technical_documentation/2, 'provider examines the information contained in the technical documentation to assess compliance of the AI system with the relevant essential requirements', 'celex:32024R1689/oj#anx_6').
declared(verifies_design_development_post_market_monitoring_consistency/2, 'provider verifies that the design and development process and post-market monitoring is consistent with the technical documentation', 'celex:32024R1689/oj#anx_6').
conformity_assessment_based_on_internal_control(S) :-
    ai_system(S),
    conformity_assessment_procedure(S),
    based_on_internal_control(S).
verifies_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    quality_management_system_established(P, S),
    article_17_requirements(R),
    compliant_with_requirements(quality_management_system(P, S), R).
examines_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    technical_documentation_contains_information(S, Info),
    examines(P, Info),
    assesses_compliance_with_essential_requirements(S, Info).
verifies_design_development_post_market_monitoring_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S),
    design_and_development_process(S, Process),
    post_market_monitoring_system(S),
    technical_documentation(S, Doc),
    consistent_with(Process, Doc),
    consistent_with(post_market_monitoring(S), Doc).
must_verify_quality_management_system_compliance(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).
must_examine_technical_documentation(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).
must_verify_design_development_post_market_monitoring_consistency(P, S) :-
    provider(P),
    ai_system(S),
    conformity_assessment_based_on_internal_control(S).
provenance(conformity_assessment_based_on_internal_control/1, 'celex:32024R1689/oj#anx_6').
provenance(verifies_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(examines_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(verifies_design_development_post_market_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_quality_management_system_compliance/2, 'celex:32024R1689/oj#anx_6').
provenance(must_examine_technical_documentation/2, 'celex:32024R1689/oj#anx_6').
provenance(must_verify_design_development_post_market_monitoring_consistency/2, 'celex:32024R1689/oj#anx_6').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_3').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#anx_6/pnt_4').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_6', 'celex:32024R1689/oj#art_72').

% ==== celex:32024R1689/oj#anx_7 ====
declared(conformity_assessment_procedure/1, 'conformity assessment procedure based on quality management system and technical documentation assessment', 'celex:32024R1689/oj#anx_7').
declared(quality_management_system_approved/1, 'quality management system approved by notified body', 'celex:32024R1689/oj#anx_7').
declared(quality_management_system_examined/1, 'quality management system examined by notified body', 'celex:32024R1689/oj#anx_7').
declared(quality_management_system_surveillance/1, 'quality management system subject to surveillance by notified body', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation_examined/1, 'technical documentation examined by notified body', 'celex:32024R1689/oj#anx_7').
declared(application_for_quality_management_system/1, 'application for quality management system assessment lodged with notified body', 'celex:32024R1689/oj#anx_7').
declared(application_includes_provider_name_address/1, 'application includes name and address of provider', 'celex:32024R1689/oj#anx_7').
declared(application_includes_authorised_representative_name_address/1, 'application includes name and address of authorised representative if lodged by them', 'celex:32024R1689/oj#anx_7').
declared(application_includes_ai_systems_list/1, 'application includes list of AI systems covered under same quality management system', 'celex:32024R1689/oj#anx_7').
declared(application_includes_technical_documentation/1, 'application includes technical documentation for each AI system covered', 'celex:32024R1689/oj#anx_7').
declared(application_includes_quality_management_documentation/1, 'application includes documentation concerning quality management system covering all aspects under Article 17', 'celex:32024R1689/oj#anx_7').
declared(application_includes_adequacy_effectiveness_procedures/1, 'application includes description of procedures to ensure quality management system remains adequate and effective', 'celex:32024R1689/oj#anx_7').
declared(application_includes_no_other_application_declaration/1, 'application includes written declaration that same application not lodged with any other notified body', 'celex:32024R1689/oj#anx_7').
declared(notified_body_assesses_quality_management_system/2, 'notified body assesses quality management system of provider', 'celex:32024R1689/oj#anx_7').
declared(notified_body_notifies_qms_decision/2, 'notified body notifies provider of quality management system assessment decision', 'celex:32024R1689/oj#anx_7').
declared(qms_decision_contains_conclusions_and_reasoning/1, 'quality management system decision contains conclusions and reasoned assessment decision', 'celex:32024R1689/oj#anx_7').
declared(provider_maintains_approved_qms/1, 'provider continues to implement and maintain approved quality management system so it remains adequate and efficient', 'celex:32024R1689/oj#anx_7').
declared(provider_informs_notified_body_of_qms_changes/2, 'provider brings intended changes to approved quality management system or AI systems list to attention of notified body', 'celex:32024R1689/oj#anx_7').
declared(notified_body_examines_qms_changes/2, 'notified body examines proposed changes to quality management system', 'celex:32024R1689/oj#anx_7').
declared(notified_body_decides_on_qms_changes/2, 'notified body decides whether modified quality management system satisfies requirements or reassessment necessary', 'celex:32024R1689/oj#anx_7').
declared(application_for_technical_documentation/1, 'application for technical documentation assessment lodged with notified body', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation_application_includes_provider_name_address/1, 'technical documentation application includes name and address of provider', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation_application_includes_no_other_application_declaration/1, 'technical documentation application includes written declaration that same application not lodged with any other notified body', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation_application_includes_technical_documentation/1, 'technical documentation application includes technical documentation referred to in Annex IV', 'celex:32024R1689/oj#anx_7').
declared(notified_body_examines_technical_documentation/2, 'notified body examines technical documentation of AI system', 'celex:32024R1689/oj#anx_7').
declared(notified_body_granted_access_to_training_validation_testing_data/2, 'notified body granted full access to training, validation and testing data sets used by AI system', 'celex:32024R1689/oj#anx_7').
declared(notified_body_may_require_further_evidence_or_tests/2, 'notified body may require provider to supply further evidence or carry out further tests', 'celex:32024R1689/oj#anx_7').
declared(notified_body_may_carry_out_tests/1, 'notified body directly carries out adequate tests where not satisfied with provider tests', 'celex:32024R1689/oj#anx_7').
declared(notified_body_granted_access_to_training_and_trained_models/2, 'notified body granted access to training and trained models including relevant parameters after exhausting other means upon reasoned request', 'celex:32024R1689/oj#anx_7').
declared(access_to_models_subject_to_ip_and_trade_secret_protection/1, 'access to models subject to existing Union law on protection of intellectual property and trade secrets', 'celex:32024R1689/oj#anx_7').
declared(notified_body_notifies_technical_documentation_decision/2, 'notified body notifies provider of technical documentation assessment decision', 'celex:32024R1689/oj#anx_7').
declared(technical_documentation_decision_contains_conclusions_and_reasoning/1, 'technical documentation decision contains conclusions and reasoned assessment decision', 'celex:32024R1689/oj#anx_7').
declared(union_technical_documentation_assessment_certificate_issued/1, 'Union technical documentation assessment certificate issued by notified body', 'celex:32024R1689/oj#anx_7').
declared(certificate_indicates_provider_name_address/1, 'certificate indicates name and address of provider', 'celex:32024R1689/oj#anx_7').
declared(certificate_contains_examination_conclusions/1, 'certificate contains conclusions of examination', 'celex:32024R1689/oj#anx_7').
declared(certificate_contains_validity_conditions/1, 'certificate contains conditions for its validity if any', 'celex:32024R1689/oj#anx_7').
declared(certificate_contains_identification_data/1, 'certificate contains data necessary for identification of AI system', 'celex:32024R1689/oj#anx_7').
declared(certificate_and_annexes_contain_evaluation_and_control_information/1, 'certificate and annexes contain all relevant information to allow conformity evaluation and control while in use', 'celex:32024R1689/oj#anx_7').
declared(certificate_refused_when_not_in_conformity/1, 'notified body refuses to issue certificate where AI system not in conformity', 'celex:32024R1689/oj#anx_7').
declared(refusal_informs_applicant_with_detailed_reasons/1, 'notified body informs applicant of refusal giving detailed reasons', 'celex:32024R1689/oj#anx_7').
declared(retraining_required_when_training_data_non_compliant/1, 're-training of AI system needed prior to new conformity assessment application where training data requirement not met', 'celex:32024R1689/oj#anx_7').
declared(refusal_contains_specific_considerations_on_training_data_quality/1, 'reasoned assessment decision refusing certificate contains specific considerations on quality data used to train AI system', 'celex:32024R1689/oj#anx_7').
declared(notified_body_assesses_changes_affecting_compliance/2, 'notified body which issued certificate assesses any change to AI system that could affect compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
declared(provider_informs_notified_body_of_changes/2, 'provider informs notified body of intention to introduce changes affecting compliance or intended purpose', 'celex:32024R1689/oj#anx_7').
declared(notified_body_decides_on_new_conformity_assessment_or_supplement/2, 'notified body decides whether changes require new conformity assessment or supplement to certificate', 'celex:32024R1689/oj#anx_7').
declared(supplement_to_certificate_issued_when_changes_approved/2, 'notified body issues supplement to Union technical documentation assessment certificate when changes approved', 'celex:32024R1689/oj#anx_7').
declared(surveillance_purpose_ensures_qms_compliance/1, 'purpose of surveillance is to make sure provider duly complies with terms and conditions of approved quality management system', 'celex:32024R1689/oj#anx_7').
declared(provider_allows_notified_body_access_to_premises/2, 'provider allows notified body to access premises where design, development, testing of AI systems is taking place', 'celex:32024R1689/oj#anx_7').
declared(provider_shares_necessary_information_with_notified_body/2, 'provider shares all necessary information with notified body for assessment purposes', 'celex:32024R1689/oj#anx_7').
declared(notified_body_carries_out_periodic_audits/1, 'notified body carries out periodic audits to make sure provider maintains and applies quality management system', 'celex:32024R1689/oj#anx_7').
declared(notified_body_provides_audit_report/2, 'notified body provides provider with audit report', 'celex:32024R1689/oj#anx_7').
declared(notified_body_may_carry_out_additional_tests_during_audits/1, 'notified body may carry out additional tests of AI systems for which certificate was issued during audits', 'celex:32024R1689/oj#anx_7').
conformity_assessment_procedure(S) :-
    ai_system(S),
    quality_management_system_examined(S),
    technical_documentation_examined(S).
quality_management_system_examined(S) :-
    ai_system(S),
    quality_management_system_approved(S).
quality_management_system_surveillance(S) :-
    quality_management_system_approved(S).
application_for_quality_management_system(A) :-
    application_includes_provider_name_address(A),
    application_includes_ai_systems_list(A),
    application_includes_technical_documentation(A),
    application_includes_quality_management_documentation(A),
    application_includes_adequacy_effectiveness_procedures(A),
    application_includes_no_other_application_declaration(A).
application_includes_authorised_representative_name_address(A) :-
    application_for_quality_management_system(A),
    lodged_by_authorised_representative(A).
notified_body_assesses_quality_management_system(B, P) :-
    notified_body(B),
    provider(P),
    application_for_quality_management_system(A),
    lodged_by_provider(A, P).
notified_body_notifies_qms_decision(B, P) :-
    notified_body_assesses_quality_management_system(B, P),
    qms_decision_contains_conclusions_and_reasoning(D),
    notified_to(D, P).
qms_decision_contains_conclusions_and_reasoning(D) :-
    contains_conclusions_of_qms_assessment(D),
    contains_reasoned_assessment_decision(D).
provider_maintains_approved_qms(P) :-
    provider(P),
    quality_management_system_approved(QMS),
    approved_for_provider(QMS, P),
    remains_adequate_and_efficient(QMS).
provider_informs_notified_body_of_qms_changes(P, B) :-
    provider(P),
    notified_body(B),
    quality_management_system_approved(QMS),
    approved_for_provider(QMS, P),
    intended_change_to_qms(QMS, Change),
    brings_to_attention(P, Change, B).
notified_body_examines_qms_changes(B, Change) :-
    notified_body(B),
    intended_change_to_qms(_QMS, Change).
notified_body_decides_on_qms_changes(B, P) :-
    notified_body(B),
    provider(P),
    notified_body_examines_qms_changes(B, Change),
    decides_whether_modified_qms_satisfies_requirements_or_reassessment_necessary(B, Change, Decision),
    notifies_provider_of_decision(B, P, Decision).
application_for_technical_documentation(A) :-
    technical_documentation_application_includes_provider_name_address(A),
    technical_documentation_application_includes_no_other_application_declaration(A),
    technical_documentation_application_includes_technical_documentation(A).
notified_body_examines_technical_documentation(B, S) :-
    notified_body(B),
    ai_system(S),
    application_for_technical_documentation(A),
    relates_to_ai_system(A, S),
    technical_documentation_examined(S).
notified_body_granted_access_to_training_validation_testing_data(B, S) :-
    notified_body_examines_technical_documentation(B, S),
    ai_system(S),
    full_access_granted(B, training_data(S)),
    full_access_granted(B, validation_data(S)),
    full_access_granted(B, testing_data(S)).
notified_body_may_require_further_evidence_or_tests(B, P) :-
    notified_body(B),
    provider(P),
    notified_body_examines_technical_documentation(B, S),
    provider_of(S, P),
    may_require(B, further_evidence_or_tests(P)).
notified_body_may_carry_out_tests(B) :-
    notified_body(B),
    \+ satisfied_with_tests_carried_out_by_provider(B, _S),
    directly_carries_out_adequate_tests(B).
notified_body_granted_access_to_training_and_trained_models(B, S) :-
    notified_body_examines_technical_documentation(B, S),
    ai_system(S),
    all_other_reasonable_means_exhausted(B, S),
    proven_insufficient(B, S),
    reasoned_request(B, S),
    access_granted(B, training_and_trained_models(S)).
access_to_models_subject_to_ip_and_trade_secret_protection(Access) :-
    subject_to_union_law_on_ip_and_trade_secrets(Access).
notified_body_notifies_technical_documentation_decision(B, P) :-
    notified_body(B),
    provider(P),
    notified_body_examines_technical_documentation(B, S),
    provider_of(S, P),
    technical_documentation_decision_contains_conclusions_and_reasoning(D),
    notified_to(D, P).
technical_documentation_decision_contains_conclusions_and_reasoning(D) :-
    contains_conclusions_of_technical_documentation_assessment(D),
    contains_reasoned_assessment_decision(D).
union_technical_documentation_assessment_certificate_issued(C) :-
    certificate(C),
    ai_system_in_conformity_with_requirements(S),
    issued_by_notified_body(C, B),
    notified_body_examines_technical_documentation(B, S).
certificate_indicates_provider_name_address(C) :-
    union_technical_documentation_assessment_certificate_issued(C),
    indicates_name_and_address_of_provider(C).
certificate_contains_examination_conclusions(C) :-
    union_technical_documentation_assessment_certificate_issued(C),
    contains_conclusions_of_examination(C).
certificate_contains_validity_conditions(C) :-
    union_technical_documentation_assessment_certificate_issued(C),
    contains_conditions_for_validity(C).
certificate_contains_identification_data(C) :-
    union_technical_documentation_assessment_certificate_issued(C),
    contains_data_for_identification_of_ai_system(C).
certificate_and_annexes_contain_evaluation_and_control_information(C) :-
    union_technical_documentation_assessment_certificate_issued(C),
    certificate_and_annexes_contain_all_relevant_information(C).
certificate_refused_when_not_in_conformity(S) :-
    ai_system(S),
    \+ ai_system_in_conformity_with_requirements(S),
    notified_body_examines_technical_documentation(_B, S).
refusal_informs_applicant_with_detailed_reasons(D) :-
    certificate_refused_when_not_in_conformity(_S),
    informs_applicant(D),
    gives_detailed_reasons_for_refusal(D).
retraining_required_when_training_data_non_compliant(S) :-
    ai_system(S),
    \+ meets_requirement_relating_to_training_data(S),
    new_conformity_assessment_required(S).
refusal_contains_specific_considerations_on_training_data_quality(D) :-
    certificate_refused_when_not_in_conformity(S),
    \+ meets_requirement_relating_to_training_data(S),
    contains_specific_considerations_on_quality_data(D),
    contains_reasons_for_non_compliance(D).
notified_body_assesses_changes_affecting_compliance(B, S) :-
    notified_body(B),
    union_technical_documentation_assessment_certificate_issued(C),
    issued_by_notified_body(C, B),
    certificate_for_ai_system(C, S),
    change_to_ai_system(S, Change),
    could_affect_compliance_or_intended_purpose(Change).
provider_informs_notified_body_of_changes(P, B) :-
    provider(P),
    notified_body(B),
    union_technical_documentation_assessment_certificate_issued(C),
    issued_by_notified_body(C, B),
    provider_of(S, P),
    certificate_for_ai_system(C, S),
    intention_to_introduce_changes(P, S, Change),
    informs_notified_body(P, B, Change).
notified_body_decides_on_new_conformity_assessment_or_supplement(B, S) :-
    notified_body(B),
    ai_system(S),
    change_to_ai_system(S, Change),
    could_affect_compliance_or_intended_purpose(Change),
    decides_whether_new_conformity_assessment_required_or_supplement_possible(B, Change, Decision),
    notifies_provider_of_decision(B, _P, Decision).
supplement_to_certificate_issued_when_changes_approved(B, C) :-
    notified_body(B),
    union_technical_documentation_assessment_certificate_issued(C),
    issued_by_notified_body(C, B),
    changes_approved(B, Change),
    supplement_issued(B, C, Change).
surveillance_purpose_ensures_qms_compliance(S) :-
    quality_management_system_approved(S),
    purpose_is_to_ensure_provider_complies_with_terms_and_conditions(S).
provider_allows_notified_body_access_to_premises(P, B) :-
    provider(P),
    notified_body(B),
    quality_management_system_approved(QMS),
    approved_for_provider(QMS, P),
    allows_access_to_premises(P, B),
    premises_where_design_development_testing_taking_place(Premises),
    access_granted_to(Premises, B).
provider_shares_necessary_information_with_notified_body(P, B) :-
    provider(P),
    notified_body(B),
    quality_management_system_approved(QMS),
    approved_for_provider(QMS, P),
    shares_all_necessary_information(P, B).
notified_body_carries_out_periodic_audits(B) :-
    notified_body(B),
    quality_management_system_approved(QMS),
    audits_to_ensure_provider_maintains_and_applies_qms(B, QMS).
notified_body_provides_audit_report(B, P) :-
    notified_body(B),
    provider(P),
    notified_body_carries_out_periodic_audits(B),
    quality_management_system_approved(QMS),
    approved_for_provider(QMS, P),
    provides_audit_report(B, P).
notified_body_may_carry_out_additional_tests_during_audits(B) :-
    notified_body(B),
    notified_body_carries_out_periodic_audits(B),
    union_technical_documentation_assessment_certificate_issued(C),
    issued_by_notified_body(C, B),
    may_carry_out_additional_tests(B, S),
    certificate_for_ai_system(C, S).
provenance(conformity_assessment_procedure/1, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_approved/1, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_examined/1, 'celex:32024R1689/oj#anx_7').
provenance(quality_management_system_surveillance/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_examined/1, 'celex:32024R1689/oj#anx_7').
provenance(application_for_quality_management_system/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_provider_name_address/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_authorised_representative_name_address/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_ai_systems_list/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_technical_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_quality_management_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_adequacy_effectiveness_procedures/1, 'celex:32024R1689/oj#anx_7').
provenance(application_includes_no_other_application_declaration/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_assesses_quality_management_system/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_notifies_qms_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(qms_decision_contains_conclusions_and_reasoning/1, 'celex:32024R1689/oj#anx_7').
provenance(provider_maintains_approved_qms/1, 'celex:32024R1689/oj#anx_7').
provenance(provider_informs_notified_body_of_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_examines_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_decides_on_qms_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(application_for_technical_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_application_includes_provider_name_address/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_application_includes_no_other_application_declaration/1, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_application_includes_technical_documentation/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_examines_technical_documentation/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_granted_access_to_training_validation_testing_data/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_may_require_further_evidence_or_tests/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_may_carry_out_tests/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_granted_access_to_training_and_trained_models/2, 'celex:32024R1689/oj#anx_7').
provenance(access_to_models_subject_to_ip_and_trade_secret_protection/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_notifies_technical_documentation_decision/2, 'celex:32024R1689/oj#anx_7').
provenance(technical_documentation_decision_contains_conclusions_and_reasoning/1, 'celex:32024R1689/oj#anx_7').
provenance(union_technical_documentation_assessment_certificate_issued/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_indicates_provider_name_address/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_contains_examination_conclusions/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_contains_validity_conditions/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_contains_identification_data/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_and_annexes_contain_evaluation_and_control_information/1, 'celex:32024R1689/oj#anx_7').
provenance(certificate_refused_when_not_in_conformity/1, 'celex:32024R1689/oj#anx_7').
provenance(refusal_informs_applicant_with_detailed_reasons/1, 'celex:32024R1689/oj#anx_7').
provenance(retraining_required_when_training_data_non_compliant/1, 'celex:32024R1689/oj#anx_7').
provenance(refusal_contains_specific_considerations_on_training_data_quality/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_assesses_changes_affecting_compliance/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_informs_notified_body_of_changes/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_decides_on_new_conformity_assessment_or_supplement/2, 'celex:32024R1689/oj#anx_7').
provenance(supplement_to_certificate_issued_when_changes_approved/2, 'celex:32024R1689/oj#anx_7').
provenance(surveillance_purpose_ensures_qms_compliance/1, 'celex:32024R1689/oj#anx_7').
provenance(provider_allows_notified_body_access_to_premises/2, 'celex:32024R1689/oj#anx_7').
provenance(provider_shares_necessary_information_with_notified_body/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_carries_out_periodic_audits/1, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_provides_audit_report/2, 'celex:32024R1689/oj#anx_7').
provenance(notified_body_may_carry_out_additional_tests_during_audits/1, 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_3').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_7/pnt_5').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#anx_7', 'celex:32024R1689/oj#art_43/par_4').

% ==== celex:32024R1689/oj#anx_8 ====
declared(registration_information_section_a/1, 'information to be submitted by providers of high-risk AI systems under Article 49(1)', 'celex:32024R1689/oj#anx_8').
declared(registration_information_section_b/1, 'information to be submitted by providers of AI systems not high-risk under Article 49(2)', 'celex:32024R1689/oj#anx_8').
declared(registration_information_section_c/1, 'information to be submitted by deployers of high-risk AI systems under Article 49(3)', 'celex:32024R1689/oj#anx_8').
declared(must_submit_registration_information/2, 'actor must submit registration information of given type', 'celex:32024R1689/oj#anx_8').
declared(must_keep_registration_information_up_to_date/2, 'actor must keep registration information up to date', 'celex:32024R1689/oj#anx_8').
declared(registration_information_item/2, 'specific registration information item required for given section', 'celex:32024R1689/oj#anx_8').
declared(provider_contact_details/1, 'name, address and contact details of provider', 'celex:32024R1689/oj#anx_8').
declared(submitter_on_behalf_of_provider/1, 'person submitting information on behalf of provider with name, address and contact details', 'celex:32024R1689/oj#anx_8').
declared(authorised_representative_contact_details/1, 'name, address and contact details of authorised representative', 'celex:32024R1689/oj#anx_8').
declared(ai_system_trade_name_and_reference/1, 'AI system trade name and additional unambiguous reference for identification and traceability', 'celex:32024R1689/oj#anx_8').
declared(intended_purpose_description/1, 'description of intended purpose of AI system', 'celex:32024R1689/oj#anx_8').
declared(components_and_functions_description/1, 'description of components and functions supported through AI system', 'celex:32024R1689/oj#anx_8').
declared(information_used_description/1, 'basic and concise description of information used by system and its operating logic', 'celex:32024R1689/oj#anx_8').
declared(ai_system_status/1, 'status of AI system: on market, in service, no longer placed, or recalled', 'celex:32024R1689/oj#anx_8').
declared(certificate_details/1, 'type, number and expiry date of certificate and name or identification number of notified body', 'celex:32024R1689/oj#anx_8').
declared(scanned_certificate_copy/1, 'scanned copy of certificate', 'celex:32024R1689/oj#anx_8').
declared(member_states_where_available/1, 'Member States where AI system placed on market, put into service or made available', 'celex:32024R1689/oj#anx_8').
declared(eu_declaration_of_conformity_copy/1, 'copy of EU declaration of conformity', 'celex:32024R1689/oj#anx_8').
declared(electronic_instructions_for_use/1, 'electronic instructions for use', 'celex:32024R1689/oj#anx_8').
declared(additional_information_url/1, 'URL for additional information (optional)', 'celex:32024R1689/oj#anx_8').
declared(not_high_risk_condition/1, 'condition under Article 6(3) based on which AI system is considered not high-risk', 'celex:32024R1689/oj#anx_8').
declared(not_high_risk_grounds_summary/1, 'short summary of grounds on which AI system is considered not high-risk', 'celex:32024R1689/oj#anx_8').
declared(deployer_contact_details/1, 'name, address and contact details of deployer', 'celex:32024R1689/oj#anx_8').
declared(submitter_on_behalf_of_deployer/1, 'name, address and contact details of person submitting information on behalf of deployer', 'celex:32024R1689/oj#anx_8').
declared(eu_database_entry_url/1, 'URL of entry of AI system in EU database by its provider', 'celex:32024R1689/oj#anx_8').
declared(fundamental_rights_impact_assessment_summary/1, 'summary of findings of fundamental rights impact assessment', 'celex:32024R1689/oj#anx_8').
declared(data_protection_impact_assessment_summary/1, 'summary of data protection impact assessment', 'celex:32024R1689/oj#anx_8').
declared(instructions_for_use_exempt/1, 'electronic instructions for use not required for high-risk AI systems in law enforcement, migration, asylum and border control management areas', 'celex:32024R1689/oj#anx_8').
registration_information_section_a(section_a).
must_submit_registration_information(P, section_a) :-
    provider(P),
    high_risk_ai_system(S),
    registered_in_eu_database(S).
must_keep_registration_information_up_to_date(P, section_a) :-
    provider(P),
    high_risk_ai_system(S),
    registered_in_eu_database(S).
registration_information_item(section_a, provider_contact_details).
registration_information_item(section_a, submitter_on_behalf_of_provider).
registration_information_item(section_a, authorised_representative_contact_details).
registration_information_item(section_a, ai_system_trade_name_and_reference).
registration_information_item(section_a, intended_purpose_description).
registration_information_item(section_a, components_and_functions_description).
registration_information_item(section_a, information_used_description).
registration_information_item(section_a, ai_system_status).
registration_information_item(section_a, certificate_details).
registration_information_item(section_a, scanned_certificate_copy).
registration_information_item(section_a, member_states_where_available).
registration_information_item(section_a, eu_declaration_of_conformity_copy).
registration_information_item(section_a, electronic_instructions_for_use).
registration_information_item(section_a, additional_information_url).
registration_information_section_b(section_b).
must_submit_registration_information(P, section_b) :-
    provider(P),
    ai_system(S),
    concluded_not_high_risk(S),
    registered_in_eu_database(S).
must_keep_registration_information_up_to_date(P, section_b) :-
    provider(P),
    ai_system(S),
    concluded_not_high_risk(S),
    registered_in_eu_database(S).
registration_information_item(section_b, provider_contact_details).
registration_information_item(section_b, submitter_on_behalf_of_provider).
registration_information_item(section_b, authorised_representative_contact_details).
registration_information_item(section_b, ai_system_trade_name_and_reference).
registration_information_item(section_b, intended_purpose_description).
registration_information_item(section_b, not_high_risk_condition).
registration_information_item(section_b, not_high_risk_grounds_summary).
registration_information_item(section_b, ai_system_status).
registration_information_item(section_b, member_states_where_available).
registration_information_section_c(section_c).
must_submit_registration_information(D, section_c) :-
    deployer(D),
    high_risk_ai_system(S),
    registered_in_eu_database(S).
must_keep_registration_information_up_to_date(D, section_c) :-
    deployer(D),
    high_risk_ai_system(S),
    registered_in_eu_database(S).
registration_information_item(section_c, deployer_contact_details).
registration_information_item(section_c, submitter_on_behalf_of_deployer).
registration_information_item(section_c, eu_database_entry_url).
registration_information_item(section_c, fundamental_rights_impact_assessment_summary).
registration_information_item(section_c, data_protection_impact_assessment_summary).
instructions_for_use_exempt(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).
instructions_for_use_exempt(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S).
provenance(registration_information_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_item/2, 'celex:32024R1689/oj#anx_8').
provenance(provider_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(submitter_on_behalf_of_provider/1, 'celex:32024R1689/oj#anx_8').
provenance(authorised_representative_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(ai_system_trade_name_and_reference/1, 'celex:32024R1689/oj#anx_8').
provenance(intended_purpose_description/1, 'celex:32024R1689/oj#anx_8').
provenance(components_and_functions_description/1, 'celex:32024R1689/oj#anx_8').
provenance(information_used_description/1, 'celex:32024R1689/oj#anx_8').
provenance(ai_system_status/1, 'celex:32024R1689/oj#anx_8').
provenance(certificate_details/1, 'celex:32024R1689/oj#anx_8').
provenance(scanned_certificate_copy/1, 'celex:32024R1689/oj#anx_8').
provenance(member_states_where_available/1, 'celex:32024R1689/oj#anx_8').
provenance(eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_8').
provenance(electronic_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(additional_information_url/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_condition/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_grounds_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(deployer_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(submitter_on_behalf_of_deployer/1, 'celex:32024R1689/oj#anx_8').
provenance(eu_database_entry_url/1, 'celex:32024R1689/oj#anx_8').
provenance(fundamental_rights_impact_assessment_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(data_protection_impact_assessment_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(instructions_for_use_exempt/1, 'celex:32024R1689/oj#anx_8').
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
declared(must_provide_registration_information/2, 'who must provide what information upon registration of real-world testing', 'celex:32024R1689/oj#anx_9').
declared(registration_information_kept_up_to_date/2, 'who must keep registration information up to date', 'celex:32024R1689/oj#anx_9').
declared(registration_information_item/1, 'an item of information required for registration of real-world testing', 'celex:32024R1689/oj#anx_9').
registration_information_item(union_wide_unique_single_identification_number).
registration_information_item(name_and_contact_details).
registration_information_item(brief_description_of_ai_system).
registration_information_item(summary_of_main_characteristics_of_plan).
registration_information_item(information_on_suspension_or_termination).
must_provide_registration_information(Provider, union_wide_unique_single_identification_number) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
must_provide_registration_information(Provider, name_and_contact_details) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
must_provide_registration_information(Provider, brief_description_of_ai_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
must_provide_registration_information(Provider, summary_of_main_characteristics_of_plan) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
must_provide_registration_information(Provider, information_on_suspension_or_termination) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
must_provide_registration_information(Deployer, name_and_contact_details) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Provider, union_wide_unique_single_identification_number) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Provider, name_and_contact_details) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Provider, brief_description_of_ai_system) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Provider, summary_of_main_characteristics_of_plan) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Provider, information_on_suspension_or_termination) :-
    provider(Provider),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
registration_information_kept_up_to_date(Deployer, name_and_contact_details) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    testing_in_real_world_conditions(S),
    registered_in_eu_database(S).
provenance(must_provide_registration_information/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_kept_up_to_date/2, 'celex:32024R1689/oj#anx_9').
provenance(registration_information_item/1, 'celex:32024R1689/oj#anx_9').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#anx_9', 'celex:32024R1689/oj#art_60').

% ==== celex:32024R1689/oj#anx_10 ====
declared(large_scale_it_system/1, 'large-scale IT system in the area of Freedom, Security and Justice listed in Annex X', 'celex:32024R1689/oj#anx_10').
declared(schengen_information_system/1, 'Schengen Information System', 'celex:32024R1689/oj#anx_10').
declared(visa_information_system/1, 'Visa Information System', 'celex:32024R1689/oj#anx_10').
declared(eurodac/1, 'Eurodac system for comparison of biometric data', 'celex:32024R1689/oj#anx_10').
declared(entry_exit_system/1, 'Entry/Exit System (EES)', 'celex:32024R1689/oj#anx_10').
declared(european_travel_information_and_authorisation_system/1, 'European Travel Information and Authorisation System (ETIAS)', 'celex:32024R1689/oj#anx_10').
declared(european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons/1, 'European Criminal Records Information System on third-country nationals and stateless persons (ECRIS-TCN)', 'celex:32024R1689/oj#anx_10').
declared(interoperability_framework/1, 'framework for interoperability between EU information systems', 'celex:32024R1689/oj#anx_10').
large_scale_it_system(S) :-
    schengen_information_system(S).
large_scale_it_system(S) :-
    visa_information_system(S).
large_scale_it_system(S) :-
    eurodac(S).
large_scale_it_system(S) :-
    entry_exit_system(S).
large_scale_it_system(S) :-
    european_travel_information_and_authorisation_system(S).
large_scale_it_system(S) :-
    european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons(S).
large_scale_it_system(S) :-
    interoperability_framework(S).
schengen_information_system(sis).
visa_information_system(vis).
eurodac(eurodac).
entry_exit_system(ees).
european_travel_information_and_authorisation_system(etias).
european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons(ecris_tcn).
interoperability_framework(interoperability_borders_visa).
interoperability_framework(interoperability_police_judicial_asylum_migration).
provenance(large_scale_it_system/1, 'celex:32024R1689/oj#anx_10').
provenance(schengen_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(visa_information_system/1, 'celex:32024R1689/oj#anx_10').
provenance(eurodac/1, 'celex:32024R1689/oj#anx_10').
provenance(entry_exit_system/1, 'celex:32024R1689/oj#anx_10').
provenance(european_travel_information_and_authorisation_system/1, 'celex:32024R1689/oj#anx_10').
provenance(european_criminal_records_information_system_on_third_country_nationals_and_stateless_persons/1, 'celex:32024R1689/oj#anx_10').
provenance(interoperability_framework/1, 'celex:32024R1689/oj#anx_10').
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
declared(must_include_technical_documentation/2, 'provider of general-purpose AI model must include specified information in technical documentation', 'celex:32024R1689/oj#anx_11').
declared(general_description_of_model/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_11').
declared(detailed_description_of_model_elements/1, 'detailed description of the elements of the model and development process', 'celex:32024R1689/oj#anx_11').
declared(additional_information_systemic_risk/1, 'additional information required for providers of general-purpose AI models with systemic risk', 'celex:32024R1689/oj#anx_11').
declared(tasks_intended_to_perform/1, 'tasks that the model is intended to perform', 'celex:32024R1689/oj#anx_11').
declared(type_and_nature_of_ai_systems_integratable/1, 'type and nature of AI systems in which the model can be integrated', 'celex:32024R1689/oj#anx_11').
declared(acceptable_use_policies_applicable/1, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_11').
declared(date_of_release_and_methods_of_distribution/1, 'date of release and methods of distribution', 'celex:32024R1689/oj#anx_11').
declared(architecture_and_number_of_parameters/1, 'architecture and number of parameters of the model', 'celex:32024R1689/oj#anx_11').
declared(modality_and_format_of_inputs_and_outputs/1, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_11').
declared(licence_of_model/1, 'licence of the model', 'celex:32024R1689/oj#anx_11').
declared(technical_means_for_integration/1, 'technical means required for the model to be integrated in AI systems', 'celex:32024R1689/oj#anx_11').
declared(design_specifications_and_training_process/1, 'design specifications of the model and training process including methodologies, techniques, key design choices, rationale, assumptions, optimisation target and parameter relevance', 'celex:32024R1689/oj#anx_11').
declared(information_on_data_used_for_training_testing_validation/1, 'information on data used for training, testing and validation including type, provenance, curation methodologies, number of data points, scope, main characteristics, how data was obtained and selected, measures to detect unsuitability of data sources and methods to detect identifiable biases', 'celex:32024R1689/oj#anx_11').
declared(computational_resources_used_to_train/1, 'computational resources used to train the model including number of floating point operations, training time and other relevant details', 'celex:32024R1689/oj#anx_11').
declared(known_or_estimated_energy_consumption/1, 'known or estimated energy consumption of the model', 'celex:32024R1689/oj#anx_11').
declared(energy_consumption_based_on_computational_resources/1, 'energy consumption based on information about computational resources used when unknown', 'celex:32024R1689/oj#anx_11').
declared(evaluation_strategies_with_results/1, 'detailed description of evaluation strategies including evaluation results, criteria, metrics and methodology on identification of limitations', 'celex:32024R1689/oj#anx_11').
declared(measures_for_adversarial_testing/1, 'detailed description of measures for internal and/or external adversarial testing, model adaptations, alignment and fine-tuning', 'celex:32024R1689/oj#anx_11').
declared(system_architecture_description/1, 'detailed description of system architecture explaining how software components build or feed into each other and integrate into overall processing', 'celex:32024R1689/oj#anx_11').
must_include_technical_documentation(P, general_description_of_model(D)) :-
    general_purpose_ai_model_provider(P),
    general_description_of_model(D).
must_include_technical_documentation(P, detailed_description_of_model_elements(D)) :-
    general_purpose_ai_model_provider(P),
    detailed_description_of_model_elements(D).
must_include_technical_documentation(P, additional_information_systemic_risk(D)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    provider(P),
    systemic_risk(M),
    additional_information_systemic_risk(D).
general_description_of_model(D) :-
    tasks_intended_to_perform(D),
    type_and_nature_of_ai_systems_integratable(D),
    acceptable_use_policies_applicable(D),
    date_of_release_and_methods_of_distribution(D),
    architecture_and_number_of_parameters(D),
    modality_and_format_of_inputs_and_outputs(D),
    licence_of_model(D).
detailed_description_of_model_elements(D) :-
    technical_means_for_integration(D),
    design_specifications_and_training_process(D),
    information_on_data_used_for_training_testing_validation(D),
    computational_resources_used_to_train(D),
    known_or_estimated_energy_consumption(D).
known_or_estimated_energy_consumption(D) :-
    energy_consumption_based_on_computational_resources(D).
additional_information_systemic_risk(D) :-
    evaluation_strategies_with_results(D).
additional_information_systemic_risk(D) :-
    measures_for_adversarial_testing(D).
additional_information_systemic_risk(D) :-
    system_architecture_description(D).
provenance(must_include_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(general_description_of_model/1, 'celex:32024R1689/oj#anx_11').
provenance(detailed_description_of_model_elements/1, 'celex:32024R1689/oj#anx_11').
provenance(additional_information_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
provenance(tasks_intended_to_perform/1, 'celex:32024R1689/oj#anx_11').
provenance(type_and_nature_of_ai_systems_integratable/1, 'celex:32024R1689/oj#anx_11').
provenance(acceptable_use_policies_applicable/1, 'celex:32024R1689/oj#anx_11').
provenance(date_of_release_and_methods_of_distribution/1, 'celex:32024R1689/oj#anx_11').
provenance(architecture_and_number_of_parameters/1, 'celex:32024R1689/oj#anx_11').
provenance(modality_and_format_of_inputs_and_outputs/1, 'celex:32024R1689/oj#anx_11').
provenance(licence_of_model/1, 'celex:32024R1689/oj#anx_11').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_11').
provenance(design_specifications_and_training_process/1, 'celex:32024R1689/oj#anx_11').
provenance(information_on_data_used_for_training_testing_validation/1, 'celex:32024R1689/oj#anx_11').
provenance(computational_resources_used_to_train/1, 'celex:32024R1689/oj#anx_11').
provenance(known_or_estimated_energy_consumption/1, 'celex:32024R1689/oj#anx_11').
provenance(energy_consumption_based_on_computational_resources/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategies_with_results/1, 'celex:32024R1689/oj#anx_11').
provenance(measures_for_adversarial_testing/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').

% ==== celex:32024R1689/oj#anx_12 ====
declared(general_purpose_ai_system/1, 'AI system based on a general-purpose AI model', '66').
declared(transparency_information_general_purpose_ai_model/1, 'transparency information for general-purpose AI model as required by Annex XII', 'celex:32024R1689/oj#anx_12').
declared(general_description_of_model/1, 'general description of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(description_of_model_elements_and_development/1, 'description of elements of the model and process for its development', 'celex:32024R1689/oj#anx_12').
declared(tasks_intended_to_perform/1, 'tasks that the model is intended to perform', 'celex:32024R1689/oj#anx_12').
declared(type_and_nature_of_ai_systems_integratable/1, 'type and nature of AI systems into which the model can be integrated', 'celex:32024R1689/oj#anx_12').
declared(acceptable_use_policies/1, 'acceptable use policies applicable to the model', 'celex:32024R1689/oj#anx_12').
declared(date_of_release_and_methods_of_distribution/1, 'date of release and methods of distribution', 'celex:32024R1689/oj#anx_12').
declared(model_interaction_with_external_hardware_software/1, 'how the model interacts or can be used to interact with hardware or software not part of the model itself', 'celex:32024R1689/oj#anx_12').
declared(versions_of_relevant_software/1, 'versions of relevant software related to the use of the general-purpose AI model', 'celex:32024R1689/oj#anx_12').
declared(architecture_and_number_of_parameters/1, 'architecture and number of parameters of the model', 'celex:32024R1689/oj#anx_12').
declared(modality_and_format_of_inputs_outputs/1, 'modality and format of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(licence_for_model/1, 'licence for the model', 'celex:32024R1689/oj#anx_12').
declared(technical_means_for_integration/1, 'technical means required for the model to be integrated into AI systems', 'celex:32024R1689/oj#anx_12').
declared(modality_format_and_maximum_size_of_inputs_outputs/1, 'modality, format and maximum size of inputs and outputs', 'celex:32024R1689/oj#anx_12').
declared(information_on_training_testing_validation_data/1, 'information on data used for training, testing and validation including type, provenance and curation methodologies', 'celex:32024R1689/oj#anx_12').
must_provide(Provider, transparency_information_general_purpose_ai_model(Info)) :-
    general_purpose_ai_model_provider(Provider),
    transparency_information_general_purpose_ai_model(Info).
must_provide(Provider, transparency_information_general_purpose_ai_model(Info), DownstreamProvider) :-
    general_purpose_ai_model_provider(Provider),
    downstream_provider(DownstreamProvider),
    transparency_information_general_purpose_ai_model(Info).
transparency_information_general_purpose_ai_model(Info) :-
    general_description_of_model(Info),
    description_of_model_elements_and_development(Info).
general_description_of_model(Info) :-
    tasks_intended_to_perform(Info),
    type_and_nature_of_ai_systems_integratable(Info),
    acceptable_use_policies(Info),
    date_of_release_and_methods_of_distribution(Info),
    model_interaction_with_external_hardware_software(Info),
    versions_of_relevant_software(Info),
    architecture_and_number_of_parameters(Info),
    modality_and_format_of_inputs_outputs(Info),
    licence_for_model(Info).
description_of_model_elements_and_development(Info) :-
    technical_means_for_integration(Info),
    modality_format_and_maximum_size_of_inputs_outputs(Info),
    information_on_training_testing_validation_data(Info).
provenance(must_provide/2, 'celex:32024R1689/oj#anx_12').
provenance(must_provide/3, 'celex:32024R1689/oj#anx_12').
provenance(transparency_information_general_purpose_ai_model/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(description_of_model_elements_and_development/1, 'celex:32024R1689/oj#anx_12').
provenance(tasks_intended_to_perform/1, 'celex:32024R1689/oj#anx_12').
provenance(type_and_nature_of_ai_systems_integratable/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(date_of_release_and_methods_of_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(model_interaction_with_external_hardware_software/1, 'celex:32024R1689/oj#anx_12').
provenance(versions_of_relevant_software/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture_and_number_of_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(modality_and_format_of_inputs_outputs/1, 'celex:32024R1689/oj#anx_12').
provenance(licence_for_model/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(modality_format_and_maximum_size_of_inputs_outputs/1, 'celex:32024R1689/oj#anx_12').
provenance(information_on_training_testing_validation_data/1, 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').

% ==== celex:32024R1689/oj#anx_13 ====
declared(criterion_for_systemic_risk_designation/2, 'criterion the Commission takes into account for designating a general-purpose AI model with systemic risk', 'celex:32024R1689/oj#anx_13').
declared(number_of_parameters/1, 'number of parameters of the model', 'celex:32024R1689/oj#anx_13').
declared(quality_or_size_of_data_set/1, 'quality or size of the data set, for example measured through tokens', 'celex:32024R1689/oj#anx_13').
declared(amount_of_computation_for_training/1, 'amount of computation used for training the model, measured in floating point operations or indicated by other variables', 'celex:32024R1689/oj#anx_13').
declared(input_output_modalities/1, 'input and output modalities of the model and state of the art thresholds for high-impact capabilities', 'celex:32024R1689/oj#anx_13').
declared(benchmarks_and_evaluations_of_capabilities/1, 'benchmarks and evaluations of capabilities of the model including tasks without additional training, adaptability, autonomy, scalability, and tools access', 'celex:32024R1689/oj#anx_13').
declared(high_impact_on_internal_market_due_to_reach/1, 'high impact on the internal market due to reach, presumed when made available to at least 10000 registered business users established in the Union', 'celex:32024R1689/oj#anx_13').
declared(number_of_registered_end_users/1, 'number of registered end-users', 'celex:32024R1689/oj#anx_13').
declared(made_available_to_registered_business_users/2, 'model made available to a number of registered business users established in the Union', 'celex:32024R1689/oj#anx_13').
declared(registered_business_user_established_in_union/1, 'registered business user established in the Union', 'celex:32024R1689/oj#anx_13').
criterion_for_systemic_risk_designation(M, number_of_parameters) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, quality_or_size_of_data_set) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, amount_of_computation_for_training) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, input_output_modalities) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, benchmarks_and_evaluations_of_capabilities) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, high_impact_on_internal_market_due_to_reach) :-
    general_purpose_ai_model(M).
criterion_for_systemic_risk_designation(M, number_of_registered_end_users) :-
    general_purpose_ai_model(M).
number_of_parameters(M) :-
    general_purpose_ai_model(M).
quality_or_size_of_data_set(M) :-
    general_purpose_ai_model(M).
amount_of_computation_for_training(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(M).
input_output_modalities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).
benchmarks_and_evaluations_of_capabilities(M) :-
    general_purpose_ai_model(M).
high_impact_on_internal_market_due_to_reach(M) :-
    general_purpose_ai_model(M),
    made_available_to_registered_business_users(M, N),
    N >= 10000.
made_available_to_registered_business_users(M, N) :-
    general_purpose_ai_model(M),
    registered_business_user_established_in_union(_U),
    aggregate_business_users(M, N).
number_of_registered_end_users(M) :-
    general_purpose_ai_model(M).
provenance(criterion_for_systemic_risk_designation/2, 'celex:32024R1689/oj#anx_13').
provenance(number_of_parameters/1, 'celex:32024R1689/oj#anx_13').
provenance(quality_or_size_of_data_set/1, 'celex:32024R1689/oj#anx_13').
provenance(amount_of_computation_for_training/1, 'celex:32024R1689/oj#anx_13').
provenance(input_output_modalities/1, 'celex:32024R1689/oj#anx_13').
provenance(benchmarks_and_evaluations_of_capabilities/1, 'celex:32024R1689/oj#anx_13').
provenance(high_impact_on_internal_market_due_to_reach/1, 'celex:32024R1689/oj#anx_13').
provenance(number_of_registered_end_users/1, 'celex:32024R1689/oj#anx_13').
provenance(made_available_to_registered_business_users/2, 'celex:32024R1689/oj#anx_13').
provenance(registered_business_user_established_in_union/1, 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51').
references('celex:32024R1689/oj#anx_13', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').

