% unit       : celex:32024R1689/oj#anx_11
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : gpt-oss:120b-cloud
% prompt sha : 7b907737b4b067eeb53f5a3b2365bbc7f529df3fede1bc639fd6ae1b76457088
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_technical_documentation/2, gloss('technical documentation that must be provided by providers of general‑purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred required_general_description/2, gloss('general description of the general‑purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred required_tasks/2, gloss('tasks the model is intended to perform'), source('celex:32024R1689/oj#anx_11').
:- pred required_acceptable_use_policies/2, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_release_date/2, gloss('date of release of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_architecture/2, gloss('architecture and number of parameters of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_modality/2, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_11').
:- pred required_licence/2, gloss('licence of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_technical_means/2, gloss('technical means required for integration of the model in AI systems'), source('celex:32024R1689/oj#anx_11').
:- pred required_design_specifications/2, gloss('design specifications of the model and training process'), source('celex:32024R1689/oj#anx_11').
:- pred required_training_data_information/2, gloss('information on data used for training, testing and validation'), source('celex:32024R1689/oj#anx_11').
:- pred required_computational_resources/2, gloss('computational resources used to train the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_energy_consumption/2, gloss('energy consumption of the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_evaluation_strategies/2, gloss('evaluation strategies and results for the model'), source('celex:32024R1689/oj#anx_11').
:- pred required_adversarial_testing_measures/2, gloss('measures for internal and/or external adversarial testing'), source('celex:32024R1689/oj#anx_11').
:- pred required_system_architecture_description/2, gloss('description of the system architecture and component integration'), source('celex:32024R1689/oj#anx_11').

required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

required_general_description(P, M) :-
    required_technical_documentation(P, M).

required_tasks(P, M) :-
    required_technical_documentation(P, M).

required_acceptable_use_policies(P, M) :-
    required_technical_documentation(P, M).

required_release_date(P, M) :-
    required_technical_documentation(P, M).

required_architecture(P, M) :-
    required_technical_documentation(P, M).

required_modality(P, M) :-
    required_technical_documentation(P, M).

required_licence(P, M) :-
    required_technical_documentation(P, M).

required_technical_means(P, M) :-
    required_technical_documentation(P, M).

required_design_specifications(P, M) :-
    required_technical_documentation(P, M).

required_training_data_information(P, M) :-
    required_technical_documentation(P, M).

required_computational_resources(P, M) :-
    required_technical_documentation(P, M).

required_energy_consumption(P, M) :-
    required_technical_documentation(P, M).

required_evaluation_strategies(P, M) :-
    required_technical_documentation(P, M).

required_adversarial_testing_measures(P, M) :-
    required_technical_documentation(P, M).

required_system_architecture_description(P, M) :-
    required_technical_documentation(P, M).

provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(required_general_description/2, 'celex:32024R1689/oj#anx_11').
provenance(required_tasks/2, 'celex:32024R1689/oj#anx_11').
provenance(required_acceptable_use_policies/2, 'celex:32024R1689/oj#anx_11').
provenance(required_release_date/2, 'celex:32024R1689/oj#anx_11').
provenance(required_architecture/2, 'celex:32024R1689/oj#anx_11').
provenance(required_modality/2, 'celex:32024R1689/oj#anx_11').
provenance(required_licence/2, 'celex:32024R1689/oj#anx_11').
provenance(required_technical_means/2, 'celex:32024R1689/oj#anx_11').
provenance(required_design_specifications/2, 'celex:32024R1689/oj#anx_11').
provenance(required_training_data_information/2, 'celex:32024R1689/oj#anx_11').
provenance(required_computational_resources/2, 'celex:32024R1689/oj#anx_11').
provenance(required_energy_consumption/2, 'celex:32024R1689/oj#anx_11').
provenance(required_evaluation_strategies/2, 'celex:32024R1689/oj#anx_11').
provenance(required_adversarial_testing_measures/2, 'celex:32024R1689/oj#anx_11').
provenance(required_system_architecture_description/2, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
