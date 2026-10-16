% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : d2b2067a1e0e6965239d818426cf525853624546bbdd635c632c34d13d298251
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred model_of/2, gloss('AI model associated with a provider or system'), source('celex:32024R1689/oj#anx_11').
:- pred contains_information/2, gloss('document contains specified information'), source('celex:32024R1689/oj#anx_11').
:- pred model_with_systemic_risk/1, gloss('general-purpose AI model presenting systemic risk'), source('celex:32024R1689/oj#anx_11').

% Section 1: All providers of general-purpose AI models must provide technical documentation
% containing general description and detailed developmental elements.
must_comply(Provider, technical_documentation(Model, section_1)) :-
    provider_of_general_purpose_ai_model(Provider),
    model_of(Provider, Model),
    general_purpose_ai_model(Model).

% Required elements under Section 1
required_technical_documentation(technical_documentation(Model, section_1)) :-
    general_purpose_ai_model(Model),
    contains_information(Model, general_description),
    contains_information(Model, integration_tasks_and_systems),
    contains_information(Model, acceptable_use_policies),
    contains_information(Model, release_date_and_distribution),
    contains_information(Model, architecture_and_parameters),
    contains_information(Model, modality_and_format_inputs_outputs),
    contains_information(Model, licence),
    contains_information(Model, integration_technical_means),
    contains_information(Model, design_specifications_and_training),
    contains_information(Model, training_testing_validation_data),
    contains_information(Model, computational_resources),
    contains_information(Model, energy_consumption).

% Section 2: Additional information for models with systemic risk
must_comply(Provider, technical_documentation(Model, section_2)) :-
    provider_of_general_purpose_ai_model(Provider),
    model_of(Provider, Model),
    general_purpose_ai_model(Model),
    model_with_systemic_risk(Model).

% Required elements under Section 2
required_technical_documentation(technical_documentation(Model, section_2)) :-
    general_purpose_ai_model(Model),
    model_with_systemic_risk(Model),
    contains_information(Model, evaluation_strategies_and_results),
    contains_information(Model, adversarial_testing_measures),
    contains_information(Model, system_architecture_explanation).

% Provenance facts
provenance(must_comply/2, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#anx_11').
provenance(model_of/2, 'celex:32024R1689/oj#anx_11').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_11').
provenance(model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').

% Ground references
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
