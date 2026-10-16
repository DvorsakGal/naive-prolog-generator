% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 08d9d05558105b34c095ed3e0b6fba7e3d609970610ebbe69dfd8243586e3913
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred general_purpose_ai_model_transparency_information/2, gloss('transparency information provided to downstream providers contains the elements required by Annex XII for a general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred contains_transparency_general_description/2, gloss('information contains the general description of the model pursuant to Annex XII point 1'), source('celex:32024R1689/oj#anx_12').
:- pred contains_transparency_development_elements/2, gloss('information contains the description of elements and development process pursuant to Annex XII point 2'), source('celex:32024R1689/oj#anx_12').

% Annex XII: The technical documentation/transparency information for downstream providers
% contains at least the general description and the development elements/process description.
general_purpose_ai_model_transparency_information(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_transparency_general_description(Info, Model),
    contains_transparency_development_elements(Info, Model).

% Point 1: General description of the general-purpose AI model
contains_transparency_general_description(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_intended_tasks_and_integration_types(Info, Model),
    contains_acceptable_use_policies(Info, Model),
    contains_release_date_and_distribution_methods(Info, Model),
    contains_hardware_software_interaction(Info, Model),
    contains_relevant_software_versions(Info, Model),
    contains_architecture_and_parameters(Info, Model),
    contains_input_output_modality_format(Info, Model),
    contains_model_licence(Info, Model).

% Point 2: Description of elements of the model and process for its development
contains_transparency_development_elements(Info, Model) :-
    general_purpose_ai_model(Model),
    contains_integration_technical_means(Info, Model),
    contains_input_output_specifications_and_limits(Info, Model),
    contains_training_testing_validation_data_info(Info, Model).

:- pred contains_intended_tasks_and_integration_types/2, gloss('contains tasks model is intended to perform and type/nature of AI systems for integration'), source('celex:32024R1689/oj#anx_12').
:- pred contains_acceptable_use_policies/2, gloss('contains applicable acceptable use policies'), source('celex:32024R1689/oj#anx_12').
:- pred contains_release_date_and_distribution_methods/2, gloss('contains release date and methods of distribution'), source('celex:32024R1689/oj#anx_12').
:- pred contains_hardware_software_interaction/2, gloss('contains interaction with external hardware or software where applicable'), source('celex:32024R1689/oj#anx_12').
:- pred contains_relevant_software_versions/2, gloss('contains versions of relevant software where applicable'), source('celex:32024R1689/oj#anx_12').
:- pred contains_architecture_and_parameters/2, gloss('contains architecture and number of parameters'), source('celex:32024R1689/oj#anx_12').
:- pred contains_input_output_modality_format/2, gloss('contains modality and format of inputs and outputs'), source('celex:32024R1689/oj#anx_12').
:- pred contains_model_licence/2, gloss('contains licence for the model'), source('celex:32024R1689/oj#anx_12').
:- pred contains_integration_technical_means/2, gloss('contains technical means required for integration into AI systems'), source('celex:32024R1689/oj#anx_12').
:- pred contains_input_output_specifications_and_limits/2, gloss('contains input and output modality, format, and maximum size'), source('celex:32024R1689/oj#anx_12').
:- pred contains_training_testing_validation_data_info/2, gloss('contains info on data used for training, testing and validation where applicable'), source('celex:32024R1689/oj#anx_12').

% Provenance
provenance(general_purpose_ai_model_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_transparency_general_description/2, 'celex:32024R1689/oj#anx_12').
provenance(contains_transparency_development_elements/2, 'celex:32024R1689/oj#anx_12').

% Cross-references
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
