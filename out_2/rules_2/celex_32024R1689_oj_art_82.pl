% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3e9e35e83b0cf08f8d7580eb3ec90ffc28f092aeb209e43f73447c68d1c54b6e
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred operator_of_system/2, gloss('operator responsible for AI system'), source('derived').
:- pred presents_risk/1, gloss('AI system presents a risk'), source('derived').
:- pred timeline_prescribed_by_msa/2, gloss('timeline prescribed by market surveillance authority for AI system'), source('derived').
:- pred commission/1, gloss('European Commission'), source('derived').
:- pred informs_to_commission/1, gloss('Member State informs Commission'), source('derived').
:- pred informs_to_other_member_states/1, gloss('Member State informs other Member States'), source('derived').

must_require(MSA, requirement_take_measures(O, S)) :-
    market_surveillance_authority(MSA),
    operator(O),
    operator_of_system(O, S),
    high_risk_ai_system(S),
    presents_risk(S),
    placing_on_market(S).

must_ensure(O, corrective_action_taken(S)) :-
    (provider(O) ; operator(O)),
    operator_of_system(O, S),
    placing_on_market(S),
    market_surveillance_authority(MSA),
    timeline_prescribed_by_msa(MSA, S).

must_inform(MS, finding_information(par_1)) :-
    member_state(MS),
    informs_to_commission(MS),
    informs_to_other_member_states(MS).

must_enter_into_consultation(Comm, consultation(MS_list, Ops_list)) :-
    commission(Comm),
    commission(Comm).

must_evaluate(Comm, national_measures_taken) :-
    commission(Comm),
    commission(Comm).

must_communicate(Comm, decision(MS_list, Ops_list)) :-
    commission(Comm),
    commission(Comm).

provenance(must_require/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_into_consultation/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
