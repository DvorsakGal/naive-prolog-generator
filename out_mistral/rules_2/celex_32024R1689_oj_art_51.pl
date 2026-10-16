% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 7ead1f3d1ac3baf20bf9ebb92c467a75fdd5471110ca96699ac486c7157c9f2f
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as having systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred high_impact_capabilities_evaluated/1, gloss('model has high impact capabilities evaluated on basis of appropriate technical tools and methodologies including indicators and benchmarks'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_equivalent_capabilities/1, gloss('Commission decision that model has capabilities or impact equivalent to those in point (a) having regard to criteria in Annex XIII'), source('celex:32024R1689/oj#art_51').
:- pred presumed_high_impact_capabilities/1, gloss('model presumed to have high impact capabilities pursuant to point (a)'), source('celex:32024R1689/oj#art_51').
:- pred cumulative_training_computation_exceeds_threshold/1, gloss('cumulative amount of computation used for training measured in floating point operations is greater than 10^25'), source('celex:32024R1689/oj#art_51').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities_evaluated(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_equivalent_capabilities(M).

presumed_high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_training_computation_exceeds_threshold(M).

high_impact_capabilities_evaluated(M) :-
    presumed_high_impact_capabilities(M).

commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M),
    equivalent_to_point_a_capabilities(M).

commission_decision_equivalent_capabilities(M) :-
    general_purpose_ai_model(M),
    equivalent_impact_to_point_a(M).

cumulative_training_computation_exceeds_threshold(M) :-
    general_purpose_ai_model(M),
    training_computation_floating_point_operations(M, F),
    F > 1e25.

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities_evaluated/1, 'celex:32024R1689/oj#art_51').
provenance(commission_decision_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(presumed_high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_training_computation_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').

references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
