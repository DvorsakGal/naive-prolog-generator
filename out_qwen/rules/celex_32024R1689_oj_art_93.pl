% unit       : celex:32024R1689/oj#art_93
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 5 Supervision, investigation, enforcement and monitoring in respect of providers of general-purpose AI models
% slice sha  : 709c7b986c6266b0df41ef0e70e014e3366eb80290b96fb07b2f7de37a6c6fae
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 72713712898719e99fd4877ab80b1b76f5e93d66159fbc282f442e1dd73f3e80
% cached     : False
% title      : Power to request measures
:- pred may_request_measure/2, gloss('Commission may request a provider to take a specific measure'), source('celex:32024R1689/oj#art_93').
:- pred necessary_and_appropriate/1, gloss('condition for Commission to request measures'), source('celex:32024R1689/oj#art_93').
:- pred serious_and_substantiated_concern_of_systemic_risk_at_union_level/1, gloss('concern arising from evaluation under Article 92'), source('celex:32024R1689/oj#art_93').
:- pred may_initiate_structured_dialogue/2, gloss('AI Office may initiate structured dialogue with provider before requesting measure'), source('celex:32024R1689/oj#art_93').
:- pred may_make_commitments_binding/2, gloss('Commission may make provider commitments binding by decision'), source('celex:32024R1689/oj#art_93').
:- pred offers_commitments_to_implement_mitigation_measures/2, gloss('provider offers commitments during structured dialogue to address systemic risk'), source('celex:32024R1689/oj#art_93').

may_request_measure(commission, compliance(P, obligations(art_53, art_54))) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).

may_request_measure(commission, implement_mitigation_measures(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    serious_and_substantiated_concern_of_systemic_risk_at_union_level(evaluation(art_92)).

may_request_measure(commission, restrict_making_available_on_market(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).

may_request_measure(commission, withdraw(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).

may_request_measure(commission, recall(P)) :-
    provider(P),
    general_purpose_ai_model(_M),
    necessary_and_appropriate(request).

may_initiate_structured_dialogue(ai_office, P) :-
    provider(P),
    general_purpose_ai_model(_M).

may_make_commitments_binding(commission, commitments(P, mitigation_measures(systemic_risk_at_union_level))) :-
    provider(P),
    general_purpose_ai_model(_M),
    offers_commitments_to_implement_mitigation_measures(P, systemic_risk_at_union_level).

provenance(may_request_measure/2, 'celex:32024R1689/oj#art_93').
provenance(necessary_and_appropriate/1, 'celex:32024R1689/oj#art_93').
provenance(serious_and_substantiated_concern_of_systemic_risk_at_union_level/1, 'celex:32024R1689/oj#art_93').
provenance(may_initiate_structured_dialogue/2, 'celex:32024R1689/oj#art_93').
provenance(may_make_commitments_binding/2, 'celex:32024R1689/oj#art_93').
provenance(offers_commitments_to_implement_mitigation_measures/2, 'celex:32024R1689/oj#art_93').

references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_92').
references('celex:32024R1689/oj#art_93', 'celex:32024R1689/oj#art_93/par_2').
