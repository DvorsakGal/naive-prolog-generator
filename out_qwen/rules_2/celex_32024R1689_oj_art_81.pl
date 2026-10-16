% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 7f525b876ddd2b89baaee3f2241013472d120b9a168689d5bc7a56de1b449b4a
% cached     : False
% title      : Union safeguard procedure
:- pred union_safeguard_procedure_applies/1, gloss('Union safeguard procedure is triggered for a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_enter_into_consultation/2, gloss('Commission must enter into consultation regarding a national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_on_national_measure/2, gloss('Commission must decide whether a national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision_to_authority/2, gloss('Commission must notify its decision to the market surveillance authority concerned'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_other_authorities/2, gloss('Commission must inform all other market surveillance authorities of its decision'), source('celex:32024R1689/oj#art_81').
:- pred must_take_restrictive_measures/2, gloss('Member States must take appropriate restrictive measures in respect of an AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_unjustified_measure/2, gloss('Member State concerned must withdraw an unjustified national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_standards_procedure/2, gloss('Commission must apply procedure for shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised_by_authority/2, gloss('market surveillance authority raises objection to a measure taken by another authority'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_measure_contrary_to_law/1, gloss('Commission considers the national measure to be contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_with_art_5_prohibition/1, gloss('non-compliance with prohibition of AI practices referred to in Article 5'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_justified/1, gloss('national measure is considered justified by the Commission'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_attributed_to_standards_shortcoming/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').

union_safeguard_procedure_applies(M) :-
    objection_raised_by_authority(_, M).
union_safeguard_procedure_applies(M) :-
    commission_considers_measure_contrary_to_law(M).

must_enter_into_consultation(commission, M) :-
    union_safeguard_procedure_applies(M),
    relevant_market_surveillance_authority(A),
    operator(O),
    must_evaluate_national_measure(commission, M).

must_decide_on_national_measure(commission, M) :-
    union_safeguard_procedure_applies(M),
    must_evaluate_national_measure(commission, M).

must_notify_decision_to_authority(commission, A) :-
    must_decide_on_national_measure(commission, _M),
    relevant_market_surveillance_authority(A).

must_inform_other_authorities(commission, M) :-
    must_decide_on_national_measure(commission, M),
    market_surveillance_authority(A),
    \+ relevant_market_surveillance_authority(A).

must_take_restrictive_measures(member_state, S) :-
    national_measure_justified(M),
    ai_system(S),
    subject_of_measure(M, S).

must_withdraw_unjustified_measure(member_state, M) :-
    must_decide_on_national_measure(commission, M),
    \+ national_measure_justified(M).

must_apply_standards_procedure(commission, M) :-
    national_measure_justified(M),
    non_compliance_attributed_to_standards_shortcoming(M).

provenance(union_safeguard_procedure_applies/1, 'celex:32024R1689/oj#art_81').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_on_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision_to_authority/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_other_authorities/2, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_unjustified_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_standards_procedure/2, 'celex:32024R1689/oj#art_81').
provenance(objection_raised_by_authority/2, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary_to_law/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_with_art_5_prohibition/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_attributed_to_standards_shortcoming/1, 'celex:32024R1689/oj#art_81').

references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
