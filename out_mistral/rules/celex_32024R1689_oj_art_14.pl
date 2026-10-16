% unit       : celex:32024R1689/oj#art_14
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : b9457cea932d2727fd5d9eeb38ec671c36b06a96579636aed11ab93a38f65871
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 70eaaaa0ffa1db38b1abbfc05015c1e454dcea983fcb0ce6b9014362ca7742e7
% cached     : False
% title      : Human oversight
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_14').
:- pred human_oversight/1, gloss('oversight by natural persons of a high-risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred oversight_measure/1, gloss('measure ensuring human oversight of a high-risk AI system'), source('celex:32024R1689/oj#art_14').
:- pred built_in_oversight_measure/1, gloss('oversight measure built into the AI system by the provider'), source('celex:32024R1689/oj#art_14').
:- pred deployer_implemented_oversight_measure/1, gloss('oversight measure identified by provider and implemented by deployer'), source('celex:32024R1689/oj#art_14').
:- pred oversight_assigned_natural_person/1, gloss('natural person to whom human oversight is assigned'), source('celex:32024R1689/oj#art_14').
:- pred automation_bias_awareness/1, gloss('awareness of possible tendency to over-rely on AI output'), source('celex:32024R1689/oj#art_14').
:- pred separate_verification_by_two_persons/1, gloss('identification verified and confirmed by at least two natural persons'), source('celex:32024R1689/oj#art_14').
:- pred biometric_identification_for_law_enforcement_migration_border_asylum/1, gloss('high-risk AI system used for law enforcement, migration, border control or asylum'), source('celex:32024R1689/oj#art_14').
:- pred disproportionate_requirement_exempt/1, gloss('application of two-person verification requirement considered disproportionate under Union or national law'), source('celex:32024R1689/oj#art_14').

% Article 14(1): High-risk AI systems shall be designed and developed with human oversight capability
required_human_oversight_design(S) :-
    high_risk_ai_system(S),
    human_oversight(S).

human_oversight(S) :-
    high_risk_ai_system(S),
    effective_oversight_by_natural_persons(S).

effective_oversight_by_natural_persons(S) :-
    high_risk_ai_system(S),
    designed_with_human_machine_interface_tools(S),
    oversight_during_use_period(S).

% Article 14(2): Oversight aims to prevent or minimise risks
objective_human_oversight(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    aims_to_prevent_or_minimise_risks(S).

aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    used_in_accordance_with_intended_purpose(S).

aims_to_prevent_or_minimise_risks(S) :-
    high_risk_ai_system(S),
    risk_to_health_safety_fundamental_rights(S),
    reasonably_foreseeable_misuse_conditions(S),
    risks_persist_despite_other_requirements(S).

% Article 14(3): Oversight measures commensurate with risks, autonomy, context
oversight_measure_commensurate(S, M) :-
    high_risk_ai_system(S),
    oversight_measure(M),
    commensurate_with_risks(S, M),
    commensurate_with_autonomy_level(S, M),
    commensurate_with_context_of_use(S, M).

% Article 14(3)(a): Built-in measures by provider before placing on market or putting into service
built_in_oversight_measure(M) :-
    oversight_measure(M),
    identified_and_built_by_provider(M),
    technically_feasible(M),
    before_placing_on_market_or_putting_into_service(M).

% Article 14(3)(b): Measures identified by provider, implemented by deployer
deployer_implemented_oversight_measure(M) :-
    oversight_measure(M),
    identified_by_provider(M),
    appropriate_for_deployer_implementation(M),
    before_placing_on_market_or_putting_into_service(M).

% Article 14(3): Oversight ensured through one or both types of measures
ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    built_in_oversight_measure(M),
    oversight_measure_applies_to_system(M, S).

ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    deployer_implemented_oversight_measure(M),
    oversight_measure_applies_to_system(M, S).

ensured_through_oversight_measures(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    built_in_oversight_measure(M1),
    deployer_implemented_oversight_measure(M2),
    oversight_measure_applies_to_system(M1, S),
    oversight_measure_applies_to_system(M2, S).

% Article 14(4): System provided to deployer enabling oversight-assigned natural persons
must_provide_system_enabling_oversight(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    human_oversight(S),
    provided_to_deployer_in_enabling_way(Provider, S).

provided_to_deployer_in_enabling_way(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    oversight_assigned_natural_person(Person, S),
    enabled_to_understand_capacities_and_limitations(Person, S),
    enabled_to_monitor_operation(Person, S),
    enabled_to_detect_anomalies_dysfunctions_unexpected_performance(Person, S),
    enabled_to_remain_aware_of_automation_bias(Person, S),
    enabled_to_correctly_interpret_output(Person, S),
    enabled_to_decide_not_to_use_or_override_output(Person, S),
    enabled_to_intervene_or_interrupt_system(Person, S).

oversight_assigned_natural_person(Person, S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    natural_person(Person),
    assigned_human_oversight(Person, S).

% Article 14(4)(a): Understand capacities and limitations, monitor operation
enabled_to_understand_capacities_and_limitations(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    properly_understands_relevant_capacities_and_limitations(Person, S),
    able_to_duly_monitor_operation(Person, S).

enabled_to_monitor_operation(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_detect_anomalies_dysfunctions_unexpected_performance(Person, S).

% Article 14(4)(b): Remain aware of automation bias
enabled_to_remain_aware_of_automation_bias(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    remains_aware_of_possible_automation_bias(Person, S).

remains_aware_of_possible_automation_bias(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    automation_bias_awareness(Person),
    high_risk_ai_system_used_for_information_or_recommendations(S).

% Article 14(4)(c): Correctly interpret output
enabled_to_correctly_interpret_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    correctly_interprets_output(Person, S),
    interpretation_tools_and_methods_available(Person, S).

% Article 14(4)(d): Decide not to use or override output
enabled_to_decide_not_to_use_or_override_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_decide_not_to_use_system(Person, S).

enabled_to_decide_not_to_use_or_override_output(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_disregard_override_or_reverse_output(Person, S).

% Article 14(4)(e): Intervene or interrupt system
enabled_to_intervene_or_interrupt_system(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_intervene_in_operation(Person, S).

enabled_to_intervene_or_interrupt_system(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    able_to_interrupt_system_via_stop_button_or_similar(Person, S),
    system_comes_to_halt_in_safe_state(S).

% Article 14(5): Separate verification by at least two natural persons for Annex III point 1(a) systems
required_separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_a_system(S),
    biometric_identification_system(S),
    separate_verification_by_two_persons(S).

separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    no_action_or_decision_taken_by_deployer_on_basis_of_identification(S),
    identification_separately_verified_and_confirmed(S),
    verified_by_at_least_two_natural_persons(S),
    natural_persons_have_competence_training_authority(S).

% Article 14(5) exemption: Law enforcement, migration, border control, asylum
exempt_separate_verification_by_two_persons(S) :-
    high_risk_ai_system(S),
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    disproportionate_requirement_exempt(S).

disproportionate_requirement_exempt(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    union_or_national_law_considers_disproportionate(S).

% Helper: Annex III point 1(a) refers to biometric identification systems
annex_3_point_1_a_system(S) :-
    remote_biometric_identification_system(S).

annex_3_point_1_a_system(S) :-
    biometric_identification(S),
    ai_system(S),
    high_risk_ai_system(S).

% Helper predicates
natural_person(Person) :-
    oversight_assigned_natural_person(Person, _).

assigned_human_oversight(Person, S) :-
    oversight_assigned_natural_person(Person, S).

designed_with_human_machine_interface_tools(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    appropriate_human_machine_interface_tools(S).

oversight_during_use_period(S) :-
    high_risk_ai_system(S),
    human_oversight(S),
    period_in_which_system_is_in_use(S).

risk_to_health_safety_fundamental_rights(S) :-
    high_risk_ai_system(S),
    risk(S),
    risk_to_health(S),
    risk_to_safety(S),
    risk_to_fundamental_rights(S).

used_in_accordance_with_intended_purpose(S) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    use_in_accordance_with_intended_purpose(S).

reasonably_foreseeable_misuse_conditions(S) :-
    high_risk_ai_system(S),
    reasonably_foreseeable_misuse(S),
    conditions_of_reasonably_foreseeable_misuse(S).

risks_persist_despite_other_requirements(S) :-
    high_risk_ai_system(S),
    other_requirements_set_out_in_chapter_3_section_2_applied(S).

commensurate_with_risks(S, M) :-
    oversight_measure(M),
    commensurate_with(S, risks, M).

commensurate_with_autonomy_level(S, M) :-
    oversight_measure(M),
    commensurate_with(S, level_of_autonomy, M).

commensurate_with_context_of_use(S, M) :-
    oversight_measure(M),
    commensurate_with(S, context_of_use, M).

oversight_measure_applies_to_system(M, S) :-
    oversight_measure(M),
    high_risk_ai_system(S),
    measure_applies_to(M, S).

identified_and_built_by_provider(M) :-
    built_in_oversight_measure(M),
    provider_identified_and_built(M).

technically_feasible(M) :-
    built_in_oversight_measure(M),
    technically_feasible_to_build_in(M).

before_placing_on_market_or_putting_into_service(M) :-
    oversight_measure(M),
    timing_before_placing_on_market_or_putting_into_service(M).

identified_by_provider(M) :-
    deployer_implemented_oversight_measure(M),
    provider_identified(M).

appropriate_for_deployer_implementation(M) :-
    deployer_implemented_oversight_measure(M),
    appropriate_to_be_implemented_by_deployer(M).

high_risk_ai_system_used_for_information_or_recommendations(S) :-
    high_risk_ai_system(S),
    used_to_provide_information_or_recommendations(S),
    for_decisions_to_be_taken_by_natural_persons(S).

interpretation_tools_and_methods_available(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    interpretation_tools_available(Person, S),
    interpretation_methods_available(Person, S).

able_to_intervene_in_operation(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    intervention_capability(Person, S).

able_to_interrupt_system_via_stop_button_or_similar(Person, S) :-
    oversight_assigned_natural_person(Person, S),
    stop_button_or_similar_procedure_available(Person, S).

system_comes_to_halt_in_safe_state(S) :-
    high_risk_ai_system(S),
    halt_in_safe_state_achievable(S).

no_action_or_decision_taken_by_deployer_on_basis_of_identification(S) :-
    high_risk_ai_system(S),
    deployer(D),
    \+ action_or_decision_taken_by_deployer_on_basis_of_identification(D, S).

identification_separately_verified_and_confirmed(S) :-
    high_risk_ai_system(S),
    identification_resulting_from_system(S),
    separately_verified_and_confirmed(identification_resulting_from_system(S)).

verified_by_at_least_two_natural_persons(S) :-
    high_risk_ai_system(S),
    at_least_two_natural_persons(Persons),
    verified_by(Persons, identification_resulting_from_system(S)).

natural_persons_have_competence_training_authority(S) :-
    high_risk_ai_system(S),
    natural_persons(Persons),
    have_necessary_competence(Persons),
    have_necessary_training(Persons),
    have_necessary_authority(Persons).

biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_law_enforcement(S).

biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_migration(S).

biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_border_control(S).

biometric_identification_for_law_enforcement_migration_border_asylum(S) :-
    high_risk_ai_system(S),
    used_for_purposes_of_asylum(S).

union_or_national_law_considers_disproportionate(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    union_law_considers_application_disproportionate(S).

union_or_national_law_considers_disproportionate(S) :-
    biometric_identification_for_law_enforcement_migration_border_asylum(S),
    national_law_considers_application_disproportionate(S).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_14').
provenance(human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(built_in_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(deployer_implemented_oversight_measure/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_assigned_natural_person/1, 'celex:32024R1689/oj#art_14').
provenance(automation_bias_awareness/1, 'celex:32024R1689/oj#art_14').
provenance(separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(biometric_identification_for_law_enforcement_migration_border_asylum/1, 'celex:32024R1689/oj#art_14').
provenance(disproportionate_requirement_exempt/1, 'celex:32024R1689/oj#art_14').
provenance(required_human_oversight_design/1, 'celex:32024R1689/oj#art_14').
provenance(objective_human_oversight/1, 'celex:32024R1689/oj#art_14').
provenance(oversight_measure_commensurate/2, 'celex:32024R1689/oj#art_14').
provenance(ensured_through_oversight_measures/1, 'celex:32024R1689/oj#art_14').
provenance(must_provide_system_enabling_oversight/2, 'celex:32024R1689/oj#art_14').
provenance(provided_to_deployer_in_enabling_way/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_understand_capacities_and_limitations/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_monitor_operation/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_remain_aware_of_automation_bias/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_correctly_interpret_output/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_decide_not_to_use_or_override_output/2, 'celex:32024R1689/oj#art_14').
provenance(enabled_to_intervene_or_interrupt_system/2, 'celex:32024R1689/oj#art_14').
provenance(required_separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').
provenance(exempt_separate_verification_by_two_persons/1, 'celex:32024R1689/oj#art_14').

% References
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_1').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_2').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#anx_3/pnt_1/pnt_a').
references('celex:32024R1689/oj#art_14', 'celex:32024R1689/oj#art_14/par_3').
