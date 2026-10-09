% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1514cd3c83063a3a45fecf55847be6f24ce0b223169b01bdc09a8cc8ff9088c7
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred required_general_purpose_ai_model_with_systemic_risk/1, gloss('general‑purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('general‑purpose AI model presumed to have high impact capabilities'), source('celex:32024R1689/oj#art_51').
:- pred floating_point_operations/2, gloss('amount of floating‑point operations used for training'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_applies/1, gloss('Commission decision ex officio or after qualified alert applies'), source('celex:32024R1689/oj#art_51').
:- pred equivalent_capabilities/1, gloss('capabilities or impact equivalent to those set out in referenced point'), source('celex:32024R1689/oj#art_51').
:- pred must_amend_thresholds/2, gloss('Commission shall adopt delegated acts to amend thresholds'), source('celex:32024R1689/oj#art_51').
:- pred must_supplement_benchmarks/2, gloss('Commission shall adopt delegated acts to supplement benchmarks and indicators'), source('celex:32024R1689/oj#art_51').

required_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

required_general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_applies(M),
    equivalent_capabilities(M).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    floating_point_operations(M, Ops),
    Ops > 1025.

must_amend_thresholds(commission, thresholds(par_1)).

must_supplement_benchmarks(commission, benchmarks(par_1)).

provenance(required_general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_amend_thresholds/2, 'celex:32024R1689/oj#art_51').
provenance(must_supplement_benchmarks/2, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
