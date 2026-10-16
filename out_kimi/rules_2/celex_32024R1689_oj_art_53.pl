% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : fd7219afaeae1a6a5e2c1852cc15717d1454af0d14c0d9a0f7b59abcfb59d797
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation'), source('celex:32024R1689/oj#art_53').
:- pred must_provide_technical_documentation/3, gloss('provider must provide technical documentation upon request to authorities'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_integration_documentation/2, gloss('provider must draw up, keep up-to-date and make available documentation for downstream providers'), source('celex:32024R1689/oj#art_53').
:- pred must_put_copyright_policy/1, gloss('provider must put in place policy to comply with copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_draw_up_training_summary/2, gloss('provider must draw up and make publicly available summary about training content'), source('celex:32024R1689/oj#art_53').
:- pred exempt_free_open_source_model/1, gloss('free and open-source model exempt from obligations in paragraphs 1(a) and 1(b)'), source('celex:32024R1689/oj#art_53').
:- pred exempt_from_art_53_1_a/1, gloss('model exempt from technical documentation obligation'), source('celex:32024R1689/oj#art_53').
:- pred exempt_from_art_53_1_b/1, gloss('model exempt from integration documentation obligation'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate_with_authorities/2, gloss('provider must cooperate with Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_53').
:- pred power_to_adopt_delegated_acts_measurement/1, gloss('Commission empowered to adopt delegated acts on measurement methodologies'), source('celex:32024R1689/oj#art_53').
:- pred power_to_adopt_delegated_acts_amend_annexes/1, gloss('Commission empowered to adopt delegated acts to amend Annexes 11 and 12'), source('celex:32024R1689/oj#art_53').

% Core obligations under Article 53(1)

must_draw_up_technical_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ exempt_from_art_53_1_a(M).

must_provide_technical_documentation(P, M, Requester) :-
    must_draw_up_technical_documentation(P, M),
    (ai_office(Requester) ; national_competent_authority(Requester)).

must_draw_up_integration_documentation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ exempt_from_art_53_1_b(M).

must_put_copyright_policy(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

must_draw_up_training_summary(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

% Exemption conditions under Article 53(2)

exempt_free_open_source_model(M) :-
    general_purpose_ai_model(M),
    free_and_open_source_licence(M),
    parameters_publicly_available(M),
    \+ systemic_risk_present(M).

exempt_from_art_53_1_a(M) :-
    exempt_free_open_source_model(M).

exempt_from_art_53_1_b(M) :-
    exempt_free_open_source_model(M).

% Cooperation obligation under Article 53(3)

must_cooperate_with_authorities(P, Authority) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    (commission(Authority) ; national_competent_authority(Authority)).

% Compliance demonstration under Article 53(4)

may_rely_on_code_of_practice(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published_for(M).

must_demonstrate_alternative_compliance(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M),
    \+ may_rely_on_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).

% Delegated acts under Article 53(5) and 53(6)

power_to_adopt_delegated_acts_measurement(commission) :-
    true.

power_to_adopt_delegated_acts_amend_annexes(commission) :-
    true.

% Helper predicates (new, from this provision)

:- pred parameters_publicly_available/1, gloss('model parameters including weights, architecture and usage information are made publicly available'), source('celex:32024R1689/oj#art_53').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_53').
:- pred harmonised_standard_published_for/1, gloss('harmonised standard published covering the obligations'), source('celex:32024R1689/oj#art_53').
:- pred complies_with_harmonised_standard/2, gloss('provider complies with harmonised standard for model'), source('celex:32024R1689/oj#art_53').

parameters_publicly_available(M) :-
    general_purpose_ai_model(M).

commission(commission).

harmonised_standard_published_for(M) :-
    general_purpose_ai_model(M).

complies_with_harmonised_standard(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model(M).

% Provenance facts

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_provide_technical_documentation/3, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_integration_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_draw_up_training_summary/2, 'celex:32024R1689/oj#art_53').
provenance(exempt_free_open_source_model/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_art_53_1_a/1, 'celex:32024R1689/oj#art_53').
provenance(exempt_from_art_53_1_b/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(power_to_adopt_delegated_acts_measurement/1, 'celex:32024R1689/oj#art_53').
provenance(power_to_adopt_delegated_acts_amend_annexes/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_publicly_available/1, 'celex:32024R1689/oj#art_53').
provenance(commission/1, 'celex:32024R1689/oj#art_53').
provenance(harmonised_standard_published_for/1, 'celex:32024R1689/oj#art_53').
provenance(complies_with_harmonised_standard/2, 'celex:32024R1689/oj#art_53').

% Reference facts

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
references('celex:32024R1689/oj#art_53', 'celex:32024R1689/oj#art_78').
