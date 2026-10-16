% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 0949e068d3babd8859756b4ca31994538123f4a0b77b80168c703b5f31de9f17
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred technical_documentation_contains/2, gloss('technical documentation of AI system contains specified information'), source('celex:32024R1689/oj#anx_4').
:- pred general_description_of_ai_system/1, gloss('general description of the AI system'), source('celex:32024R1689/oj#anx_4').
:- pred detailed_description_of_elements_and_development/1, gloss('detailed description of elements and development process'), source('celex:32024R1689/oj#anx_4').
:- pred detailed_information_monitoring_functioning_control/1, gloss('detailed information about monitoring, functioning and control'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_appropriateness_of_performance_metrics/1, gloss('description of appropriateness of performance metrics'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_risk_management_system/1, gloss('description of risk management system'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_relevant_changes_lifecycle/1, gloss('description of relevant changes through lifecycle'), source('celex:32024R1689/oj#anx_4').
:- pred list_of_harmonised_standards_applied/1, gloss('list of harmonised standards applied with references published in Official Journal'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_solutions_when_no_harmonised_standards/1, gloss('description of solutions adopted when no harmonised standards applied'), source('celex:32024R1689/oj#anx_4').
:- pred copy_of_eu_declaration_of_conformity/1, gloss('copy of EU declaration of conformity'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_post_market_performance_evaluation_system/1, gloss('description of system to evaluate post-market performance'), source('celex:32024R1689/oj#anx_4').
:- pred intended_purpose_name_provider_version/1, gloss('intended purpose, name of provider and version of system'), source('celex:32024R1689/oj#anx_4').
:- pred interaction_with_external_hardware_software/1, gloss('how AI system interacts with external hardware or software'), source('celex:32024R1689/oj#anx_4').
:- pred versions_of_software_firmware_and_update_requirements/1, gloss('versions of relevant software or firmware and version update requirements'), source('celex:32024R1689/oj#anx_4').
:- pred forms_of_market_placement/1, gloss('description of all forms in which AI system is placed on market or put into service'), source('celex:32024R1689/oj#anx_4').
:- pred description_of_intended_hardware/1, gloss('description of hardware on which AI system is intended to run'), source('celex:32024R1689/oj#anx_4').
:- pred external_features_marking_internal_layout/1, gloss('photographs or illustrations showing external features, marking and internal layout for product components'), source('celex:32024R1689/oj#anx_4').
:- pred user_interface_description_for_deployer/1, gloss('basic description of user-interface provided to deployer'), source('celex:32024R1689/oj#anx_4').
:- pred instructions_for_use_and_user_interface/1, gloss('instructions for use and user-interface description where applicable'), source('celex:32024R1689/oj#anx_4').
:- pred development_methods_and_steps/1, gloss('methods and steps performed for development including recourse to pre-trained systems'), source('celex:32024R1689/oj#anx_4').
:- pred design_specifications/1, gloss('design specifications including logic, algorithms, key design choices, classification choices, optimisation targets'), source('celex:32024R1689/oj#anx_4').
:- pred system_architecture_and_computational_resources/1, gloss('system architecture and computational resources used to develop, train, test and validate'), source('celex:32024R1689/oj#anx_4').
:- pred data_requirements_and_training_data_description/1, gloss('data requirements, training methodologies, training data sets description, provenance, labelling, cleaning'), source('celex:32024R1689/oj#anx_4').
:- pred human_oversight_measures_assessment/1, gloss('assessment of human oversight measures needed'), source('celex:32024R1689/oj#anx_4').
:- pred predetermined_changes_description/1, gloss('detailed description of pre-determined changes and technical solutions for continuous compliance'), source('celex:32024R1689/oj#anx_4').
:- pred validation_and_testing_procedures/1, gloss('validation and testing procedures, data, metrics, test logs and reports'), source('celex:32024R1689/oj#anx_4').
:- pred cybersecurity_measures_description/1, gloss('cybersecurity measures put in place'), source('celex:32024R1689/oj#anx_4').
:- pred capabilities_and_limitations_performance/1, gloss('capabilities and limitations in performance including accuracy for specific persons or groups'), source('celex:32024R1689/oj#anx_4').
:- pred foreseeable_unintended_outcomes_and_risks/1, gloss('foreseeable unintended outcomes and sources of risks to health, safety, fundamental rights and discrimination'), source('celex:32024R1689/oj#anx_4').
:- pred input_data_specifications/1, gloss('specifications on input data as appropriate'), source('celex:32024R1689/oj#anx_4').

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
