% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9073ed5570fad28c2b3b70c34cf19d63950c8906e5fd80e9b73da38ffd6dd63c
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred must_evaluate/2, gloss('market surveillance authority shall carry out evaluation of AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_inform/2, gloss('market surveillance authority shall inform and cooperate with relevant national public authorities'), source('celex:32024R1689/oj#art_79').
:- pred must_require/2, gloss('market surveillance authority shall require operator to take corrective actions, withdraw or recall AI system'), source('celex:32024R1689/oj#art_79').
:- pred must_notify/2, gloss('market surveillance authority shall notify the Commission and other Member States'), source('celex:32024R1689/oj#art_79').
:- pred must_ensure/2, gloss('operator shall ensure corrective action is taken; market surveillance authority shall ensure restrictive measures are taken'), source('celex:32024R1689/oj#art_79').
:- pred must_take_provisional_measures/2, gloss('market surveillance authority shall take provisional measures when operator fails to act'), source('celex:32024R1689/oj#art_79').
:- pred operator_fails_to_act/2, gloss('operator has not taken adequate corrective action within the prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred corrective_action_taken/2, gloss('operator has taken adequate corrective action for AI system'), source('celex:32024R1689/oj#art_79').
:- pred objection/1, gloss('objection raised by a market surveillance authority or the Commission'), source('celex:32024R1689/oj#art_79').
:- pred measure_deemed_justified/1, gloss('provisional measure is deemed justified after no objection within three months'), source('celex:32024R1689/oj#art_79').
:- pred objection_within/2, gloss('objection raised within a given period'), source('celex:32024R1689/oj#art_79').
:- pred risks_to_fundamental_rights_identified/1, gloss('risk to fundamental rights has been identified for AI system'), source('celex:32024R1689/oj#art_79').
:- pred relevant_national_public_authority/1, gloss('national public authority or body referred to in art 77 par 1'), source('celex:32024R1689/oj#art_77/par_1').
:- pred initiating_authority/1, gloss('market surveillance authority that initiated the procedure'), source('celex:32024R1689/oj#art_79').
:- pred other_msa/1, gloss('market surveillance authority other than the initiating one'), source('celex:32024R1689/oj#art_79').
:- pred measure/1, gloss('provisional measure taken by a market surveillance authority'), source('celex:32024R1689/oj#art_79').

must_evaluate(Authority, AI) :-
    market_surveillance_authority(Authority),
    ai_system(AI),
    sufficient_reason_to_consider_risk(Authority, AI).

must_inform(Authority, cooperate_with(NationalPublicAuthority)) :-
    market_surveillance_authority(Authority),
    risks_to_fundamental_rights_identified(AI),
    relevant_national_public_authority(NationalPublicAuthority).

must_require(Authority, corrective_measures(Operator, period(days(15)))) :-
    market_surveillance_authority(Authority),
    operator(Operator),
    ai_system(AI),
    sufficient_reason_to_consider_risk(Authority, AI).

must_inform(Authority, notified_body) :-
    market_surveillance_authority(Authority).

must_notify(Authority, commission_and_member_states) :-
    market_surveillance_authority(Authority).

must_ensure(Operator, corrective_action_taken) :-
    operator(Operator).

must_take_provisional_measures(Authority, AI) :-
    market_surveillance_authority(Authority),
    operator_fails_to_act(Operator, AI).

must_notify(Authority, commission_and_member_states) :-
    market_surveillance_authority(Authority),
    operator_fails_to_act(Operator, AI).

must_inform(Authority, measures_and_info) :-
    other_msa(Authority).

measure_deemed_justified(Measure) :-
    measure(Measure),
    \+ objection_within(period(months(3)), Measure).

must_ensure(Authority, restrictive_measures_taken) :-
    market_surveillance_authority(Authority).

operator_fails_to_act(Operator, AI) :-
    operator(Operator),
    ai_system(AI),
    \+ corrective_action_taken(Operator, AI).

% Provenance
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').
provenance(must_require/2, 'celex:32024R1689/oj#art_79').
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').
provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').
provenance(operator_fails_to_act/2, 'celex:32024R1689/oj#art_79').
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').

% References
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
