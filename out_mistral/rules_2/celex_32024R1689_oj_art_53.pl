% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c2a37bc2bfc6e0dcff194c6818dd94595af16d6477f3b5910cf8485914b739e1
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred general_purpose_ai_model_provider/1, gloss('provider of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred free_and_open_source_licence/1, gloss('AI model released under a free and open-source licence allowing access, usage, modification and distribution'), source('celex:32024R1689/oj#art_53').
:- pred model_parameters_publicly_available/1, gloss('model parameters including weights, architecture information and usage information are made publicly available'), source('celex:32024R1689/oj#art_53').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model with systemic risks'), source('celex:32024R1689/oj#art_53').
:- pred technical_documentation_gpai/1, gloss('technical documentation of general-purpose AI model including training and testing process and evaluation results'), source('celex:32024R1689/oj#art_53').
:- pred information_for_downstream_providers/1, gloss('information and documentation made available to providers of AI systems intending to integrate the model'), source('celex:32024R1689/oj#art_53').
:- pred copyright_compliance_policy/1, gloss('policy to comply with Union law on copyright and related rights including reservation of rights'), source('celex:32024R1689/oj#art_53').
:- pred training_content_summary/1, gloss('sufficiently detailed summary about content used for training made publicly available'), source('celex:32024R1689/oj#art_53').
:- pred approved_code_of_practice/1, gloss('code of practice approved by Commission implementing act with general validity'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_keep_technical_documentation_up_to_date(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

technical_documentation_gpai(M) :-
    general_purpose_ai_model(M),
    contains_minimum_information_annex_11(M).

must_provide_technical_documentation_upon_request(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    must_provide(P, technical_documentation(M)).

must_draw_up_information_for_downstream_providers(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_keep_information_for_downstream_providers_up_to_date(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_make_available_information_for_downstream_providers(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

information_for_downstream_providers(M) :-
    general_purpose_ai_model(M),
    enables_understanding_capabilities_limitations(M),
    contains_minimum_elements_annex_12(M).

must_observe_intellectual_property_rights(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_protect_confidential_business_information(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_put_in_place_copyright_compliance_policy(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

copyright_compliance_policy(M) :-
    general_purpose_ai_model(M),
    identifies_reservation_of_rights(M),
    complies_with_reservation_of_rights(M),
    uses_state_of_the_art_technologies(M).

must_draw_up_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_make_publicly_available_training_content_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

training_content_summary(M) :-
    general_purpose_ai_model(M),
    sufficiently_detailed(M),
    according_to_ai_office_template(M).

exempt_from_technical_documentation_obligation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ general_purpose_ai_model_with_systemic_risk(M).

exempt_from_information_for_downstream_providers_obligation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    model_parameters_publicly_available(M),
    \+ general_purpose_ai_model_with_systemic_risk(M).

must_cooperate_with_authorities(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    ai_office(A),
    national_competent_authority(N).

may_rely_on_codes_of_practice(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    approved_code_of_practice(C).

presumption_of_conformity(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    harmonised_standard_published(S),
    covers_obligations(S, art_53_par_1).

must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).

must_treat_information_confidentially(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    information_or_documentation_obtained(M).

provenance(general_purpose_ai_model_provider/1, 'celex:32024R1689/oj#art_53').
provenance(free_and_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(model_parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation_gpai/1, 'celex:32024R1689/oj#art_53').
provenance(information_for_downstream_providers/1, 'celex:32024R1689/oj#art_53').
provenance(copyright_compliance_policy/1, 'celex:32024R1689/oj#art_53').
provenance(training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_technical_documentation_up_to_date/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation_upon_request/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_information_for_downstream_providers/2, 'celex:32024R1689/oj#art_53').
provenance(must_keep_information_for_downstream_providers_up_to_date/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information_for_downstream_providers/2, 'celex:32024R1689/oj#art_53').
provenance(must_observe_intellectual_property_rights/2, 'celex:32024R1689/oj#art_53').
provenance(must_protect_confidential_business_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_compliance_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_training_content_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_technical_documentation_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_information_for_downstream_providers_obligation/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_53').

references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
