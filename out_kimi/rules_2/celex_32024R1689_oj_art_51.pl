% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5a904ab3a21707a282424b946a0d630176810cb45bec3c6cffc10a9f0778b707
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred systemic_risk_model/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred high_impact_capabilities_evaluated/1, gloss('high impact capabilities evaluated using appropriate technical tools and methodologies'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_systemic_risk/1, gloss('Commission decision classifying model as systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred qualified_alert_scientific_panel/1, gloss('qualified alert from the scientific panel'), source('celex:32024R1689/oj#art_51').
:- pred capabilities_equivalent_to_high_impact/1, gloss('capabilities or impact equivalent to high impact capabilities'), source('celex:32024R1689/art_51').
:- pred training_computation_exceeds_threshold/1, gloss('cumulative training computation exceeds 10^25 FLOPs'), source('celex:32024R1689/oj#art_51').
:- pred must_adapt_thresholds/2, gloss('Commission shall adopt delegated acts to amend thresholds'), source('celex:32024R1689/oj#art_51').

systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).

systemic_risk_model(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).

high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    evaluated_with_appropriate_tools(M).

commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decides(systemic_risk(M), justified),
    qualified_alert_scientific_panel(Alert),
    capabilities_equivalent_to_high_impact(M),
    criteria_annex_13_applies(M).

commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decides(systemic_risk(M), justified),
    \+ qualified_alert_scientific_panel(_),
    capabilities_equivalent_to_high_impact(M),
    criteria_annex_13_applies(M).

high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_exceeds_threshold(M).

training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    floating_point_operation(F),
    training_computation(M, F),
    cumulative_amount(F, Amount),
    Amount > 1025.

must_adapt_thresholds(commission, thresholds(art_51)) :-
    necessary_to_reflect_state_of_the_art.

must_adapt_thresholds(commission, benchmarks_and_indicators(art_51)) :-
    necessary_to_reflect_state_of_the_art.

provenance(systemic_risk_model/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
provenance(must_adapt_thresholds/2, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
