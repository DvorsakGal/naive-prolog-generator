% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 71243c2f3f3abbee366f34a9500eb0ed709f983d1a0b30f02b93937acbad2fd7
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred technical_documentation_gpai/1, gloss('technical documentation for providers of general-purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred section_1_information/1, gloss('information to be provided by all providers of general-purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred section_2_information/1, gloss('additional information to be provided by providers of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').
:- pred general_description/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred detailed_description_elements/1, gloss('detailed description of elements of the model and development process'), source('celex:32024R1689/oj#anx_11').
:- pred evaluation_strategies/1, gloss('detailed description of evaluation strategies'), source('celex:32024R1689/oj#anx_11').
:- pred adversarial_testing_measures/1, gloss('measures for adversarial testing, model adaptations, alignment and fine-tuning'), source('celex:32024R1689/oj#anx_11').
:- pred system_architecture_description/1, gloss('detailed description of system architecture'), source('celex:32024R1689/oj#anx_11').

technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    section_1_information(M).

technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    section_1_information(M),
    section_2_information(M).

section_1_information(M) :-
    general_purpose_ai_model(M),
    general_description(M),
    detailed_description_elements(M).

general_description(M) :-
    general_purpose_ai_model(M),
    intended_tasks(M),
    acceptable_use_policies(M),
    release_date_and_distribution(M),
    architecture_and_parameters(M),
    input_output_modality(M),
    licence(M).

detailed_description_elements(M) :-
    general_purpose_ai_model(M),
    integration_technical_means(M),
    design_specifications(M),
    training_data_information(M),
    computational_resources(M),
    energy_consumption(M).

section_2_information(M) :-
    general_purpose_ai_model(M),
    systemic_risk_present(M),
    evaluation_strategies(M),
    adversarial_testing_measures(M),
    system_architecture_description(M).

energy_consumption(M) :-
    general_purpose_ai_model(M),
    known_energy_consumption(M).

energy_consumption(M) :-
    general_purpose_ai_model(M),
    \+ known_energy_consumption(M),
    computational_resources(M).

provenance(technical_documentation_gpai/1, 'celex:32024R1689/oj#anx_11').
provenance(section_1_information/1, 'celex:32024R1689/oj#anx_11').
provenance(section_2_information/1, 'celex:32024R1689/oj#anx_11').
provenance(general_description/1, 'celex:32024R1689/oj#anx_11').
provenance(detailed_description_elements/1, 'celex:32024R1689/oj#anx_11').
provenance(evaluation_strategies/1, 'celex:32024R1689/oj#anx_11').
provenance(adversarial_testing_measures/1, 'celex:32024R1689/oj#anx_11').
provenance(system_architecture_description/1, 'celex:32024R1689/oj#anx_11').
provenance(energy_consumption/1, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
