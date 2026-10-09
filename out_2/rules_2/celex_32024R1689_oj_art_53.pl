% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 4cde18110a53bff6a55440b28481f5a8a9a70ff59f6841fdb36892377bb79984
% cached     : False
% title      : Obligations for providers of general-purpose AI models
% --- New predicates introduced for this provision ---
:- pred required_technical_documentation/1, gloss('technical documentation must be drawn up and kept up‑to‑date'), source('celex:32024R1689/oj#art_53').
:- pred required_information_for_integrators/1, gloss('information and documentation for AI system providers must be drawn up, kept up‑to‑date and made available'), source('celex:32024R1689/oj#art_53').
:- pred required_copyright_policy/1, gloss('policy to comply with Union copyright law must be put in place'), source('celex:32024R1689/oj#art_53').
:- pred required_training_summary/1, gloss('summary of training data content must be drawn up and made publicly available'), source('celex:32024R1689/oj#art_53').
:- pred exempt_provider/1, gloss('provider exempt from the obligations'), source('celex:32024R1689/oj#art_53').
:- pred provider_of_open_source_model/1, gloss('provider of an open‑source AI model'), source('celex:32024R1689/oj#art_53').
:- pred open_source_license/1, gloss('model is released under a free and open‑source licence'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate/2, gloss('provider must cooperate with the Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred permitted_reliance_on_code_of_practice/1, gloss('provider may rely on codes of practice until a harmonised standard is published'), source('celex:32024R1689/oj#art_53').
:- pred must_handle_confidentially/2, gloss('information obtained must be treated confidentially'), source('celex:32024R1689/oj#art_53').
:- pred contains_minimum_information/2, gloss('documentation contains the minimum information set out in the referenced annex'), source('celex:32024R1689/oj#art_53').
:- pred provides_upon_request/2, gloss('information is provided upon request to the specified authority'), source('celex:32024R1689/oj#art_53').
:- pred enables_understanding/1, gloss('information enables understanding of capabilities and limitations'), source('celex:32024R1689/oj#art_53').
:- pred follows_template/2, gloss('summary follows the template provided by the AI Office'), source('celex:32024R1689/oj#art_53').
:- pred harmonised_standard_published/0, gloss('a European harmonised standard covering the obligations has been published'), source('celex:32024R1689/oj#art_53').

% --- Obligations (required) ---
required_technical_documentation(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    contains_minimum_information(P, annex_11),
    provides_upon_request(P, ai_office),
    provides_upon_request(P, national_competent_authority).

required_information_for_integrators(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    enables_understanding(P),
    contains_minimum_information(P, annex_12).

required_copyright_policy(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P).

required_training_summary(P) :-
    general_purpose_ai_model_provider(P),
    \+ exempt_provider(P),
    follows_template(P, ai_office).

% --- Exception ---
exempt_provider(P) :-
    provider_of_open_source_model(P),
    \+ systemic_risk(P).

provider_of_open_source_model(P) :-
    general_purpose_ai_model_provider(P),
    open_source_license(P).

% --- Cooperation duty ---
must_cooperate(P, commission) :-
    general_purpose_ai_model_provider(P).

must_cooperate(P, national_competent_authority) :-
    general_purpose_ai_model_provider(P).

% --- Permission to rely on codes of practice ---
permitted_reliance_on_code_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    \+ harmonised_standard_published.

% --- Confidentiality handling ---
must_handle_confidentially(P, information_obtained_under_art_53) :-
    general_purpose_ai_model_provider(P).

% --- Placeholder for harmonised standard status (can be overridden) ---
harmonised_standard_published :- fail.

% --- Provenance ---
provenance(required_technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(required_information_for_integrators/1, 'celex:32024R1689/oj#art_53').
provenance(required_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(required_training_summary/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_provider/1, 'celex:32024R1689/oj#art_53').
provenance(provider_of_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(open_source_license/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_reliance_on_code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(must_handle_confidentially/2, 'celex:32024R1689/oj#art_53').
provenance(contains_minimum_information/2, 'celex:32024R1689/oj#art_53').
provenance(provides_upon_request/2, 'celex:32024R1689/oj#art_53').
provenance(enables_understanding/1, 'celex:32024R1689/oj#art_53').
provenance(follows_template/2, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_53').

% --- References ---
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
