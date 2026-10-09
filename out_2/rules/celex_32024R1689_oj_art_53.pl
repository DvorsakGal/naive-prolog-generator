% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4023233d67774d98bdc234f077f1e995e086794977cb4c1b526597a9341276cc
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up technical documentation of the general‑purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred must_keep_up_to_date_technical_documentation/2, gloss('provider must keep technical documentation of the general‑purpose AI model up to date'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_information/2, gloss('provider must draw up information and documentation for AI‑system providers intending to integrate the model'), source('celex:32024R1689/oj#art_53').
:- pred must_keep_up_to_date_information/2, gloss('provider must keep that information and documentation up to date'), source('celex:32024R1689/oj#art_53').
:- pred must_make_available_information/2, gloss('provider must make that information and documentation available to AI‑system providers'), source('celex:32024R1689/oj#art_53').
:- pred must_put_policy/2, gloss('provider must put in place a policy to comply with Union copyright and related rights law'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_summary/2, gloss('provider must draw up a sufficiently detailed summary of the content used for training the model'), source('celex:32024R1689/oj#art_53').
:- pred must_make_publicly_available_summary/2, gloss('provider must make the training‑content summary publicly available'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate/2, gloss('provider must cooperate as necessary with the Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred permitted_rely_on_codes_of_practice/1, gloss('provider may rely on codes of practice to demonstrate compliance until a harmonised standard is published'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_means/1, gloss('provider must demonstrate alternative adequate means of compliance when not adhering to a code of practice or harmonised standard'), source('celex:32024R1689/oj#art_53').
:- pred must_treat_confidentially/2, gloss('provider must treat information obtained under this article in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_53').

:- pred exempt_open_source_provider/1, gloss('provider is exempt from the obligations because the model is released under a free and open‑source licence and not subject to systemic risk'), source('celex:32024R1689/oj#art_53').
:- pred open_source_model/1, gloss('the AI model is released under a free and open‑source licence with full public availability of parameters, architecture and usage information'), source('celex:32024R1689/oj#art_53').
:- pred systemic_risk_model/1, gloss('the general‑purpose AI model presents systemic risk'), source('celex:32024R1689/oj#art_53').
:- pred harmonised_standard_published/0, gloss('a European harmonised standard covering the obligations has been published'), source('celex:32024R1689/oj#art_53').
:- pred adheres_to_code_of_practice/1, gloss('provider adheres to an approved code of practice'), source('celex:32024R1689/oj#art_53').
:- pred complies_with_harmonised_standard/1, gloss('provider complies with a European harmonised standard'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(Provider, technical_documentation(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_keep_up_to_date_technical_documentation(Provider, technical_documentation(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_draw_up_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_keep_up_to_date_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_make_available_information(Provider, information_for_integration(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_put_policy(Provider, copyright_policy) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_draw_up_summary(Provider, training_content_summary(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_make_publicly_available_summary(Provider, training_content_summary(general_purpose_ai_model)) :-
    provider(Provider),
    \+ exempt_open_source_provider(Provider).

must_cooperate(Provider, cooperation(commission, national_competent_authority)) :-
    provider(Provider).

permitted_rely_on_codes_of_practice(Provider) :-
    provider(Provider),
    \+ harmonised_standard_published.

must_demonstrate_alternative_means(Provider) :-
    provider(Provider),
    \+ adheres_to_code_of_practice(Provider),
    \+ complies_with_harmonised_standard(Provider).

must_treat_confidentially(Provider, information_obtained(art_53)) :-
    provider(Provider).

exempt_open_source_provider(Provider) :-
    provider(Provider),
    open_source_model(Provider),
    \+ systemic_risk_model(Provider).

% Provenance
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(permitted_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_means/1, 'celex:32024R1689/oj#art_53').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_open_source_provider/1, 'celex:32024R1689/oj#art_53').
provenance(open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_53').
provenance(adheres_to_code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(complies_with_harmonised_standard/1, 'celex:32024R1689/oj#art_53').

% References
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
