% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 98fd30160bc6a248343eb8547c7478817c9a23d7da8e1639b84116d1307c0b7c
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred must_include_technical_documentation/2, gloss('provider of general-purpose AI model must include specified information in technical documentation'), source('celex:32024R1689/oj#anx_11').
:- pred general_description_of_model/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred detailed_description_of_model_elements/1, gloss('detailed description of the elements of the model and development process'), source('celex:32024R1689/oj#anx_11').
:- pred additional_information_systemic_risk/1, gloss('additional information required for providers of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred tasks_intended_to_perform/1, gloss('tasks that the model is intended to perform'), source('celex:32024R1689/oj#anx_11').
:- pred type_and_nature_of_ai_systems_integratable/1, gloss('type and nature of AI systems in which the model can be integrated'), source('celex:32024R1689/oj#anx_11').
:- pred acceptable_use_policies_applicable/1, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_11').
:- pred date_of_release_and_methods_of_distribution/1, gloss('date of release and methods of distribution'), source('celex:32024R1689/oj#anx_11').
:- pred architecture_and_number_of_parameters/1, gloss('architecture and number of parameters of the model'), source('celex:32024R1689/oj#anx_11').
:- pred modality_and_format_of_inputs_and_outputs/1, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_11').
:- pred licence_of_model/1, gloss('licence of the model'), source('celex:32024R1689/oj#anx_11').
:- pred technical_means_for_integration/1, gloss('technical means required for the model to be integrated in AI systems'), source('celex:32024R1689/oj#anx_11').
:- pred design_specifications_and_training_process/1, gloss('design specifications of the model and training process including methodologies, techniques, key design choices, rationale, assumptions, optimisation target and parameter relevance'), source('celex:32024R1689/oj#anx_11').
:- pred information_on_data_used_for_training_testing_validation/1, gloss('information on data used for training, testing and validation including type, provenance, curation methodologies, number of data points, scope, main characteristics, how data was obtained and selected, measures to detect unsuitability of data sources and methods to detect identifiable biases'), source('celex:32024R1689/oj#anx_11').
:- pred computational_resources_used_to_train/1, gloss('computational resources used to train the model including number of floating point operations, training time and other relevant details'), source('celex:32024R1689/oj#anx_11').
:- pred known_or_estimated_energy_consumption/1, gloss('known or estimated energy consumption of the model'), source('celex:32024R1689/oj#anx_11').
:- pred energy_consumption_based_on_computational_resources/1, gloss('energy consumption based on information about computational resources used when unknown'), source('celex:32024R1689/oj#anx_11').
:- pred evaluation_strategies_with_results/1, gloss('detailed description of evaluation strategies including evaluation results, criteria, metrics and methodology on identification of limitations'), source('celex:32024R1689/oj#anx_11').
:- pred measures_for_adversarial_testing/1, gloss('detailed description of measures for internal and/or external adversarial testing, model adaptations, alignment and fine-tuning'), source('celex:32024R1689/oj#anx_11').
:- pred system_architecture_description/1, gloss('detailed description of system architecture explaining how software components build or feed into each other and integrate into overall processing'), source('celex:32024R1689/oj#anx_11').

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
