% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 649649ea56b779fed0adddf2ac803781e77293053e2b411203c5830acf885c3c
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred transparency_information/1, gloss('transparency information referred to in Annex XII'), source('celex:32024R1689/oj#anx_12').
:- pred general_description/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred development_description/1, gloss('description of elements and development process'), source('celex:32024R1689/oj#anx_12').
:- pred intended_tasks/1, gloss('tasks the model is intended to perform'), source('celex:32024R1689/oj#anx_12').
:- pred integrable_system_types/1, gloss('type and nature of AI systems into which model can be integrated'), source('celex:32024R1689/oj#anx_12').
:- pred acceptable_use_policies/1, gloss('acceptable use policies applicable'), source('celex:32024R1689/oj#anx_12').
:- pred release_date/1, gloss('date of release'), source('celex:32024R1689/oj#anx_12').
:- pred distribution_methods/1, gloss('methods of distribution'), source('celex:32024R1689/oj#anx_12').
:- pred interaction_with_external_hardware_software/1, gloss('how the model interacts with hardware or software not part of the model'), source('celex:32024R1689/oj#anx_12').
:- pred relevant_software_versions/1, gloss('versions of relevant software related to the use of the model'), source('celex:32024R1689/oj#anx_12').
:- pred architecture/1, gloss('architecture of the model'), source('celex:32024R1689/oj#anx_12').
:- pred number_of_parameters/1, gloss('number of parameters'), source('celex:32024R1689/oj#anx_12').
:- pred input_modality/1, gloss('modality of inputs'), source('celex:32024R1689/oj#anx_12').
:- pred output_modality/1, gloss('modality of outputs'), source('celex:32024R1689/oj#anx_12').
:- pred input_format/1, gloss('format of inputs'), source('celex:32024R1689/oj#anx_12').
:- pred output_format/1, gloss('format of outputs'), source('celex:32024R1689/oj#anx_12').
:- pred model_licence/1, gloss('licence for the model'), source('celex:32024R1689/oj#anx_12').
:- pred technical_means_for_integration/1, gloss('technical means required for integration into AI systems'), source('celex:32024R1689/oj#anx_12').
:- pred maximum_input_size/1, gloss('maximum size of inputs'), source('celex:32024R1689/oj#anx_12').
:- pred maximum_output_size/1, gloss('maximum size of outputs'), source('celex:32024R1689/oj#anx_12').
:- pred training_data_info/1, gloss('information on data used for training'), source('celex:32024R1689/oj#anx_12').
:- pred testing_data_info/1, gloss('information on data used for testing'), source('celex:32024R1689/oj#anx_12').
:- pred validation_data_info/1, gloss('information on data used for validation'), source('celex:32024R1689/oj#anx_12').
:- pred data_type/1, gloss('type of data'), source('celex:32024R1689/oj#anx_12').
:- pred data_provenance/1, gloss('provenance of data'), source('celex:32024R1689/oj#anx_12').
:- pred curation_methodologies/1, gloss('curation methodologies'), source('celex:32024R1689/oj#anx_12').

transparency_information(I) :-
    general_description(I),
    development_description(I).

general_description(I) :-
    intended_tasks(I),
    integrable_system_types(I),
    acceptable_use_policies(I),
    release_date(I),
    distribution_methods(I),
    interaction_with_external_hardware_software(I),
    relevant_software_versions(I),
    architecture(I),
    number_of_parameters(I),
    input_modality(I),
    output_modality(I),
    input_format(I),
    output_format(I),
    model_licence(I).

development_description(I) :-
    technical_means_for_integration(I),
    input_modality(I),
    output_modality(I),
    input_format(I),
    output_format(I),
    maximum_input_size(I),
    maximum_output_size(I),
    training_data_info(I),
    testing_data_info(I),
    validation_data_info(I),
    data_type(I),
    data_provenance(I),
    curation_methodologies(I).

provenance(transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(development_description/1, 'celex:32024R1689/oj#anx_12').
provenance(intended_tasks/1, 'celex:32024R1689/oj#anx_12').
provenance(integrable_system_types/1, 'celex:32024R1689/oj#anx_12').
provenance(acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(release_date/1, 'celex:32024R1689/oj#anx_12').
provenance(distribution_methods/1, 'celex:32024R1689/oj#anx_12').
provenance(interaction_with_external_hardware_software/1, 'celex:32024R1689/oj#anx_12').
provenance(relevant_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(architecture/1, 'celex:32024R1689/oj#anx_12').
provenance(number_of_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(input_modality/1, 'celex:32024R1689/oj#anx_12').
provenance(output_modality/1, 'celex:32024R1689/oj#anx_12').
provenance(input_format/1, 'celex:32024R1689/oj#anx_12').
provenance(output_format/1, 'celex:32024R1689/oj#anx_12').
provenance(model_licence/1, 'celex:32024R1689/oj#anx_12').
provenance(technical_means_for_integration/1, 'celex:32024R1689/oj#anx_12').
provenance(maximum_input_size/1, 'celex:32024R1689/oj#anx_12').
provenance(maximum_output_size/1, 'celex:32024R1689/oj#anx_12').
provenance(training_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(testing_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(validation_data_info/1, 'celex:32024R1689/oj#anx_12').
provenance(data_type/1, 'celex:32024R1689/oj#anx_12').
provenance(data_provenance/1, 'celex:32024R1689/oj#anx_12').
provenance(curation_methodologies/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
