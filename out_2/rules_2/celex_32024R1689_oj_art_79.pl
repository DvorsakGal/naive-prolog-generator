% unit       : celex:32024R1689/oj#art_79
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : ef54766cb860c5565b59a44b63f9abbde4ca2fd7b7c9d35916b2bb9a1a4d0a8d
% cached     : False
% title      : Procedure at national level for dealing with AI systems presenting a risk
:- pred sufficient_reason/2, gloss('market surveillance authority has sufficient reason to consider system a risk'), source('celex:32024R1689/oj#art_79').
:- pred non_compliant/2, gloss('evaluation finds AI system does not comply with requirements'), source('celex:32024R1689/oj#art_79').
:- pred risk_to_fundamental_rights_identified/1, gloss('risk to fundamental rights has been identified for AI system'), source('celex:32024R1689/oj#art_79').
:- pred made_available_on_union_market/2, gloss('operator has made AI system available on the Union market'), source('celex:32024R1689/oj#art_79').
:- pred operator_fails_to_act/2, gloss('operator does not take adequate corrective action within prescribed period'), source('celex:32024R1689/oj#art_79').
:- pred provisional_measure_taken/2, gloss('market surveillance authority has taken provisional measure concerning AI system'), source('celex:32024R1689/oj#art_79').

must_evaluate(MSA, System) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    sufficient_reason(MSA, System).

provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').

must_require(MSA, corrective_action(Operator, System)) :-
    market_surveillance_authority(MSA),
    operator(Operator),
    ai_system(System),
    non_compliant(MSA, System).

provenance(must_require/2, 'celex:32024R1689/oj#art_79').

must_inform(MSA, national_public_authority(cooperation_info(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    risk_to_fundamental_rights_identified(System).

provenance(must_inform/2, 'celex:32024R1689/oj#art_79').

must_inform(MSA, commission_and_member_states(evaluation_result(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    non_compliant(MSA, System).

provenance(must_inform/2, 'celex:32024R1689/oj#art_79').

must_ensure(Operator, corrective_action_taken(System)) :-
    operator(Operator),
    ai_system(System),
    made_available_on_union_market(Operator, System).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').

must_take_provisional_measures(MSA, System) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    non_compliant(MSA, System),
    operator_fails_to_act(Operator, System).

provenance(must_take_provisional_measures/2, 'celex:32024R1689/oj#art_79').

must_notify(MSA, commission_and_member_states(provisional_measure(System))) :-
    market_surveillance_authority(MSA),
    ai_system(System),
    must_take_provisional_measures(MSA, System).

provenance(must_notify/2, 'celex:32024R1689/oj#art_79').

must_inform(OtherMSA, commission_and_member_states(measure_info(System))) :-
    market_surveillance_authority(OtherMSA),
    ai_system(System),
    provisional_measure_taken(OtherMSA, System).

provenance(must_inform/2, 'celex:32024R1689/oj#art_79').

must_ensure(OtherMSA, restrictive_measure_taken(System)) :-
    market_surveillance_authority(OtherMSA),
    ai_system(System),
    provisional_measure_taken(OtherMSA, System).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').

references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
