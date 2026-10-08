% unit       : celex:32024R1689/oj#art_53
% title      : Obligations for providers of general-purpose AI models
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : gpt-oss:120b-cloud
% prompt sha : 0d80c1c03fb1d4c9eab46240b3661dd176671e7ec1f1f2250cef978b1375cd93
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred provides/2, gloss('provider supplies AI model'), source('celex:32024R1689/oj#art_53').
:- pred required_technical_documentation/2, gloss('provider must draw up and keep up‑to‑date technical documentation of the model'), source('celex:32024R1689/oj#art_53').
:- pred required_information_for_integrators/2, gloss('provider must draw up, keep up‑to‑date and make available information enabling integrators to understand capabilities and limitations'), source('celex:32024R1689/oj#art_53').
:- pred required_copyright_policy/2, gloss('provider must put in place a policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred required_training_summary/2, gloss('provider must draw up and make publicly available a detailed summary of the training data content'), source('celex:32024R1689/oj#art_53').
:- pred required_cooperation/1, gloss('provider must cooperate with the Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred permitted_reliance_on_codes_of_practice/1, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred foss_license/1, gloss('AI model is released under a free and open‑source licence allowing access, usage, modification and distribution'), source('celex:32024R1689/oj#art_53').
:- pred exempt_obligations_for_foss_provider/2, gloss('providers of free‑open‑source models are exempt from the obligations, unless the model has systemic risk'), source('celex:32024R1689/oj#art_53').

required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_technical_documentation/2, 'celex:32024R1689/oj#art_53').

required_information_for_integrators(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_information_for_integrators/2, 'celex:32024R1689/oj#art_53').

required_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_copyright_policy/2, 'celex:32024R1689/oj#art_53').

required_training_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_training_summary/2, 'celex:32024R1689/oj#art_53').

required_cooperation(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_cooperation/1, 'celex:32024R1689/oj#art_53').

permitted_reliance_on_codes_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(permitted_reliance_on_codes_of_practice/1, 'celex:32024R1689/oj#art_53').

exempt_obligations_for_foss_provider(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    foss_license(M),
    \+ systemic_risk(M).

provenance(exempt_obligations_for_foss_provider/2, 'celex:32024R1689/oj#art_53').

% References
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
