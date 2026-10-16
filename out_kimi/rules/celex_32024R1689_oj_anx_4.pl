% unit       : celex:32024R1689/oj#anx_4
% context    : ANNEXES
% slice sha  : e1aa89cec0f30a07136be2cb8521503f3f2498c3b99ad30b15ce3a7816722beb
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aea39486d47561101a56ab3fa8b0205cace270853f458c568b8f8bd509ed0844
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> The technical documentation referred to in <ref id="celex:32024R1689/oj#art_11/par_1"/> shall contain at least the following information, as applicable to the relevant AI system:
:- pred required_technical_documentation/1, gloss('technical documentation a provider must draw up for a high-risk AI system'), source('celex:32024R1689/oj#anx_4').
:- pred must_contain/2, gloss('document must contain specified information'), source('celex:32024R1689/oj#anx_4').
:- pred general_description/1, gloss('general description of an AI system'), source('celex:32024R1689/oj#anx_4').
:- pred detailed_description_elements_and_development/1, gloss('detailed description of AI system elements and development process'), source('celex:32024R1689/oj#anx_4').
:- pred monitoring_functioning_and_control/1, gloss('information about monitoring, functioning and control of AI system'), source('celex:32024R1689/oj#anx_4').
:- pred appropriateness_of_performance_metrics/1, gloss('description of appropriateness of performance metrics'), source('celex:32024R1689/oj#anx_4').
:- pred risk_management_system_description/1, gloss('detailed description of risk management system'), source('celex:32024R1689/oj#anx_4').
:- pred lifecycle_changes_description/1, gloss('description of relevant changes through lifecycle'), source('celex:32024R1689/oj#anx_4').
:- pred harmonised_standards_applied/1, gloss('list of harmonised standards applied'), source('celex:32024R1689/oj#anx_4').
:- pred eu_declaration_of_conformity_copy/1, gloss('copy of EU declaration of conformity'), source('celex:32024R1689/oj#anx_4').
:- pred post_market_evaluation_system_description/1, gloss('description of system to evaluate performance in post-market phase'), source('celex:32024R1689/oj#anx_4').
:- pred intended_purpose_description/1, gloss('description of intended purpose, provider name and version'), source('celex:32024R1689/oj#anx_4').
:- pred interaction_with_external_systems/1, gloss('how AI system interacts with external hardware or software'), source('celex:32024R1689/oj#anx_4').
:- pred software_firmware_versions/1, gloss('versions of relevant software or firmware and update requirements'), source('celex:32024R1689/oj#anx_4').
:- pred forms_of_marketing_and_service/1, gloss('forms in which AI system is placed on market or put into service'), source('celex:32024R1689/oj#anx_4').
:- pred intended_hardware_description/1, gloss('description of hardware on which AI system is intended to run'), source('celex:32024R1689/oj#anx_4').
:- pred product_component_features/1, gloss('photographs or illustrations of product external features, marking and internal layout'), source('celex:32024R1689/oj#anx_4').
:- pred deployer_user_interface_description/1, gloss('basic description of user-interface provided to deployer'), source('celex:32024R1689/oj#anx_4').
:- pred deployer_instructions_for_use/1, gloss('instructions for use for the deployer'), source('celex:32024R1689/oj#anx_4').
:- pred development_methods_and_steps/1, gloss('methods and steps performed for development including pre-trained systems or third party tools'), source('celex:32024R1689/oj#anx_4').
:- pred design_specifications/1, gloss('design specifications including logic, algorithms, key choices, rationale, assumptions, classification, optimisation, parameters, expected output and quality, trade-off decisions'), source('celex:32024R1689/oj#anx_4').
:- pred system_architecture_description/1, gloss('description of system architecture and computational resources'), source('celex:32024R1689/oj#anx_4').
:- pred data_requirements_description/1, gloss('data requirements including datasheets, training methodologies, training data sets, provenance, scope, characteristics, obtaining, selection, labelling, cleaning'), source('celex:32024R1689/oj#anx_4').
:- pred human_oversight_measures_assessment/1, gloss('assessment of human oversight measures and technical measures for output interpretation'), source('celex:32024R1689/oj#anx_4').
:- pred predetermined_changes_description/1, gloss('detailed description of pre-determined changes and technical solutions for continuous compliance'), source('celex:32024R1689/oj#anx_4').
:- pred validation_and_testing_procedures/1, gloss('validation and testing procedures, data characteristics, metrics, discriminatory impacts, test logs and reports'), source('celex:32024R1689/oj#anx_4').
:- pred cybersecurity_measures_description/1, gloss('cybersecurity measures put in place'), source('celex:32024R1689/oj#anx_4').
:- pred capabilities_and_limitations/1, gloss('capabilities and limitations in performance including accuracy degrees and expected level'), source('celex:32024R1689/oj#anx_4').
:- pred foreseeable_unintended_outcomes_and_risks/1, gloss('foreseeable unintended outcomes and sources of risks to health, safety, fundamental rights and discrimination'), source('celex:32024R1689/oj#anx_4').
:- pred human_oversight_measures_technical/1, gloss('human oversight measures and technical measures to facilitate output interpretation'), source('celex:32024R1689/oj#anx_4').
:- pred input_data_specifications/1, gloss('specifications on input data'), source('celex:32024R1689/oj#anx_4').

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
