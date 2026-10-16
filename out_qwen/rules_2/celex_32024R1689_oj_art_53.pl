% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 62585854e593ac70476e050a38abab1f18514870c0589698d74ae65b087ad68b
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation of the model'), source('celex:32024R1689/oj#art_53').
:- pred must_provide_integration_information/2, gloss('provider must make available information to downstream providers integrating the model'), source('celex:32024R1689/oj#art_53').
:- pred must_comply_with_copyright_policy/2, gloss('provider must put in place policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_publish_training_content_summary/2, gloss('provider must make publicly available summary of training content'), source('celex:32024R1689/oj#art_53').
:- pred exempt_open_source_model/1, gloss('model released under free and open-source licence with public parameters'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate_with_authorities/2, gloss('provider must cooperate with Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider not adhering to code or standard must demonstrate alternative means'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ exempt_open_source_model(M).

must_provide_integration_information(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ exempt_open_source_model(M).

must_comply_with_copyright_policy(P, M) :-
    general_purpose_ai_model_provider(P, M).

must_publish_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P, M).

exempt_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk(M).

must_cooperate_with_authorities(P, commission) :-
    general_purpose_ai_model_provider(P, _).

must_cooperate_with_authorities(P, A) :-
    general_purpose_ai_model_provider(P, _),
    national_competent_authority(A).

may_rely_on_code_of_practice(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ harmonised_standard_published_for_obligations.

must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_european_harmonised_standard(P, M).

% Auxiliary predicates for Article 53(4) conditions defined locally
adheres_to_approved_code_of_practice(_P, _M) :- fail.
complies_with_european_harmonised_standard(_P, _M) :- fail.
harmonised_standard_published_for_obligations :- fail.

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').

references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
