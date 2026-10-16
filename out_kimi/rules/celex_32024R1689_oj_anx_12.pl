% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0025f1d371bc72a54ce695f99133e423cd1bb318e906483beefcbace37dc4bfa
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred required_technical_documentation_for_downstream_provider/1, gloss('technical documentation that providers of general-purpose AI models must provide to downstream providers'), source('celex:32024R1689/oj#anx_12').
:- pred must_provide_technical_documentation/2, gloss('obligation on provider to give technical documentation to downstream provider'), source('celex:32024R1689/oj#anx_12').
:- pred general_description/2, gloss('general description of a general-purpose AI model for technical documentation'), source('celex:32024R1689/oj#anx_12').
:- pred development_description/2, gloss('description of model elements and development process for technical documentation'), source('celex:32024R1689/oj#anx_12').
:- pred intended_tasks/1, gloss('tasks that a general-purpose AI model is intended to perform'), source('celex:32024R1689/oj#anx_12').
:- pred integration_system_types/1, gloss('types and nature of AI systems into which a model can be integrated'), source('celex:32024R1689/oj#anx_12').
:- pred acceptable_use_policies/1, gloss('acceptable use policies applicable to a general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred release_date_and_distribution/1, gloss('date of release and methods of distribution for a model'), source('celex:32024R1689/oj#anx_12').
:- pred hardware_software_interaction/1, gloss('how a model interacts with external hardware or software'), source('celex:32024R1689/oj#anx_12').
:- pred relevant_software_versions/1, gloss('versions of software related to model use'), source('celex:32024R1689/oj#anx_12').
:- pred architecture_and_parameters/1, gloss('architecture and number of parameters of a model'), source('celex:32024R1689/oj#anx_12').
:- pred input_output_modality_format/1, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred model_licence/1, gloss('licence for a general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred integration_technical_means/1, gloss('technical means required for model integration into AI systems'), source('celex:32024R1689/oj#anx_12').
:- pred input_output_maximum_size/1, gloss('maximum size of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred training_testing_validation_information/1, gloss('information on data used for training, testing and validation'), source('celex:32024R1689/oj#anx_12').

required_technical_documentation_for_downstream_provider(Doc) :-
    general_description(Doc, Model),
    development_description(Doc, Model),
    general_purpose_ai_model(Model).

general_description(Doc, Model) :-
    intended_tasks(Model),
    integration_system_types(Model),
    acceptable_use_policies(Model),
    release_date_and_distribution(Model),
    hardware_software_interaction(Model),
    relevant_software_versions(Model),
    architecture_and_parameters(Model),
    input_output_modality_format(Model),
    model_licence(Model),
    general_purpose_ai_model(Model).

development_description(Doc, Model) :-
    integration_technical_means(Model),
    input_output_maximum_size(Model),
    training_testing_validation_information(Model),
    general_purpose_ai_model(Model).

must_provide_technical_documentation(Provider, documentation_for_downstream_provider(Model, Downstream)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(Downstream),
    required_technical_documentation_for_downstream_provider(documentation_for_downstream_provider(Model, Downstream)).

provenance(required_technical_documentation_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(must_provide_technical_documentation/2, 'celex:32024R1689/oj#anx_12').
provenance(general_description/2, 'celex:32024R1689/oj#anx_12').
provenance(development_description/2, 'celex:32024R1689/oj#anx_12').
provenance(intended_tasks/1, 'celex:32024R1689/oj#anx_12').
provenance(integration_system_types/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date_and_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_modality_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(integration_technical_means/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_maximum_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_testing_validation_information/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
