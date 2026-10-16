% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2fac013fe456b2c8825ec640d1516aa4c8715ae288b3d314de16cd29f3dfcd80
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred gpaim_provider/1, gloss('provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred free_open_source_licence/1, gloss('licence allowing access, usage, modification and distribution with publicly available parameters'), source('celex:32024R1689/oj#art_53').
:- pred systemic_risk_gpaim/1, gloss('general-purpose AI model with systemic risks'), source('celex:32024R1689/oj#art_53').
:- pred technical_documentation/1, gloss('technical documentation of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred training_process_documented/1, gloss('training process documented in technical documentation'), source('celex:32024R1689/oj#art_53').
:- pred testing_process_documented/1, gloss('testing process documented in technical documentation'), source('celex:32024R1689/oj#art_53').
:- pred evaluation_results_documented/1, gloss('evaluation results documented in technical documentation'), source('celex:32024R1689/oj#art_53').
:- pred annex_11_information/1, gloss('information set out in Annex XI'), source('celex:32024R1689/oj#art_53').
:- pred annex_12_elements/1, gloss('elements set out in Annex XII'), source('celex:32024R1689/oj#art_53').
:- pred integration_information/1, gloss('information and documentation for AI system providers integrating the model'), source('celex:32024R1689/oj#art_53').
:- pred capabilities_limitations_understanding/1, gloss('good understanding of capabilities and limitations'), source('celex:32024R1689/oj#art_53').
:- pred copyright_policy/1, gloss('policy to comply with Union law on copyright and related rights'), source('celex:32024R1689/oj#art_53').
:- pred rights_reservation_identified/1, gloss('reservation of rights identified and complied with'), source('celex:32024R1689/oj#art_53').
:- pred training_content_summary/1, gloss('sufficiently detailed summary about training content'), source('celex:32024R1689/oj#art_53').
:- pred ai_office_template/1, gloss('template provided by the AI Office'), source('celex:32024R1689/oj#art_53').
:- pred code_of_practice/1, gloss('code of practice within the meaning of Article 56'), source('celex:32024R1689/oj#art_53').
:- pred harmonised_standard_published/1, gloss('harmonised standard published covering the obligations'), source('celex:32024R1689/oj#art_53').
:- pred presumption_of_conformity/1, gloss('presumption of conformity granted by compliance with harmonised standards'), source('celex:32024R1689/oj#art_53').
:- pred alternative_compliance_means/1, gloss('alternative adequate means of compliance demonstrated'), source('celex:32024R1689/oj#art_53').

gpaim_provider(P) :-
    provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

provides_gpaim(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

must_draw_up_technical_documentation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_keep_up_to_date_technical_documentation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

technical_documentation(M, D) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_technical_documentation(P, M),
    D = technical_documentation(M).

training_process_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).

testing_process_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).

evaluation_results_documented(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).

annex_11_information(D) :-
    technical_documentation(M, D),
    must_draw_up_technical_documentation(_P, M).

must_provide_documentation_upon_request(P, M, R) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    (R = ai_office ; national_competent_authority(R)).

must_draw_up_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_keep_up_to_date_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_make_available_integration_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

integration_information(M, I) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_make_available_integration_information(P, M),
    I = integration_information(M).

capabilities_limitations_understanding(I) :-
    integration_information(M, I).

annex_12_elements(I) :-
    integration_information(M, I).

must_observe_ip_rights(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_observe_confidential_business_information(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_observe_trade_secrets(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_put_in_place_copyright_policy(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

copyright_policy(M, Pol) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M),
    Pol = copyright_policy(M).

must_identify_rights_reservation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M).

must_comply_with_rights_reservation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_put_in_place_copyright_policy(P, M).

rights_reservation_identified(M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_identify_rights_reservation(P, M).

must_use_state_of_the_art_technologies(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_identify_rights_reservation(P, M).

must_draw_up_training_content_summary(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_make_publicly_available_training_content_summary(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_training_content_summary(P, M).

training_content_summary(M, S) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_make_publicly_available_training_content_summary(P, M),
    S = training_content_summary(M).

must_use_ai_office_template(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_draw_up_training_content_summary(P, M).

ai_office_template(S) :-
    training_content_summary(M, S),
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_use_ai_office_template(P, M).

exempt_technical_documentation_obligation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    free_open_source_licence(M),
    \+ systemic_risk_gpaim(M).

exempt_integration_information_obligation(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    free_open_source_licence(M),
    \+ systemic_risk_gpaim(M).

free_open_source_licence(M) :-
    general_purpose_ai_model(M),
    licence_allows_access_usage_modification_distribution(M),
    parameters_publicly_available(M).

licence_allows_access_usage_modification_distribution(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).

parameters_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M),
    weights_publicly_available(M),
    model_architecture_information_publicly_available(M),
    model_usage_information_publicly_available(M).

weights_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).

model_architecture_information_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).

model_usage_information_publicly_available(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(M).

must_cooperate_with_commission(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

must_cooperate_with_national_competent_authorities(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M).

may_rely_on_code_of_practice(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    code_of_practice(C),
    demonstrates_compliance(C, M).

demonstrates_compliance(C, M) :-
    code_of_practice(C),
    general_purpose_ai_model(M).

presumption_of_conformity(M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    harmonised_standard_published(H),
    covers_obligations(H, M).

harmonised_standard_published(H) :-
    harmonised_standard(H).

covers_obligations(H, M) :-
    harmonised_standard(H),
    general_purpose_ai_model(M).

must_demonstrate_alternative_compliance_means(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_european_harmonised_standard(P, M).

adheres_to_approved_code_of_practice(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    code_of_practice(C),
    approved_code_of_practice(C),
    adheres_to(P, C).

approved_code_of_practice(C) :-
    code_of_practice(C).

adheres_to(P, C) :-
    gpaim_provider(P),
    code_of_practice(C).

complies_with_european_harmonised_standard(P, M) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    harmonised_standard(H),
    complies_with(P, H).

complies_with(P, H) :-
    gpaim_provider(P),
    harmonised_standard(H).

alternative_compliance_means(M, A) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    must_demonstrate_alternative_compliance_means(P, M),
    A = alternative_compliance_means(M).

must_treat_information_confidentially(P, M, I) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    information_or_documentation_obtained(I, M).

information_or_documentation_obtained(I, M) :-
    general_purpose_ai_model(M),
    (technical_documentation(M, I) ; integration_information(M, I)).

must_treat_trade_secrets_confidentially(P, M, T) :-
    gpaim_provider(P),
    general_purpose_ai_model(M),
    provides_gpaim(P, M),
    trade_secret(T),
    information_or_documentation_obtained(T, M).

trade_secret(T) :-
    information_or_documentation_obtained(T, _M),
    confidential_business_information(T).

confidential_business_information(T) :-
    trade_secret(T).

provenance(gpaim_provider/1, 'celex:32024R1689/oj#art_53').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_gpaim/1, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(training_process_documented/1, 'celex:32024R1689/oj#art_53').
provenance(testing_process_documented/1, 'celex:32024R1689/oj#art_53').
provenance(evaluation_results_documented/1, 'celex:32024R1689/oj#art_53').
provenance(annex_11_information/1, 'celex:32024R1689/oj#art_53').
provenance(annex_12_elements/1, 'celex:32024R1689/oj#art_53').
provenance(integration_information/1, 'celex:32024R1689/oj#art_53').
provenance(capabilities_limitations_understanding/1, 'celex:32024R1689/oj#art_53').
provenance(copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(rights_reservation_identified/1, 'celex:32024R1689/oj#art_53').
provenance(training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(ai_office_template/1, 'celex:32024R1689/oj#art_53').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published/1, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_53').
provenance(alternative_compliance_means/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_documentation_upon_request/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_up_to_date_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_integration_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_ip_rights/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_confidential_business_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_trade_secrets/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_identify_rights_reservation/2, 'celex:32024R1689/oj#art_53').
provenance(must_comply_with_rights_reservation/2, 'celex:32024R1689/oj#art_53').
provenance(must_use_state_of_the_art_technologies/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_use_ai_office_template/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_technical_documentation_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_integration_information_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_commission/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_national_competent_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance_means/2, 'celex:32024R1689/oj#art_53').
provenance(must_treat_information_confidentially/3, 'celex:32024R1689/oj#art_53').
provenance(must_treat_trade_secrets_confidentially/3, 'celex:32024R1689/oj#art_53').

references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
