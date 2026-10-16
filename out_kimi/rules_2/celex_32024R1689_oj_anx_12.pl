% unit       : celex:32024R1689/oj#anx_12
% context    : ANNEXES
% slice sha  : 110a1698ea321d511c539b220c8819590c2e4917fd487b3941d5f556665780b5
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : b5567fa35ed5d0b606b8ca35907d41dab2c36ddec593f8d8cb2fca4fa04a6286
% cached     : False
% title      : Transparency information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> — technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system The information referred to in <ref id="celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b"/> shall contain at least the following:
:- pred required_technical_documentation_for_downstream_provider/1, gloss('technical documentation for providers of general-purpose AI models to downstream providers that integrate the model into their AI system'), source('celex:32024R1689/oj#anx_12').

required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    integration_technical_means(M).

required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    input_output_modality(M).

required_technical_documentation_for_downstream_provider(M) :-
    general_purpose_ai_model(M),
    general_purpose_ai_model_provider(P),
    downstream_provider(D),
    training_data_information(M).

must_provide_information(P, technical_documentation_for_downstream_provider(M, D)) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    downstream_provider(D),
    required_technical_documentation_for_downstream_provider(M).

provenance(required_technical_documentation_for_downstream_provider/1, 'celex:32024R1689/oj#anx_12').
provenance(must_provide_information/2, 'celex:32024R1689/oj#anx_12').

references('celex:32024R1689/oj#anx_12', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
