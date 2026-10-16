% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 13bab61fa2dc91eec6cfaa24c6a5ce12967b8cf0c35ad8c90866cd484a70a9fc
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred must_provide_integration_information/2, gloss('provider must make available information to downstream providers integrating the model'), source('celex:32024R1689/oj#art_53').
:- pred must_comply_with_copyright_policy/2, gloss('provider must put in place a policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_publish_training_content_summary/2, gloss('provider must make publicly available a summary of training content'), source('celex:32024R1689/oj#art_53').
:- pred exempt_open_source_model/1, gloss('general-purpose AI model released under free and open-source licence with public parameters'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate_with_authorities/2, gloss('provider must cooperate with Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ exempt_open_source_model(M).

must_provide_integration_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ exempt_open_source_model(M).

must_comply_with_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

must_publish_training_content_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

exempt_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    publicly_available_parameters(M),
    \+ systemic_risk(M).

must_cooperate_with_authorities(P, commission) :-
    provider(P),
    general_purpose_ai_model(_M).

must_cooperate_with_authorities(P, A) :-
    provider(P),
    general_purpose_ai_model(_M),
    national_competent_authority(A).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').

references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
