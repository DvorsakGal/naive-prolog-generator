% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1757db09e3f58293ed669b3ca4967fb5b672e93f8fd82d0e712b540e6c549fb1
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation'), source('celex:32024R1689/oj#art_53').
:- pred technical_documentation/1, gloss('technical documentation of a general-purpose AI model'), source('celex:32024R1689/oj#art_53').
:- pred must_provide_technical_documentation/3, gloss('provider must provide technical documentation upon request'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_integration_documentation/2, gloss('provider must draw up, keep up-to-date and make available information and documentation for downstream providers'), source('celex:32024R1689/oj#art_53').
:- pred integration_documentation/1, gloss('information and documentation for integration into AI systems'), source('celex:32024R1689/art_53').
:- pred must_put_copyright_policy/2, gloss('provider must put in place copyright compliance policy'), source('celex:32024R1689/oj#art_53').
:- pred copyright_compliance_policy/1, gloss('policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_training_summary/2, gloss('provider must draw up and make publicly available training content summary'), source('celex:32024R1689/oj#art_53').
:- pred training_summary/1, gloss('publicly available summary about content used for training'), source('celex:32024R1689/oj#art_53').
:- pred exempt_free_open_source_model/1, gloss('free and open-source model exempt from certain obligations'), source('celex:32024R1689/oj#art_53').
:- pred free_open_source_licence/1, gloss('licence allowing access, usage, modification, and distribution'), source('celex:32024R1689/oj#art_53').
:- pred parameters_publicly_available/1, gloss('model parameters, weights, architecture and usage information made publicly available'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate_with_authorities/2, gloss('provider must cooperate with Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

technical_documentation(D) :-
    training_and_testing_process(D),
    evaluation_results(D).

must_provide_technical_documentation(P, M, Requester) :-
    provider(P),
    general_purpose_ai_model(M),
    (ai_office(Requester) ; national_competent_authority(Requester)),
    technical_documentation(D),
    documentation_for(D, M).

must_draw_up_integration_documentation(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

integration_documentation(D) :-
    enables_understanding_of_capabilities_and_limitations(D),
    enables_compliance_with_obligations(D),
    contains_elements_of_annex_12(D).

must_put_copyright_policy(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

copyright_compliance_policy(Policy) :-
    identifies_reservation_of_rights(Policy),
    complies_with_reservation_of_rights(Policy),
    uses_state_of_the_art_technologies(Policy).

must_draw_up_training_summary(P, M) :-
    provider(P),
    general_purpose_ai_model(M).

training_summary(S) :-
    content_used_for_training(S),
    according_to_template(S, ai_office).

exempt_free_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_open_source_licence(Licence),
    released_under(M, Licence),
    allows_access(Licence),
    allows_usage(Licence),
    allows_modification(Licence),
    allows_distribution(Licence),
    parameters_publicly_available(M),
    \+ systemic_risk_applies(M).

systemic_risk_applies(M) :-
    general_purpose_ai_model(M),
    systemic_risk(R),
    risk_associated_with(M, R).

must_cooperate_with_authorities(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    commission_or_national_competent_authority(Authority).

commission_or_national_competent_authority(Authority) :-
    ai_office(Authority).
commission_or_national_competent_authority(Authority) :-
    national_competent_authority(Authority).

may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published_for(M).

must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).

% Provenance
provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(technical_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(integration_documentation/1, 'celex:32024R1689/oj#art_53').
provenance(must_put_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(copyright_compliance_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_summary/2, 'celex:32024R1689/oj#art_53').
provenance(training_summary/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_free_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_53').
provenance(commission_or_national_competent_authority/1, 'celex:32024R1689/oj#art_53').

% References
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_53', 'celex:32019L0790/oj#art_4/par_3').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1/unp_1/pnt_b').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53/par_1').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_97/par_2').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_11').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#anx_12').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
