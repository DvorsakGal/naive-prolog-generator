% unit       : celex:32024R1689/oj#anx_12
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : gpt-oss:120b-cloud
% prompt sha : c582e65add091c5e7491d5af82a1bc4320a22d0c2e112f192def106b5ca27edb
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provides_model/2, gloss('provider supplies a general‑purpose AI model'), source('celex:32024R1689/oj#anx_12').
:- pred integrates_model/2, gloss('downstream provider integrates a model into its AI system'), source('celex:32024R1689/oj#anx_12').
:- pred required_transparency_information/3, gloss('provider must give transparency information about model to downstream provider'), source('celex:32024R1689/oj#anx_12').
:- pred required_information_item/2, gloss('transparency documentation must contain specific item'), source('celex:32024R1689/oj#anx_12').

required_transparency_information(Provider, Model, Downstream) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    downstream_provider(Downstream),
    provides_model(Provider, Model),
    integrates_model(Downstream, Model).

required_information_item(Model, tasks_intended) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, acceptable_use_policies) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, release_date) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, distribution_methods) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, hardware_software_interaction) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, software_versions) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, architecture_parameters) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, input_output_modality) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, licence) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, technical_means) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, input_output_modality_format_and_size) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

required_information_item(Model, data_information) :-
    general_purpose_ai_model(Model),
    general_purpose_ai_model(Model).

% Provenance
provenance(provides_model/2, 'celex:32024R1689/oj#anx_12').
provenance(integrates_model/2, 'celex:32024R1689/oj#anx_12').
provenance(required_transparency_information/3, 'celex:32024R1689/oj#anx_12').
provenance(required_information_item/2, 'celex:32024R1689/oj#anx_12').

% References
references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
