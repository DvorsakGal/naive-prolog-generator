% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a603153adf3aaa18e4a1382355703290660009052d5d4ad8795741f808d2f6ef
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model classified as presenting systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred training_computation_flops/2, gloss('cumulative amount of computation used for training measured in floating point operations'), source('celex:32024R1689/oj#art_51').
:- pred equivalent_capabilities_or_impact_decision/1, gloss('Commission decision finding equivalent capabilities or impact'), source('celex:32024R1689/oj#art_51').
:- pred must_adopt_delegated_acts/2, gloss('obligation on the Commission to adopt delegated acts to amend thresholds or supplement benchmarks'), source('celex:32024R1689/oj#art_51').
:- pred necessary_to_reflect_state_of_art/1, gloss('condition that delegated act is necessary for thresholds to reflect state of the art'), source('celex:32024R1689/oj#art_51').

% Paragraph 1: Classification of general-purpose AI models with systemic risk
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    equivalent_capabilities_or_impact_decision(M).

% Paragraph 2: Presumption of high impact capabilities based on compute threshold
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    training_computation_flops(M, Flops),
    Flops > 1.0e25.

% Paragraph 3: Delegated acts by the Commission to amend thresholds or supplement benchmarks
must_adopt_delegated_acts(commission, amend_thresholds_or_supplement_benchmarks(general_purpose_ai_model_with_systemic_risk)) :-
    necessary_to_reflect_state_of_art(thresholds(general_purpose_ai_model_with_systemic_risk)).

% Provenance
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51').

% References
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
