% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 00a7de945667ef358b7a9191c58ff8d5c85816f9c92cc78060e1e7826d3e13ef
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred has_high_impact_capabilities/1, gloss('evaluated high impact capabilities'), source('celex:32024R1689/oj#art_51').
:- pred equivalent_capabilities_or_impact/1, gloss('capabilities or impact equivalent to high impact capabilities'), source('celex:32024R1689/oj#art_51').
:- pred training_computation_threshold_exceeded/1, gloss('training computation exceeds 10^25 FLOPs'), source('celex:32024R1689/oj#art_51').
:- pred systemic_risk_classification/1, gloss('classified as general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_51').

systemic_risk_classification(M) :-
    general_purpose_ai_model(M),
    has_high_impact_capabilities(M).

systemic_risk_classification(M) :-
    general_purpose_ai_model(M),
    equivalent_capabilities_or_impact(M).

has_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    evaluated_with_appropriate_technical_tools(M).

training_computation_threshold_exceeded(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(F),
    training_computation(M, F),
    greater_than(F, 10^25).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_threshold_exceeded(M).

provenance(systemic_risk_classification/1, 'celex:32024R1689/oj#art_51').
provenance(has_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_threshold_exceeded/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
