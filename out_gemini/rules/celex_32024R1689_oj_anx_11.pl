% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : de48762c81fe05c5b3180ead22ed53a2e57ee28107f99bcc9373ce4958f66609
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
:- pred technical_documentation_contains/2, gloss('technical documentation contains specified element'), source('celex:32024R1689/oj#anx_11').
:- pred required_technical_documentation/2, gloss('required technical documentation content for a general-purpose AI model'), source('celex:32024R1689/oj#anx_11').
:- pred systemic_risk_model/1, gloss('general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#anx_11').

% Section 1: Information to be provided by all providers of general-purpose AI models
required_technical_documentation(M, general_description(tasks_and_integration)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(acceptable_use_policies)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(release_date_and_distribution)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(architecture_and_parameters)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(modality_and_format_inputs_outputs)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, general_description(licence)) :-
    general_purpose_ai_model(M).

required_technical_documentation(M, development_process(integration_technical_means)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(design_specifications_and_training)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(data_training_testing_validation)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(computational_resources_training)) :-
    general_purpose_ai_model(M).
required_technical_documentation(M, development_process(energy_consumption)) :-
    general_purpose_ai_model(M).

% Section 2: Additional information for general-purpose AI models with systemic risk
required_technical_documentation(M, evaluation_strategies) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).
required_technical_documentation(M, adversarial_testing_and_adaptations) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).
required_technical_documentation(M, system_architecture_software_integration) :-
    general_purpose_ai_model(M),
    systemic_risk_model(M).

provenance(required_technical_documentation/2, 'celex:32024R1689/oj#anx_11').

references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
