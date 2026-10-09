% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : d1cde0915395d93031219f566c1578fa21fece90d7e69b0b26f548a7c10dc71f
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred commission_equivalent_capabilities/1, gloss('capabilities or impact equivalent to those set out in the reference based on a Commission decision'), source('celex:32024R1689/oj#art_51').
:- pred has_training_computation/2, gloss('cumulative amount of computation used for training measured in floating point operations'), source('celex:32024R1689/oj#art_51').

systemic_risk(S) :-
    general_purpose_ai_model(S),
    (   high_impact_capabilities(S)
    ;   commission_equivalent_capabilities(S)
    ).

provenance(systemic_risk/1, 'celex:32024R1689/oj#art_51').

high_impact_capabilities(S) :-
    has_training_computation(S, Ops),
    Ops > 1025.

provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').

must_adopt(commission, delegated_act_amending_thresholds).

provenance(must_adopt/2, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
