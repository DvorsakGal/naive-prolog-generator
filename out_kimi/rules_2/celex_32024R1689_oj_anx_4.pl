% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 212f2fdd04b8a8d2b6a10bca3303c5fb230ed18bfa91eaebc20179a17687a423
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation_contains/2, gloss('technical documentation must contain specified information'), source('celex:32024R1689/oj#anx_4').

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
