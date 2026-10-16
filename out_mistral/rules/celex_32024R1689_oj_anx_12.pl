% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 02aa286f6ee9b223931f474d2b172e44b3181b5050d9d9e6f4ec3db7a0e3730f
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred must_provide_transparency_information/2, gloss('downstream provider receives required transparency information from general-purpose AI model provider'), source('celex:32024R1689/oj#anx_12').
:- pred transparency_information_contains/2, gloss('transparency information document contains a required element'), source('celex:32024R1689/oj#anx_12').
:- pred general_description_of_model/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred development_process_description/1, gloss('description of model elements and development process'), source('celex:32024R1689/oj#anx_12').
:- pred model_tasks_and_integration/1, gloss('tasks the model is intended to perform and AI systems it can be integrated into'), source('celex:32024R1689/oj#anx_12').
:- pred acceptable_use_policies/1, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_12').
:- pred release_date_and_distribution/1, gloss('date of release and methods of distribution'), source('celex:32024R1689/oj#anx_12').
:- pred hardware_software_interaction/1, gloss('how the model interacts with external hardware or software'), source('celex:32024R1689/oj#anx_12').
:- pred relevant_software_versions/1, gloss('versions of relevant software related to model use'), source('celex:32024R1689/oj#anx_12').
:- pred model_architecture_and_parameters/1, gloss('architecture and number of parameters of the model'), source('celex:32024R1689/oj#anx_12').
:- pred input_output_modality_and_format/1, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred model_licence/1, gloss('licence for the model'), source('celex:32024R1689/oj#anx_12').
:- pred technical_means_for_integration/1, gloss('technical means required for integration into AI systems'), source('celex:32024R1689/oj#anx_12').
:- pred input_output_maximum_size/1, gloss('modality, format and maximum size of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred training_testing_validation_data_info/1, gloss('information on data used for training, testing and validation'), source('celex:32024R1689/oj#anx_12').

must_provide_transparency_information(Provider, DownstreamProvider) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(DownstreamProvider),
    integrates_model_into_ai_system(DownstreamProvider, Model).

integrates_model_into_ai_system(DownstreamProvider, Model) :-
    downstream_provider(DownstreamProvider),
    general_purpose_ai_model(Model).

transparency_information_contains(Info, general_description_of_model(Description)) :-
    general_description_of_model(Description),
    transparency_information_contains(Info, model_tasks_and_integration(Description)),
    transparency_information_contains(Info, acceptable_use_policies(Description)),
    transparency_information_contains(Info, release_date_and_distribution(Description)),
    transparency_information_contains(Info, hardware_software_interaction(Description)),
    transparency_information_contains(Info, relevant_software_versions(Description)),
    transparency_information_contains(Info, model_architecture_and_parameters(Description)),
    transparency_information_contains(Info, input_output_modality_and_format(Description)),
    transparency_information_contains(Info, model_licence(Description)).

transparency_information_contains(Info, development_process_description(Description)) :-
    development_process_description(Description),
    transparency_information_contains(Info, technical_means_for_integration(Description)),
    transparency_information_contains(Info, input_output_maximum_size(Description)),
    transparency_information_contains(Info, training_testing_validation_data_info(Description)).

provenance(must_provide_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(transparency_information_contains/2, 'celex:32024R1689/oj#anx_12').
provenance(general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(development_process_description/1, 'celex:32024R1689/oj#anx_12').
provenance(model_tasks_and_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date_and_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(model_architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_modality_and_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(input_output_maximum_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_testing_validation_data_info/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
