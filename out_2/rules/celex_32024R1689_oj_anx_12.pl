% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bbc2066ebd0d36cd2df93498a8f9e1fa4c2dde3e9bb5c1e84a3a5c7c871d2666
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
% Obligations for providers of general‑purpose AI models
must_provide_transparency_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

provenance(must_provide_transparency_information/2, 'celex:32024R1689/oj#anx_12').

% Required elements of the general description (Annex XII point 1)
required_general_description(Model) :-
    general_purpose_ai_model(Model).

required_tasks_intended(Model) :-
    general_purpose_ai_model(Model).

required_acceptable_use_policies(Model) :-
    general_purpose_ai_model(Model).

required_release_date_and_distribution_methods(Model) :-
    general_purpose_ai_model(Model).

required_hardware_software_interaction(Model) :-
    general_purpose_ai_model(Model).

required_software_versions(Model) :-
    general_purpose_ai_model(Model).

required_architecture_and_parameters(Model) :-
    general_purpose_ai_model(Model).

required_modality_and_format(Model) :-
    general_purpose_ai_model(Model).

required_licence(Model) :-
    general_purpose_ai_model(Model).

provenance(required_general_description/1, 'celex:32024R1689/oj#anx_12').
provenance(required_tasks_intended/1, 'celex:32024R1689/oj#anx_12').
provenance(required_acceptable_use_policies/1, 'celex:32024R1689/oj#anx_12').
provenance(required_release_date_and_distribution_methods/1, 'celex:32024R1689/oj#anx_12').
provenance(required_hardware_software_interaction/1, 'celex:32024R1689/oj#anx_12').
provenance(required_software_versions/1, 'celex:32024R1689/oj#anx_12').
provenance(required_architecture_and_parameters/1, 'celex:32024R1689/oj#anx_12').
provenance(required_modality_and_format/1, 'celex:32024R1689/oj#anx_12').
provenance(required_licence/1, 'celex:32024R1689/oj#anx_12').

% Required elements of the description of model elements and development process (Annex XII point 2)
required_model_elements_description(Model) :-
    general_purpose_ai_model(Model).

required_technical_means(Model) :-
    general_purpose_ai_model(Model).

required_input_output_modality_and_size(Model) :-
    general_purpose_ai_model(Model).

required_data_information(Model) :-
    general_purpose_ai_model(Model).

provenance(required_model_elements_description/1, 'celex:32024R1689/oj#anx_12').
provenance(required_technical_means/1, 'celex:32024R1689/oj#anx_12').
provenance(required_input_output_modality_and_size/1, 'celex:32024R1689/oj#anx_12').
provenance(required_data_information/1, 'celex:32024R1689/oj#anx_12').

% References cited in this annex
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
