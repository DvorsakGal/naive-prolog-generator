% unit       : celex:32024R1689/oj#art_93
% title      : Power to request measures
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : gpt-oss:120b-cloud
% prompt sha : d08189c1e6be3103828847ebe8c64afc3f2de6e3d96e13a3247245a053523271
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_93').
:- pred permitted_request_take_appropriate_measures/2, gloss('Commission may request provider to take appropriate measures to comply with obligations'), source('celex:32024R1689/oj#art_93').
:- pred permitted_request_implement_mitigation_measures/3, gloss('Commission may request provider to implement mitigation measures where serious systemic risk is identified'), source('celex:32024R1689/oj#art_93').
:- pred permitted_request_restrict_market/3, gloss('Commission may request provider to restrict making available, withdraw or recall the model'), source('celex:32024R1689/oj#art_93').
:- pred permitted_initiate_structured_dialogue/2, gloss('AI Office may initiate a structured dialogue with the provider before a measure is requested'), source('celex:32024R1689/oj#art_93').
:- pred permitted_make_commitments_binding/3, gloss('Commission may make provider commitments binding after structured dialogue'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments/2, gloss('Provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').

commission(commission).

permitted_request_take_appropriate_measures(Commission, Provider) :-
    commission(Commission),
    provider(Provider).

permitted_request_implement_mitigation_measures(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

permitted_request_restrict_market(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

permitted_initiate_structured_dialogue(AIOffice, Provider) :-
    ai_office(AIOffice),
    provider(Provider).

permitted_make_commitments_binding(Commission, Provider, Model) :-
    commission(Commission),
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    offers_commitments(Provider, Model).

offers_commitments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

provenance(permitted_request_take_appropriate_measures/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_request_implement_mitigation_measures/3, 'celex:32024R1689/oj#art_93').
provenance(permitted_request_restrict_market/3, 'celex:32024R1689/oj#art_93').
provenance(permitted_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(permitted_make_commitments_binding/3, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
