% unit       : celex:32024R1689/oj#art_51
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : gpt-oss:120b-cloud
% prompt sha : 2bc56ba081ea4ae7884f20d9a38af2727748c126277b19be23e48600557336dd
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_classification_general_purpose_ai_model_with_systemic_risk/1, gloss('classification of a general‑purpose AI model as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_equivalent/1, gloss('model has capabilities or impact equivalent to those set out based on a Commission decision'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('model is presumed to have high impact capabilities based on training computation'), source('celex:32024R1689/oj#art_51').
:- pred training_computation/2, gloss('cumulative floating point operations used for training a model'), source('celex:32024R1689/oj#art_51').
:- pred must_adopt_delegated_acts/2, gloss('Commission must adopt delegated acts to amend thresholds'), source('celex:32024R1689/oj#art_51').

required_classification_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

required_classification_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent(M).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation(M, Ops),
    Ops > 1025.

must_adopt_delegated_acts(commission, amend_thresholds).

provenance(required_classification_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
