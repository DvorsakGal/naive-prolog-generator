% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : a879a30dafe3b9afc9dfe9e6443819c94c8e6c8a6e6c7226c273055934d3a27d
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred has_high_impact_capabilities/1, gloss('model has high impact capabilities evaluated by appropriate tools'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_on_equivalent_capabilities/1, gloss('Commission decided model has equivalent capabilities or impact'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('model presumed to have high impact capabilities based on computation threshold'), source('celex:32024R1689/oj#art_51').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_on_equivalent_capabilities(M).

has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    presumed_high_impact_capabilities(M).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation(M, Ops),
    Ops > 10^25.

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_on_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
