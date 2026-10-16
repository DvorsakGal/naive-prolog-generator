% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e309f74592b103643ec07166ed09732970c04426e244391fe284fb85a16d1d15
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred required_transparency_information/2, gloss('transparency information required to be provided to downstream providers for a general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred contains_element/2, gloss('information package or documentation contains a specific element or section'), source('celex:32024R1689/oj#anx_12').

% The information referred to in Article 53(1), point (b) shall contain at least:
% 1. General description
% 2. Description of elements and development process
required_transparency_information(Model, Info) :-
    general_purpose_ai_model(Model),
    contains_element(Info, general_description(Model)),
    contains_element(Info, technical_integration_elements(Model)).

contains_element(general_description(Model), general_description_elements) :-
    contains_element(general_description(Model), intended_tasks_and_system_types),
    contains_element(general_description(Model), acceptable_use_policies),
    contains_element(general_description(Model), release_date_and_distribution_methods),
    contains_element(general_description(Model), hardware_software_interaction),
    contains_element(general_description(Model), relevant_software_versions),
    contains_element(general_description(Model), architecture_and_parameters),
    contains_element(general_description(Model), modality_and_format_inputs_outputs),
    contains_element(general_description(Model), licence).

contains_element(technical_integration_elements(Model), technical_development_elements) :-
    contains_element(technical_integration_elements(Model), integration_technical_means),
    contains_element(technical_integration_elements(Model), modality_format_maximum_size_inputs_outputs),
    contains_element(technical_integration_elements(Model), training_testing_validation_data_info).

provenance(required_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_element/2, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
