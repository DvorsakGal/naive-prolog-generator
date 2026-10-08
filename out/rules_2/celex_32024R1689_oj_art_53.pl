% unit       : celex:32024R1689/oj#art_53
% title      : Obligations for providers of general-purpose AI models
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : gpt-oss:120b-cloud
% prompt sha : 83df48b267badfbe102af9db64ee73c93812f00d5075014ef5de10ad03080100
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred provides/2, gloss('provider provides AI model'), source('celex:32024R1689/oj#art_53').
:- pred open_source_model/2, gloss('AI model released under a free and open‑source licence'), source('celex:32024R1689/oj#art_53').
:- pred publicly_available_parameters/1, gloss('parameters of the AI model are publicly available'), source('celex:32024R1689/oj#art_53').
:- pred required_technical_documentation/2, gloss('provider must draw up and keep up‑to‑date technical documentation of the model'), source('celex:32024R1689/oj#art_53').
:- pred required_information_for_integrators/2, gloss('provider must draw up, keep up‑to‑date and make available information to AI‑system providers'), source('celex:32024R1689/oj#art_53').
:- pred required_copyright_policy/2, gloss('provider must put in place a policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred required_training_content_summary/2, gloss('provider must draw up and make publicly available a summary of training content'), source('celex:32024R1689/oj#art_53').
:- pred exempt_provider_of_general_purpose_ai_model/2, gloss('exemption from obligations for open‑source general‑purpose AI models without systemic risk'), source('celex:32024R1689/oj#art_53').
:- pred required_cooperation/2, gloss('provider shall cooperate with the Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred permitted_reliance_on_codes_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred required_confidentiality_obligation/2, gloss('information obtained shall be treated in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_53').

required_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

required_information_for_integrators(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

required_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

required_training_content_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

exempt_provider_of_general_purpose_ai_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    open_source_model(P, M),
    publicly_available_parameters(M),
    \+ systemic_risk(M).

required_cooperation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

permitted_reliance_on_codes_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M),
    \+ exempt_provider_of_general_purpose_ai_model(P, M).

required_confidentiality_obligation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    provides(P, M).

provenance(required_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(required_information_for_integrators/2, 'celex:32024R1689/oj#art_53').
provenance(required_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(required_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_provider_of_general_purpose_ai_model/2, 'celex:32024R1689/oj#art_53').
provenance(required_cooperation/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_reliance_on_codes_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(required_confidentiality_obligation/2, 'celex:32024R1689/oj#art_53').

references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
