% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : ba50c791407e3fe1f18869bb8d8e90f28114cc313c614f6e43c0db705c5ef990
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation of the model'), source('celex:32024R1689/oj#art_53').
:- pred must_make_available_information_to_integrators/2, gloss('provider must make available information and documentation to AI system providers who intend to integrate the model'), source('celex:32024R1689/oj#art_53').
:- pred must_put_in_place_copyright_policy/1, gloss('provider must put in place a policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_publish_training_content_summary/1, gloss('provider must draw up and make publicly available a sufficiently detailed summary about the content used for training'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate_with_authorities/2, gloss('provider must cooperate with the Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider who does not adhere to approved code of practice or harmonised standard must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_53').
:- pred open_source_exception_applies_to_obligations/1, gloss('exception for free and open-source models applies to obligations in paragraphs 1(a) and 1(b)'), source('celex:32024R1689/oj#art_53').
:- pred systemic_risk_model/1, gloss('general-purpose AI model with systemic risks'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ open_source_exception_applies_to_obligations(Model).

must_make_available_information_to_integrators(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ open_source_exception_applies_to_obligations(Model).

must_put_in_place_copyright_policy(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_).

must_publish_training_content_summary(Provider) :-
    provider(Provider),
    general_purpose_ai_model(_).

must_cooperate_with_authorities(Provider, Authority) :-
    provider(Provider),
    general_purpose_ai_model(_),
    ( Authority = ai_office ; national_competent_authority(Authority) ).

may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_rely_on_code_of_practice(Provider, Model),
    \+ presumed_conformity(Model).

open_source_exception_applies_to_obligations(Model) :-
    general_purpose_ai_model(Model),
    free_and_open_source_licence(Model),
    parameters_publicly_available(Model),
    \+ systemic_risk_model(Model).

systemic_risk_model(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information_to_integrators/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/1, 'celex:32024R1689/oj#art_53').
provenance(must_publish_training_content_summary/1, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate_with_authorities/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(open_source_exception_applies_to_obligations/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_53').

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
