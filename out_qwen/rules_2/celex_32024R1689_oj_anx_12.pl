% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 24b8eb514f6193fdf07ab284f84212dac2dda19710b02c46d47444a8edcbd8ba
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred required_transparency_information_for_downstream_provider/1, gloss('transparency information content required by Annex XII for general-purpose AI model providers'), source('celex:32024R1689/oj#anx_12').
:- pred contains_general_description_of_model/1, gloss('information contains a general description of the general-purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred contains_development_process_description/1, gloss('information contains a description of the elements of the model and development process'), source('celex:32024R1689/oj#anx_12').

required_transparency_information_for_downstream_provider(Info) :-
    contains_general_description_of_model(Info),
    contains_development_process_description(Info).

contains_general_description_of_model(Info) :-
    describes_intended_tasks_and_integration_types(Info),
    describes_acceptable_use_policies(Info),
    describes_release_date_and_distribution_methods(Info),
    describes_hardware_software_interaction(Info),
    describes_relevant_software_versions(Info),
    describes_architecture_and_parameter_count(Info),
    describes_input_output_modality_and_format(Info),
    describes_model_licence(Info).

contains_development_process_description(Info) :-
    describes_technical_means_for_integration(Info),
    describes_input_output_specifications(Info),
    describes_training_testing_validation_data(Info).

provenance(required_transparency_information_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_general_description_of_model/1, 'celex:32024R1689/oj#anx_12').
provenance(contains_development_process_description/1, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
