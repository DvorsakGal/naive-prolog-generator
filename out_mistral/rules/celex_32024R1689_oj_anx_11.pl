% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3061e43781bebf38b932e44e4adbf131e046709b991dcaadb6f08189ea2cd027
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred technical_documentation/1, gloss('technical documentation for general-purpose AI models as required by Annex XI'), source('celex:32024R1689/oj#anx_11').
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred must_provide_technical_documentation/2, gloss('provider must provide technical documentation for a general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred documentation_contains_general_description/1, gloss('technical documentation contains general description of the model'), source('celex:32024R1689/oj#anx_11').
:- pred documentation_contains_development_description/1, gloss('technical documentation contains detailed description of development process'), source('celex:32024R1689/oj#anx_11').
:- pred documentation_contains_evaluation_strategies/1, gloss('technical documentation contains evaluation strategies for systemic risk models'), source('celex:32024R1689/oj#anx_11').
:- pred documentation_contains_adversarial_testing_description/1, gloss('technical documentation contains description of adversarial testing measures'), source('celex:32024R1689/oj#anx_11').
:- pred documentation_contains_system_architecture_description/1, gloss('technical documentation contains description of system architecture'), source('celex:32024R1689/oj#anx_11').
:- pred general_description_element/1, gloss('element of general description of general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred development_description_element/1, gloss('element of detailed description of model development'), source('celex:32024R1689/oj#anx_11').
:- pred evaluation_strategy_element/1, gloss('element of evaluation strategies description'), source('celex:32024R1689/oj#anx_11').
:- pred adversarial_testing_element/1, gloss('element of adversarial testing measures description'), source('celex:32024R1689/oj#anx_11').
:- pred system_architecture_element/1, gloss('element of system architecture description'), source('celex:32024R1689/oj#anx_11').

general_purpose_ai_model_provider(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_model(P, M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_provide_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    provides_model(P, M).

technical_documentation(D) :-
    documentation_contains_general_description(D),
    documentation_contains_development_description(D).

technical_documentation(D) :-
    documentation_contains_general_description(D),
    documentation_contains_development_description(D),
    documentation_contains_evaluation_strategies(D),
    documentation_contains_adversarial_testing_description(D),
    documentation_contains_system_architecture_description(D).

documentation_contains_general_description(D) :-
    general_description_element(tasks_intended(D)),
    general_description_element(integration_types(D)),
    general_description_element(acceptable_use_policies(D)),
    general_description_element(release_date_and_distribution_methods(D)),
    general_description_element(architecture_and_parameters(D)),
    general_description_element(input_output_modality_and_format(D)),
    general_description_element(licence(D)).

documentation_contains_development_description(D) :-
    development_description_element(technical_means_for_integration(D)),
    development_description_element(design_specifications_and_training_process(D)),
    development_description_element(training_data_information(D)),
    development_description_element(computational_resources_used(D)),
    development_description_element(energy_consumption(D)).

documentation_contains_evaluation_strategies(D) :-
    evaluation_strategy_element(evaluation_strategies_and_results(D)),
    evaluation_strategy_element(evaluation_criteria_metrics_and_limitations_methodology(D)).

documentation_contains_adversarial_testing_description(D) :-
    adversarial_testing_element(internal_external_adversarial_testing_measures(D)),
    adversarial_testing_element(model_adaptations_alignment_fine_tuning(D)).

documentation_contains_system_architecture_description(D) :-
    system_architecture_element(software_components_integration(D)).

general_description_element(tasks_intended(_D)).
general_description_element(integration_types(_D)).
general_description_element(acceptable_use_policies(_D)).
general_description_element(release_date_and_distribution_methods(_D)).
general_description_element(architecture_and_parameters(_D)).
general_description_element(input_output_modality_and_format(_D)).
general_description_element(licence(_D)).

development_description_element(technical_means_for_integration(_D)).
development_description_element(design_specifications_and_training_process(_D)).
development_description_element(training_data_information(_D)).
development_description_element(computational_resources_used(_D)).
development_description_element(energy_consumption(_D)).

evaluation_strategy_element(evaluation_strategies_and_results(_D)).
evaluation_strategy_element(evaluation_criteria_metrics_and_limitations_methodology(_D)).

adversarial_testing_element(internal_external_adversarial_testing_measures(_D)).
adversarial_testing_element(model_adaptations_alignment_fine_tuning(_D)).

system_architecture_element(software_components_integration(_D)).

provenance(technical_documentation/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#anx_11').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').
provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_general_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_development_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_evaluation_strategies/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_adversarial_testing_description/1, 'celex:32024R1689/oj#anx_11').
provenance(documentation_contains_system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
provenance(general_description_element/1, 'celex:32024R1689/oj#anx_11').
provenance(development_description_element/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategy_element/1, 'celex:32024R1689/oj#anx_11').
provenance(adversarial_testing_element/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_element/1, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
