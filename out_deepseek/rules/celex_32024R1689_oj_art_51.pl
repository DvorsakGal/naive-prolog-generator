% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3438e5087b1c8a364dee74bbf59c12e039cdc572734dac2768245d54de3a6e92
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred systemic_risk_classification_applies/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').

systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).

:- pred commission_decision_equivalent_capabilities/1, gloss('Commission decision that model has equivalent capabilities or impact'), source('celex:32024R1689/oj#art_51/par_1/unp_1/pnt_b').

commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    % Decision of the Commission, ex officio or following a qualified alert from the scientific panel
    % having regard to the criteria set out in Annex XIII
    true.

:- pred high_impact_capabilities_presumed/1, gloss('presumed high impact capabilities based on computation threshold'), source('celex:32024R1689/oj#art_51/par_2').

high_impact_capabilities_presumed(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, C),
    C > 1.0e25.

:- pred cumulative_training_computation/2, gloss('cumulative amount of computation used for training measured in floating point operations'), source('celex:32024R1689/oj#art_51/par_2').

% Delegated acts to amend thresholds and supplement benchmarks/indicators
:- pred must_adopt_delegated_acts/2, gloss('Commission must adopt delegated acts to amend thresholds and supplement benchmarks'), source('celex:32024R1689/oj#art_51/par_3').

must_adopt_delegated_acts(Commission, delegated_acts(amend(thresholds, benchmarks, indicators))) :-
    true.

provenance(systemic_risk_classification_applies/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_b').
provenance(high_impact_capabilities_presumed/1, 'celex:32024R1689/oj#art_51/par_2').
provenance(cumulative_training_computation/2, 'celex:32024R1689/oj#art_51/par_2').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51/par_3').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
