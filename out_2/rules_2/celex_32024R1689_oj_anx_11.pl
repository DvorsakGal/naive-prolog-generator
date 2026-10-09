% unit       : celex:32024R1689/oj#anx_11
% context    : ANNEXES
% slice sha  : 1326261b081c85ea70d26ff894b7a4fd8210c9bcc594d07b8ef912a98225d54a
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : a7831b8789902c82a623b35dac084d413f827e6344a723d7d8ec4e5468581a79
% cached     : False
% title      : Technical documentation referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a"/> — technical documentation for providers of general-purpose AI models
must_provide(P, general_description_of_model) :-
    general_purpose_ai_model_provider(P).

must_provide(P, acceptable_use_policy) :-
    general_purpose_ai_model_provider(P).

must_provide(P, release_date_and_distribution) :-
    general_purpose_ai_model_provider(P).

must_provide(P, architecture_and_number_of_parameters) :-
    general_purpose_ai_model_provider(P).

must_provide(P, modality_and_format_of_inputs_outputs) :-
    general_purpose_ai_model_provider(P).

must_provide(P, licence) :-
    general_purpose_ai_model_provider(P).

must_provide(P, technical_means_for_integration) :-
    general_purpose_ai_model_provider(P).

must_provide(P, design_specifications_of_model_and_training_process) :-
    general_purpose_ai_model_provider(P).

must_provide(P, training_testing_validation_data_information) :-
    general_purpose_ai_model_provider(P).

must_provide(P, computational_resources_used) :-
    general_purpose_ai_model_provider(P).

must_provide(P, energy_consumption_information) :-
    general_purpose_ai_model_provider(P).

must_provide(P, evaluation_strategies_and_results) :-
    general_purpose_ai_model_provider(P).

must_provide(P, adversarial_testing_measures) :-
    general_purpose_ai_model_provider(P).

must_provide(P, system_architecture_description) :-
    general_purpose_ai_model_provider(P).

% Provenance
provenance(must_provide/2, 'celex:32024R1689/oj#anx_11').

% References
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#anx_11', 'celex:32024R1689/oj#anx_11/sec_1/pnt_1').
