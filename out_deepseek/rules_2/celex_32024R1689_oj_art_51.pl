% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : d416b92a6b72fa393f2456d0fa9f1f10ff686809b6b237200aceeadad824b717
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred systemic_risk_classification_applies/1, gloss('general-purpose AI model classified as having systemic risk'), source('reconciled').
:- pred high_impact_capabilities_evaluated/1, gloss('high impact capabilities evaluated on the basis of appropriate technical tools and methodologies'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_equivalent_capabilities/1, gloss('Commission decision that model has capabilities or impact equivalent to point (a)'), source('celex:32024R1689/oj#art_51').
:- pred cumulative_computation_exceeds_threshold/1, gloss('cumulative amount of computation used for training measured in floating point operations exceeds 10^25'), source('celex:32024R1689/oj#art_51').

systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).

systemic_risk_classification_applies(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).

high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    cumulative_computation_exceeds_threshold(M).

provenance(systemic_risk_classification_applies/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
