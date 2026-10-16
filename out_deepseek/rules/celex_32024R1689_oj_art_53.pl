% unit       : celex:32024R1689/oj#art_53
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 2 Obligations for providers of general-purpose AI models
% slice sha  : 98329560c8c0362b1af9df35da05c29c7d174e06fcf1633fc809e7ce0b1a11c6
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0136934046dd20a235816cd7375e4018112053cd2784e85a1ebf3b582754ba55
% cached     : False
% title      : Obligations for providers of general-purpose AI models
:- pred must_draw_up_technical_documentation/2, gloss('provider must draw up and keep up-to-date technical documentation of the model'), source('celex:32024R1689/oj#art_53').
:- pred must_make_available_information/2, gloss('provider must make available information and documentation to downstream providers'), source('celex:32024R1689/oj#art_53').
:- pred must_put_in_place_copyright_policy/2, gloss('provider must put in place a policy to comply with Union copyright law'), source('celex:32024R1689/oj#art_53').
:- pred must_make_publicly_available_summary/2, gloss('provider must make publicly available a summary of training content'), source('celex:32024R1689/oj#art_53').
:- pred must_cooperate/2, gloss('provider must cooperate with Commission and national competent authorities'), source('celex:32024R1689/oj#art_53').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_53').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_53').
:- pred open_source_exception_applies/1, gloss('exception for free and open-source models applies'), source('celex:32024R1689/oj#art_53').
:- pred systemic_risk_exception_applies/1, gloss('exception does not apply to models with systemic risks'), source('celex:32024R1689/oj#art_53').

must_draw_up_technical_documentation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_make_available_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_put_in_place_copyright_policy(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_make_publicly_available_summary(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_cooperate(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    \+ may_rely_on_code_of_practice(Provider, Model).

open_source_exception_applies(Model) :-
    general_purpose_ai_model(Model),
    released_under_free_open_source_licence(Model),
    parameters_made_publicly_available(Model),
    \+ systemic_risk_exception_applies(Model).

systemic_risk_exception_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).

released_under_free_open_source_licence(Model) :-
    general_purpose_ai_model(Model).

parameters_made_publicly_available(Model) :-
    general_purpose_ai_model(Model).

provenance(must_draw_up_technical_documentation/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_available_information/2, 'celex:32024R1689/oj#art_53').
provenance(must_put_in_place_copyright_policy/2, 'celex:32024R1689/oj#art_53').
provenance(must_make_publicly_available_summary/2, 'celex:32024R1689/oj#art_53').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_53').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_53').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_53').
provenance(open_source_exception_applies/1, 'celex:32024R1689/oj#art_53').
provenance(systemic_risk_exception_applies/1, 'celex:32024R1689/oj#art_53').
provenance(released_under_free_open_source_licence/1, 'celex:32024R1689/oj#art_53').
provenance(parameters_made_publicly_available/1, 'celex:32024R1689/oj#art_53').

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
