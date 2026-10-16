% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 94b5c93a1de3f01efc048cf268775051214b5b6d344ace8c2aaa17c047ae9877
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred must_provide/2, gloss('who is obliged to provide, what to provide'), source('reconciled').
:- pred must_provide/3, gloss('who must provide what information to whom'), source('reconciled').
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('63').
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general-purpose AI model'), source('reconciled').
:- pred downstream_provider/1, gloss('provider integrating an AI model into a system'), source('68').
:- pred general_purpose_ai_system/1, gloss('AI system based on a general-purpose AI model'), source('66').

:- pred transparency_information_general_purpose_ai_model/1, gloss('transparency information for general-purpose AI model as required by Annex XII'), source('celex:32024R1689/oj#anx_12').
:- pred general_description_of_model/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred description_of_model_elements_and_development/1, gloss('description of elements of the model and process for its development'), source('celex:32024R1689/oj#anx_12').
:- pred tasks_intended_to_perform/1, gloss('tasks that the model is intended to perform'), source('celex:32024R1689/oj#anx_12').
:- pred type_and_nature_of_ai_systems_integratable/1, gloss('type and nature of AI systems into which the model can be integrated'), source('celex:32024R1689/oj#anx_12').
:- pred acceptable_use_policies/1, gloss('acceptable use policies applicable to the model'), source('celex:32024R1689/oj#anx_12').
:- pred date_of_release_and_methods_of_distribution/1, gloss('date of release and methods of distribution'), source('celex:32024R1689/oj#anx_12').
:- pred model_interaction_with_external_hardware_software/1, gloss('how the model interacts or can be used to interact with hardware or software not part of the model itself'), source('celex:32024R1689/oj#anx_12').
:- pred versions_of_relevant_software/1, gloss('versions of relevant software related to the use of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred architecture_and_number_of_parameters/1, gloss('architecture and number of parameters of the model'), source('celex:32024R1689/oj#anx_12').
:- pred modality_and_format_of_inputs_outputs/1, gloss('modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred licence_for_model/1, gloss('licence for the model'), source('celex:32024R1689/oj#anx_12').
:- pred technical_means_for_integration/1, gloss('technical means required for the model to be integrated into AI systems'), source('celex:32024R1689/oj#anx_12').
:- pred modality_format_and_maximum_size_of_inputs_outputs/1, gloss('modality, format and maximum size of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred information_on_training_testing_validation_data/1, gloss('information on data used for training, testing and validation including type, provenance and curation methodologies'), source('celex:32024R1689/oj#anx_12').

must_provide(Provider, transparency_information_general_purpose_ai_model(Info)) :-
    general_purpose_ai_model_provider(Provider),
    transparency_information_general_purpose_ai_model(Info).

must_provide(Provider, transparency_information_general_purpose_ai_model(Info), DownstreamProvider) :-
    general_purpose_ai_model_provider(Provider),
    downstream_provider(DownstreamProvider),
    transparency_information_general_purpose_ai_model(Info).

transparency_information_general_purpose_ai_model(Info) :-
    general_description_of_model(Info),
    description_of_model_elements_and_development(Info).

general_description_of_model(Info) :-
    tasks_intended_to_perform(Info),
    type_and_nature_of_ai_systems_integratable(Info),
    acceptable_use_policies(Info),
    date_of_release_and_methods_of_distribution(Info),
    model_interaction_with_external_hardware_software(Info),
    versions_of_relevant_software(Info),
    architecture_and_number_of_parameters(Info),
    modality_and_format_of_inputs_outputs(Info),
    licence_for_model(Info).

description_of_model_elements_and_development(Info) :-
    technical_means_for_integration(Info),
    modality_format_and_maximum_size_of_inputs_outputs(Info),
    information_on_training_testing_validation_data(Info).

provenance(must_provide/2, 'celex:32024R1689/oj#anx_12').
provenance(must_provide/3, 'celex:32024R1689/oj#anx_12').
provenance(transparency_information_general_purpose_ai_model/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(description_of_model_elements_and_development/1, 'celex:32024R1689/oj#anx_12').
provenance(tasks_intended_to_perform/1, 'celex:32024R1689/oj#anx_12').
provenance(type_and_nature_of_ai_systems_integratable/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(date_of_release_and_methods_of_distribution/1, 'celex:32024R1689/oj#anx_12').
provenance(model_interaction_with_external_hardware_software/1, 'celex:32024R1689/oj#anx_12').
provenance(versions_of_relevant_software/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture_and_number_of_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(modality_and_format_of_inputs_outputs/1, 'celex:32024R1689/oj#anx_12').
provenance(licence_for_model/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(modality_format_and_maximum_size_of_inputs_outputs/1, 'celex:32024R1689/oj#anx_12').
provenance(information_on_training_testing_validation_data/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
