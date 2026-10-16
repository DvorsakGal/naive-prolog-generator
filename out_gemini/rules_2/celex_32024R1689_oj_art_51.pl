% unit       : celex:32024R1689/oj#art_51
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b198f68c86e4c3877055409982c48ea39172828e176d29ad5c453236c2e69ba3
% cached     : False
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('General-purpose AI model classified as presenting systemic risk'), source('celex:32024R1689/oj#art_51').
:- pred commission_decision_systemic_risk/1, gloss('Commission decision classifying a general-purpose AI model as having equivalent capabilities/impact to high-impact capabilities'), source('celex:32024R1689/oj#art_51').
:- pred cumulative_computation_training_flops/2, gloss('Cumulative amount of computation used for training an AI model measured in floating point operations'), source('celex:32024R1689/oj#art_51').
:- pred must_adopt_delegated_acts/2, gloss('Commission must adopt delegated acts to amend thresholds or supplement benchmarks and indicators'), source('celex:32024R1689/oj#art_51').

% Paragraph 1: Classification as general-purpose AI model with systemic risk
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    high_impact_capabilities(M).

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    commission_decision_systemic_risk(M).

% Paragraph 2: Presumption of high impact capabilities based on training compute > 10^25 FLOPs
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_computation_training_flops(M, Flops),
    Flops > 1.0e25.

% Paragraph 3: Commission delegated acts mandate
must_adopt_delegated_acts(Commission, amend_thresholds_or_supplement_benchmarks(art_51)) :-
    commission(Commission).

% Provenance facts
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(high_impact_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/2, 'celex:32024R1689/oj#art_51').

% Reference facts
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
