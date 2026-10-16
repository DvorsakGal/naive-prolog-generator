% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c5ed54e411e338d2b87c16c9e6060ac88778cab495d7bfa3256fffe7e99c11ea
% cached     : False
% title      : Power to request measures
:- pred must_take_measures/2, gloss('Commission may request provider to take measures'), source('celex:32024R1689/oj#art_93').
:- pred must_implement_mitigation/2, gloss('Commission may request provider to implement mitigation measures'), source('celex:32024R1689/oj#art_93').
:- pred must_restrict_withdraw_or_recall/2, gloss('Commission may request provider to restrict, withdraw or recall model'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_dialogue/2, gloss('AI Office may initiate structured dialogue with provider'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding/2, gloss('Commission may make provider commitments binding'), source('celex:32024R1689/oj#art_93').

must_take_measures(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    necessary_and_appropriate.

must_implement_mitigation(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    evaluation_art_92(P),
    serious_and_substantiated_concern(P),
    systemic_risk_at_union_level(P).

must_restrict_withdraw_or_recall(Commission, provider(P)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P).

may_initiate_dialogue(ai_office(Office), provider(P)) :-
    ai_office(Office),
    provider(P),
    general_purpose_ai_model_provider(P),
    before_requested_measure(P).

may_make_commitments_binding(Commission, commitments(P, Measures)) :-
    commission(Commission),
    provider(P),
    general_purpose_ai_model_provider(P),
    systemic_risk(P),
    offers_commitments(P, Measures),
    addresses_systemic_risk_at_union_level(Measures).

provenance(must_take_measures/2, 'celex:32024R1689/oj#art_93').
provenance(must_implement_mitigation/2, 'celex:32024R1689/oj#art_93').
provenance(must_restrict_withdraw_or_recall/2, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
