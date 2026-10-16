% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cd34797cf00b57df9b684710885d323e02e0d3910fd9f97ae3704be3e5b5f34d
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('celex:32024R1689/oj#anx_11').
:- pred systemic_risk_model/1, gloss('general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred technical_documentation/1, gloss('documentation required under Annex XI'), source('celex:32024R1689/oj#anx_11').
:- pred must_include_in_documentation/2, gloss('provider must include information in technical documentation'), source('celex:32024R1689/oj#anx_11').
:- pred must_include_additional_in_documentation/2, gloss('provider of systemic risk model must include additional information'), source('celex:32024R1689/oj#anx_11').

systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_include_in_documentation(Provider, general_description(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, detailed_description(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, tasks_and_integration(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, acceptable_use_policies(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, release_and_distribution(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, architecture_and_parameters(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, modality_and_format(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, licence(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, technical_means_for_integration(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, design_specifications_and_training(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, data_information(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, computational_resources(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_in_documentation(Provider, energy_consumption(Model)) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_include_additional_in_documentation(Provider, evaluation_strategies(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).

must_include_additional_in_documentation(Provider, adversarial_testing_measures(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).

must_include_additional_in_documentation(Provider, system_architecture(Model)) :-
    provider(Provider),
    systemic_risk_model(Model).

provenance(systemic_risk_model/1, 'celex:32024R1689/oj#anx_11').
provenance(must_include_in_documentation/2, 'celex:32024R1689/oj#anx_11').
provenance(must_include_additional_in_documentation/2, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
