% unit       : celex:32024R1689/oj#art_51
% title      : Classification of general-purpose AI models as general-purpose AI models with systemic risk
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 1 Classification rules
% slice sha  : d032e28a0dcaaed21aeb6493ce19a2dc7e6d85b4c837b32ecdd4964fdb96b205
% model      : gpt-oss:120b-cloud
% prompt sha : ec35b125ca8c3bdfa516fc4a8efef7324dc0c51dd7ed5289c767d11e27b47a1b
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred general_purpose_ai_model_with_systemic_risk/1,
    gloss('general‑purpose AI model classified as having systemic risk'),
    source('celex:32024R1689/oj#art_51').

:- pred commission_equivalent_capabilities/1,
    gloss('capabilities or impact equivalent to those set out by a Commission decision or scientific panel alert'),
    source('celex:32024R1689/oj#art_51').

:- pred cumulative_floating_point_operations_exceeds_threshold/1,
    gloss('training computation exceeds 1025 floating point operations'),
    source('celex:32024R1689/oj#art_51').

:- pred must_adopt_delegated_acts/1,
    gloss('Commission shall adopt delegated acts to amend thresholds and supplement benchmarks'),
    source('celex:32024R1689/oj#art_51').

% Classification rule
general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    (   high_impact_capabilities(M)
    ;   commission_equivalent_capabilities(M)
    ).

% Presumption of high‑impact capabilities based on computation amount
high_impact_capabilities(M) :-
    general_purpose_ai_model(M),
    cumulative_floating_point_operations_exceeds_threshold(M).

% Duty of the Commission
must_adopt_delegated_acts(C) :-
    ai_office(C).

% Provenance
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_51').
provenance(commission_equivalent_capabilities/1, 'celex:32024R1689/oj#art_51').
provenance(cumulative_floating_point_operations_exceeds_threshold/1, 'celex:32024R1689/oj#art_51').
provenance(must_adopt_delegated_acts/1, 'celex:32024R1689/oj#art_51').

% References
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1/unp_1/pnt_a').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#anx_13').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_1').
references('celex:32024R1689/oj#art_51', 'celex:32024R1689/oj#art_51/par_2').
