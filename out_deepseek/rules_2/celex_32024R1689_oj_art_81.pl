% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : db583f7b36c29441bf1aa7d5af0f1b678ba85d2dc18f223ffa3945085aa050e8
% cached     : False
% title      : Union safeguard procedure
:- pred must_enter_consultation/2, gloss('Commission must enter into consultation with market surveillance authority and operator'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate_national_measure/1, gloss('Commission must evaluate the national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_justification/1, gloss('Commission must decide whether the national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision/2, gloss('Commission must notify its decision to the market surveillance authority'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_all_authorities/1, gloss('Commission must inform all other market surveillance authorities of its decision'), source('celex:32024R1689/oj#art_81').
:- pred must_ensure_restrictive_measures/1, gloss('Member States must ensure appropriate restrictive measures are taken'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_commission_of_measures/1, gloss('Member State must inform the Commission of measures taken'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_measure/1, gloss('Member State must withdraw the unjustified measure'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_commission_of_withdrawal/1, gloss('Member State must inform the Commission of withdrawal'), source('celex:32024R1689/oj#art_81').
:- pred must_apply_article_11_procedure/1, gloss('Commission must apply the procedure in Article 11 of Regulation 1025/2012'), source('celex:32024R1689/oj#art_81').
:- pred objection_raised/1, gloss('objection raised by a market surveillance authority to a measure'), source('celex:32024R1689/oj#art_81').
:- pred commission_considers_measure_contrary/1, gloss('Commission considers the measure contrary to Union law'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_justified/1, gloss('national measure is considered justified'), source('celex:32024R1689/oj#art_81').
:- pred national_measure_unjustified/1, gloss('national measure is considered unjustified'), source('celex:32024R1689/oj#art_81').
:- pred non_compliance_attributed_to_shortcomings/1, gloss('non-compliance attributed to shortcomings in harmonised standards or common specifications'), source('celex:32024R1689/oj#art_81').
:- pred within_three_months_of_notification/1, gloss('within three months of notification under Article 79(5)'), source('celex:32024R1689/oj#art_81').
:- pred within_30_days_for_art_5/1, gloss('within 30 days for non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_81').
:- pred within_six_months_of_notification/1, gloss('within six months of notification under Article 79(5)'), source('celex:32024R1689/oj#art_81').
:- pred within_60_days_for_art_5/1, gloss('within 60 days for non-compliance with Article 5 prohibitions'), source('celex:32024R1689/oj#art_81').

% Paragraph 1: Commission consultation and evaluation
must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    objection_raised(Authority),
    within_three_months_of_notification(Authority).

must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    objection_raised(Authority),
    within_30_days_for_art_5(Authority).

must_enter_consultation(Commission, consultation(Authority, Operator)) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    commission_considers_measure_contrary(Authority).

must_evaluate_national_measure(Commission) :-
    must_enter_consultation(Commission, consultation(_, _)).

must_decide_justification(Commission) :-
    must_evaluate_national_measure(Commission),
    within_six_months_of_notification(Commission).

must_decide_justification(Commission) :-
    must_evaluate_national_measure(Commission),
    within_60_days_for_art_5(Commission).

must_notify_decision(Commission, Authority) :-
    must_decide_justification(Commission),
    market_surveillance_authority(Authority).

must_inform_all_authorities(Commission) :-
    must_notify_decision(Commission, _).

% Paragraph 2: Consequences of justification decision
must_ensure_restrictive_measures(MemberState) :-
    national_measure_justified(Measure),
    must_inform_commission_of_measures(MemberState).

must_inform_commission_of_measures(MemberState) :-
    must_ensure_restrictive_measures(MemberState).

must_withdraw_measure(MemberState) :-
    national_measure_unjustified(Measure),
    must_inform_commission_of_withdrawal(MemberState).

must_inform_commission_of_withdrawal(MemberState) :-
    must_withdraw_measure(MemberState).

% Paragraph 3: Shortcomings in standards
must_apply_article_11_procedure(Commission) :-
    national_measure_justified(Measure),
    non_compliance_attributed_to_shortcomings(Measure).

% Provenance
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justification/1, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/1, 'celex:32024R1689/oj#art_81').
provenance(must_ensure_restrictive_measures/1, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_of_measures/1, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/1, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission_of_withdrawal/1, 'celex:32024R1689/oj#art_81').
provenance(must_apply_article_11_procedure/1, 'celex:32024R1689/oj#art_81').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_81').
provenance(commission_considers_measure_contrary/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_justified/1, 'celex:32024R1689/oj#art_81').
provenance(national_measure_unjustified/1, 'celex:32024R1689/oj#art_81').
provenance(non_compliance_attributed_to_shortcomings/1, 'celex:32024R1689/oj#art_81').
provenance(within_three_months_of_notification/1, 'celex:32024R1689/oj#art_81').
provenance(within_30_days_for_art_5/1, 'celex:32024R1689/oj#art_81').
provenance(within_six_months_of_notification/1, 'celex:32024R1689/oj#art_81').
provenance(within_60_days_for_art_5/1, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
