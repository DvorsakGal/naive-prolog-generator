% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1bc20b5470207d53f2f0bd28bd17e931442e6711f6fcf7ca6ca794a3f0e72133
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred has_high_impact_capabilities/1, gloss('model possesses high impact capabilities evaluated by appropriate tools'), source('celex:32024R1689/oj#art_51').
:- pred has_equivalent_capabilities_or_impact/1, gloss('model has capabilities or impact equivalent to high impact capabilities per Commission decision'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('model presumed to have high impact capabilities based on computation threshold'), source('celex:32024R1689/oj#art_51').
:- pred cumulative_training_computation/2, gloss('cumulative amount of computation used for training measured in floating point operations'), source('celex:32024R1689/oj#art_51').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_equivalent_capabilities_or_impact(M).

has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    presumed_high_impact_capabilities(M).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, Ops),
    Ops > 1025.

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(has_equivalent_capabilities_or_impact/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_training_computation/2, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
