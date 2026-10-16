% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 99449cc3a58e5a3705058c2c2352282e4e2f02601617f7ce0c66d72773399311
% cached     : False
% title      : Power to request measures
:- pred must_take_measures/2, gloss('provider must take measures to comply with obligations'), source('celex:32024R1689/oj#art_93').
:- pred must_implement_mitigation/2, gloss('provider must implement mitigation measures for systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred must_restrict_withdraw_recall/2, gloss('provider must restrict, withdraw or recall the model'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding/2, gloss('Commission may make provider commitments binding'), source('celex:32024R1689/oj#art_93').
:- pred systemic_risk_concern/1, gloss('evaluation gave rise to serious and substantiated concern of systemic risk'), source('celex:32024R1689/oj#art_93').
:- pred offers_mitigation_commitments/2, gloss('provider offers commitments to implement mitigation measures'), source('celex:32024R1689/oj#art_93').

must_take_measures(Provider, comply_with_obligations) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    % Commission may request this where necessary and appropriate
    true.

must_implement_mitigation(Provider, mitigation_measures) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_concern(Model).

must_restrict_withdraw_recall(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model).

may_initiate_dialogue(ai_office, Provider) :-
    ai_office(ai_office),
    provider(Provider),
    general_purpose_ai_model(Model).

may_make_commitments_binding(commission, commitments(Provider)) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model),
    offers_mitigation_commitments(Provider, Model).

systemic_risk_concern(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(Model).

offers_mitigation_commitments(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk(Model).

provenance(must_take_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(systemic_risk_concern/1, 'celex:32024R1689/oj#art_93').
provenance(offers_mitigation_commitments/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
