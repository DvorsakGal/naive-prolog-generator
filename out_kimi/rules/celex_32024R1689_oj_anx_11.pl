% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : aa12ff81aa1bd4cf041e51767e6da97b3f367284ade401c2d3abcd6b7212aa0c
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred required_technical_documentation/1, gloss('technical documentation that providers of general-purpose AI models must provide'), source('celex:32024R1689/oj#anx_11').
:- pred required_technical_documentation_section_1/1, gloss('information to be provided by all providers of general-purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred required_technical_documentation_section_2/1, gloss('additional information to be provided by providers of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred general_description/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred intended_tasks/1, gloss('tasks that the model is intended to perform'), source('celex:32024R1689/oj#anx_11').
:- pred acceptable_use_policies/1, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_11').
:- pred release_date_and_distribution/1, gloss('date of release and methods of distribution'), source('celex:32024R1689/oj#anx_11').
:- pred architecture_and_parameters/1, gloss('architecture and number of parameters'), source('celex:32024R1689/oj#anx_11').
:- pred input_output_modality/1, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_11').
:- pred model_licence/1, gloss('licence of the model'), source('celex:32024R1689/oj#anx_11').
:- pred development_description/1, gloss('detailed description of elements and development process'), source('celex:32024R1689/oj#anx_11').
:- pred technical_integration_means/1, gloss('technical means required for integration in AI systems'), source('celex:32024R1689/oj#anx_11').
:- pred design_specifications/1, gloss('design specifications of the model and training process'), source('celex:32024R1689/oj#anx_11').
:- pred training_data_information/1, gloss('information on data used for training, testing and validation'), source('celex:32024R1689/oj#anx_11').
:- pred computational_resources/1, gloss('computational resources used to train the model'), source('celex:32024R1689/oj#anx_11').
:- pred energy_consumption/1, gloss('known or estimated energy consumption of the model'), source('celex:32024R1689/oj#anx_11').
:- pred evaluation_strategies/1, gloss('evaluation strategies including results'), source('celex:32024R1689/oj#anx_11').
:- pred adversarial_testing_measures/1, gloss('measures for adversarial testing and model adaptations'), source('celex:32024R1689/oj#anx_11').
:- pred system_architecture_description/1, gloss('detailed description of system architecture'), source('celex:32024R1689/oj#anx_11').

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
