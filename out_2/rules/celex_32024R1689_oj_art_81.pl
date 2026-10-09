% unit       : celex:32024R1689/oj#art_81
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : aa42e2fde627ea83e0e422927d80fe4dce2b9ea0601237648d1894a350e8d9c0
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 44088d25666bc410587322e787817e8ed4b64f2ee56fcfcce4616115633c6522
% cached     : False
% title      : Union safeguard procedure
:- pred must_enter_into_consultation/2, gloss('Commission must consult with the market surveillance authority of the relevant Member State and the operator(s)'), source('celex:32024R1689/oj#art_81').
:- pred must_evaluate_national_measure/2, gloss('Commission must evaluate the national measure'), source('celex:32024R1689/oj#art_81').
:- pred must_decide_justified/2, gloss('Commission must decide whether the national measure is justified'), source('celex:32024R1689/oj#art_81').
:- pred must_notify_decision/2, gloss('Commission must notify its decision to the market surveillance authority of the Member State concerned'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_all_authorities/1, gloss('Commission must inform all other market surveillance authorities of its decision'), source('celex:32024R1689/oj#art_81').

:- pred must_take_restrictive_measures/2, gloss('Member State must take appropriate restrictive measures concerning the AI system'), source('celex:32024R1689/oj#art_81').
:- pred must_inform_commission/2, gloss('Member State must inform the Commission accordingly'), source('celex:32024R1689/oj#art_81').
:- pred must_withdraw_measure/2, gloss('Member State must withdraw the national measure'), source('celex:32024R1689/oj#art_81').

:- pred must_apply_procedure/2, gloss('Commission must apply the procedure provided for in the referenced article'), source('celex:32024R1689/oj#art_81').

must_enter_into_consultation(commission, consultation(MSA, Operator)) :-
    market_surveillance_authority(MSA),
    operator(Operator).

must_evaluate_national_measure(commission, measure(Measure)) :-
    % Measure is the national measure objected to
    true.

must_decide_justified(commission, decision(Measure, justified)) :-
    must_evaluate_national_measure(commission, measure(Measure)).

must_notify_decision(commission, notification(Measure, MSA)) :-
    must_decide_justified(commission, decision(Measure, justified)),
    market_surveillance_authority(MSA).

must_inform_all_authorities(commission) :-
    must_notify_decision(commission, _).

must_take_restrictive_measures(MSA, ai_system(System)) :-
    market_surveillance_authority(MSA),
    ai_system(System).

must_inform_commission(MSA, info(restrictive_measures_taken)) :-
    must_take_restrictive_measures(MSA, _).

must_withdraw_measure(MSA, measure(Measure)) :-
    market_surveillance_authority(MSA),
    % This clause applies when the Commission considers the measure unjustified
    true.

must_inform_commission(MSA, info(measure_withdrawn)) :-
    must_withdraw_measure(MSA, _).

must_apply_procedure(commission, procedure(art_11)) :-
    % Applies when national measure justified and non‑compliance due to standards/specifications
    true.

% Provenance
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_81').
provenance(must_evaluate_national_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_decide_justified/2, 'celex:32024R1689/oj#art_81').
provenance(must_notify_decision/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_all_authorities/1, 'celex:32024R1689/oj#art_81').
provenance(must_take_restrictive_measures/2, 'celex:32024R1689/oj#art_81').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_81').
provenance(must_withdraw_measure/2, 'celex:32024R1689/oj#art_81').
provenance(must_apply_procedure/2, 'celex:32024R1689/oj#art_81').

% References
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_81', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_81', 'celex:32012R1025/oj#art_11').
