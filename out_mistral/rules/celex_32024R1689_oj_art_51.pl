% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 67a1cb6105ab10c243c708cb35399550e379cddc465e05569b9c328464168d5c
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred high_impact_capabilities_evaluated/1, gloss('high impact capabilities evaluated on the basis of appropriate technical tools and methodologies'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_systemic_risk/1, gloss('Commission decision that model has capabilities or impact equivalent to high impact capabilities'), source('celex:32024R1689/oj#art_51').
:- pred qualified_alert_scientific_panel/1, gloss('qualified alert from the scientific panel'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('presumed to have high impact capabilities based on training computation threshold'), source('celex:32024R1689/oj#art_51').
:- pred training_computation_exceeds_threshold/1, gloss('cumulative amount of computation used for training exceeds 10^25 floating point operations'), source('celex:32024R1689/oj#art_51').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).

commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    decision_by_commission(M, ex_officio).

commission_decision_systemic_risk(M) :-
    general_purpose_ai_model(M),
    qualified_alert_scientific_panel(M),
    decision_by_commission(M, following_alert).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_exceeds_threshold(M).

high_impact_capabilities_evaluated(M) :-
    presumed_high_impact_capabilities(M).

high_impact_capabilities_evaluated(M) :-
    general_purpose_ai_model(M),
    evaluated_by_appropriate_tools(M).

training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation(M, C),
    C > 1e25.

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(qualified_alert_scientific_panel/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
