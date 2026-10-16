% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 3c7635e6e8fb150319a748018633c46560536915005c22cc7d761fedd5269a95
% cached     : False
% title      : Union safeguard procedure
:- pred union_safeguard_procedure_applies/1, gloss('circumstance triggering the Union safeguard procedure'), source('celex:32024R1689/oj#art_81').
:- pred must_enter_consultation/2, gloss('Commission obligation to consult on a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate_national_measure/2, gloss('Commission obligation to evaluate a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_justification/2, gloss('Commission obligation to decide if a national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision/2, gloss('Commission obligation to notify its decision to an authority'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_authorities/2, gloss('Commission obligation to inform other authorities of a decision'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member State obligation to take restrictive measures on an AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_measure/2, gloss('Member State obligation to withdraw an unjustified measure'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_standard_procedure/2, gloss('Commission obligation to apply procedure for standard shortcomings'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/1, gloss('market surveillance authority raised objection to a measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_contrary_to_law/1, gloss('Commission considers a measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_with_art_5/1, gloss('non-compliance concerns prohibition in Article 5'), source('celex:32024R1689/oj#art_81').
:- pred measure_justified/1, gloss('Commission considers the national measure justified'), source('celex:32024R1689/oj#art_81').
:- pred measure_unjustified/1, gloss('Commission considers the national measure unjustified'), source('celex:32024R1689/oj#art_81').
:- pred shortcoming_in_standards/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

union_safeguard_procedure_applies(M) :-
    objection_raised(M).
union_safeguard_procedure_applies(M) :-
    commission_considers_contrary_to_law(M).

must_enter_consultation(commission, M) :-
    union_safeguard_procedure_applies(M),
    market_surveillance_authority(A),
    operator(O).

must_evaluate_national_measure(commission, M) :-
    union_safeguard_procedure_applies(M).

must_decide_justification(commission, M) :-
    union_safeguard_procedure_applies(M).

must_notify_decision(commission, M) :-
    union_safeguard_procedure_applies(M),
    market_surveillance_authority(A).

must_inform_authorities(commission, M) :-
    union_safeguard_procedure_applies(M).

must_take_restrictive_measures(member_state, S) :-
    measure_justified(M),
    ai_system(S).

must_withdraw_measure(member_state, M) :-
    measure_unjustified(M).

must_apply_standard_procedure(commission, M) :-
    measure_justified(M),
    shortcoming_in_standards(M).

provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_standard_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_contrary_to_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_art_5/1, 'celex:32024R1689/oj#art_81').
provenance(measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(shortcoming_in_standards/1, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
