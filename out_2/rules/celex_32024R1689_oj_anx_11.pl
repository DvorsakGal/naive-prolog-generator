% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e18ea513b7fbe04d74044bd615e6df26a3159cedf6223ef6d8e72eef760efe84
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred provides/2, gloss('provider provides AI model'), source('celex:32024R1689/oj#anx_11').

:- pred required_general_description_tasks/1, gloss('tasks the model is intended to perform and integration contexts'), source('celex:32024R1689/oj#anx_11').
:- pred required_acceptable_use_policies/1, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_release_date_and_distribution/1, gloss('date of release and methods of distribution of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_architecture_and_parameters/1, gloss('architecture and number of parameters of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_modality_and_format/1, gloss('modality and format of inputs and outputs of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_licence/1, gloss('licence governing the model'), source('celex:32024R1689/oj#anx_11').

:- pred required_technical_means_for_integration/1, gloss('technical means required for integration of the model in AI systems'), source('celex:32024R1689/oj#anx_11').
:- pred required_design_specifications/1, gloss('design specifications of the model and training process'), source('celex:32024R1689/oj#anx_11').
:- pred required_data_information/1, gloss('information on data used for training, testing and validation'), source('celex:32024R1689/oj#anx_11').
:- pred required_computational_resources/1, gloss('computational resources used to train the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_energy_consumption/1, gloss('known or estimated energy consumption of the model'), source('celex:32024R1689/oj#anx_11').

:- pred required_evaluation_strategies/1, gloss('evaluation strategies, results, criteria, metrics and limitation identification methodology'), source('celex:32024R1689/oj#anx_11').
:- pred required_adversarial_testing_measures/1, gloss('measures for internal and external adversarial testing, model adaptations, alignment and fine‑tuning'), source('celex:32024R1689/oj#anx_11').
:- pred required_system_architecture_description/1, gloss('description of system architecture and component integration'), source('celex:32024R1689/oj#anx_11').

must_provide(Provider, required_general_description_tasks(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_acceptable_use_policies(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_release_date_and_distribution(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_architecture_and_parameters(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_modality_and_format(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_licence(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_technical_means_for_integration(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_design_specifications(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_data_information(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_computational_resources(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_energy_consumption(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model).

must_provide(Provider, required_evaluation_strategies(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

must_provide(Provider, required_adversarial_testing_measures(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

must_provide(Provider, required_system_architecture_description(Model)) :-
    provides(Provider, Model),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

provenance(must_provide/2, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
