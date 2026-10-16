% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 3001ab2b396f8af1026ada01504c228f389841e416ba6eb298ce63c4b6765641
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('63').
:- pred systemic_risk_classification_applies/1, gloss('general-purpose AI model classified as having systemic risk'), source('reconciled').
:- pred technical_documentation_for_gpai_model/1, gloss('technical documentation for providers of general-purpose AI models'), source('celex:32024R1689/oj#anx_11').
:- pred technical_documentation_for_gpai_model_with_systemic_risk/1, gloss('additional technical documentation for providers of general-purpose AI models with systemic risk'), source('celex:32024R1689/oj#anx_11').

% Section 1: Information to be provided by all providers of general-purpose AI models
technical_documentation_for_gpai_model(Doc) :-
    general_purpose_ai_model(Model),
    documentation_contains_general_description(Doc, Model),
    documentation_contains_detailed_description(Doc, Model).

documentation_contains_general_description(Doc, Model) :-
    documentation_contains(Doc, general_description(Model, tasks(Tasks), acceptable_use_policies(Policies), release_date(Date), distribution_methods(Methods), architecture(Arch), parameters(Params), modality(Modality), input_format(InputFmt), output_format(OutputFmt), licence(Licence))).

documentation_contains_detailed_description(Doc, Model) :-
    documentation_contains(Doc, detailed_description(Model, technical_means(Means), design_specifications(Specs), data_information(DataInfo), computational_resources(Resources), energy_consumption(Energy))).

% Section 2: Additional information for providers of general-purpose AI models with systemic risk
technical_documentation_for_gpai_model_with_systemic_risk(Doc) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    documentation_contains_evaluation_strategies(Doc, Model),
    documentation_contains_adversarial_testing(Doc, Model),
    documentation_contains_system_architecture(Doc, Model).

documentation_contains_evaluation_strategies(Doc, Model) :-
    documentation_contains(Doc, evaluation_strategies(Model, evaluation_results(Results), evaluation_criteria(Criteria), metrics(Metrics), limitation_identification_methodology(Methodology))).

documentation_contains_adversarial_testing(Doc, Model) :-
    documentation_contains(Doc, adversarial_testing_measures(Model, internal_testing(Internal), external_testing(External), model_adaptations(Adaptations))).

documentation_contains_system_architecture(Doc, Model) :-
    documentation_contains(Doc, system_architecture(Model, software_components(Components), integration_description(Integration))).

% Helper predicate
documentation_contains(Doc, Content) :-
    % Content is part of the technical documentation Doc
    true.

% Provenance
provenance(technical_documentation_for_gpai_model/1, 'celex:32024R1689/oj#anx_11').
provenance(technical_documentation_for_gpai_model_with_systemic_risk/1, 'celex:32024R1689/oj#anx_11').

% References
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
