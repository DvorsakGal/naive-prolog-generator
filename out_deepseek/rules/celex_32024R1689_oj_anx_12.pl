% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 02cbdd0b09174307ad1ecc4cc98db39a4f6d3cd8f6d6af10e4ead22660b66c4e
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred transparency_information/1, gloss('transparency information for general-purpose AI models'), source('celex:32024R1689/oj#anx_12').
:- pred general_description/1, gloss('general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred development_description/1, gloss('description of model elements and development process'), source('celex:32024R1689/oj#anx_12').

transparency_information(Info) :-
    general_description(Info),
    development_description(Info).

general_description(Info) :-
    intended_tasks(Info, Tasks),
    acceptable_use_policies(Info, Policies),
    release_date(Info, Date),
    distribution_methods(Info, Methods),
    hardware_software_interaction(Info, Interaction),
    relevant_software_versions(Info, Versions),
    architecture_and_parameters(Info, ArchParams),
    input_output_modality_format(Info, ModalityFormat),
    licence(Info, Licence).

development_description(Info) :-
    technical_means_for_integration(Info, Means),
    input_output_specification(Info, Spec),
    training_testing_validation_data_info(Info, DataInfo).

provenance(transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(development_description/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
