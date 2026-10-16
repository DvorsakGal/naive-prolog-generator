% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e386035c296317d4339e5fea778774a655afc87bb2406d75fb3dcc2578f9dd93
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred required_transparency_information/1, gloss('technical documentation for general-purpose AI models to downstream providers'), source('celex:32024R1689/oj#anx_12').
:- pred contains_general_description/1, gloss('documentation includes general description of the model'), source('celex:32024R1689/oj#anx_12').
:- pred contains_development_description/1, gloss('documentation includes description of model elements and development process'), source('celex:32024R1689/oj#anx_12').

required_transparency_information(I) :-
    contains_general_description(I),
    contains_development_description(I).

contains_general_description(I) :-
    describes_intended_tasks(I),
    describes_acceptable_use_policies(I),
    describes_release_and_distribution(I),
    describes_interaction_capabilities(I),
    describes_software_versions(I),
    describes_architecture_and_parameters(I),
    describes_input_output_modality(I),
    describes_model_licence(I).

contains_development_description(I) :-
    describes_integration_technical_means(I),
    describes_input_output_specifications(I),
    describes_training_testing_validation_data(I).

provenance(required_transparency_information/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_development_description/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
