% unit       : celex:32024R1689/oj#anx_12
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : gpt-oss:120b-cloud
% prompt sha : 67d68b298b78a547f826ba252ecadb27e4b1037a84e2d72f5983dcfe3160ab53
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_transparency_information/2, gloss('provider must provide transparency information for a general‑purpose AI model to downstream providers'), source('celex:32024R1689/oj#anx_12').
:- pred required_transparency_information_item/2, gloss('required item in the transparency information for a general‑purpose AI model'), source('celex:32024R1689/oj#anx_12').

required_transparency_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(_Downstream).

required_transparency_information_item(Model, tasks_intended) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, acceptable_use_policies) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, release_date_and_distribution) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, hardware_software_interaction) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, software_versions) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, architecture_and_parameters) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, input_output_modality_and_format) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, licence) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, technical_means) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, input_output_modality_and_size) :-
    general_purpose_ai_model(Model).

required_transparency_information_item(Model, data_used_for_training_testing_validation) :-
    general_purpose_ai_model(Model).

provenance(required_transparency_information/2, 'celex:32024R1689/oj#anx_12').
provenance(required_transparency_information_item/2, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
