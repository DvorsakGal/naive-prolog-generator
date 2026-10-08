% unit       : celex:32024R1689/oj#art_79
% title      : Procedure at national level for dealing with AI systems presenting a risk
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 3c5ca4aeb6b0c3ae378348645aeb50c9c7900701c70bed42b107ee1c6716ac59
% model      : gpt-oss:120b-cloud
% prompt sha : ebe2beca7e4fc2918e35bf5fc663f1a8d27e3ffebb4decc58e55fadd448ccd0e
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred presenting_risk/1, gloss('AI system presenting a risk'), source('celex:32024R1689/oj#art_79').
:- pred sufficient_reason/2, gloss('sufficient reason for authority to consider a risk'), source('celex:32024R1689/oj#art_79').
:- pred risks_to_fundamental_rights_identified/1, gloss('risk to fundamental rights identified in AI system'), source('celex:32024R1689/oj#art_79').
:- pred national_public_authority/1, gloss('relevant national public authority or body'), source('celex:32024R1689/oj#art_79').
:- pred relevant_operator/2, gloss('operator relevant to AI system'), source('celex:32024R1689/oj#art_79').
:- pred evaluation_finds_non_compliance/2, gloss('evaluation finds non‑compliance'), source('celex:32024R1689/oj#art_79').
:- pred required_corrective_action/3, gloss('authority requires corrective action, withdrawal or recall'), source('celex:32024R1689/oj#art_79').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_79').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance_cross_border/1, gloss('non‑compliance not restricted to national territory'), source('celex:32024R1689/oj#art_79').
:- pred operator_fails_to_act/2, gloss('operator does not take adequate corrective action'), source('celex:32024R1689/oj#art_79').
:- pred other_authority/1, gloss('market surveillance authority other than the initiating one'), source('celex:32024R1689/oj#art_79').
:- pred no_objection_within/2, gloss('no objection raised within given period'), source('celex:32024R1689/oj#art_79').
:- pred non_compliance/1, gloss('AI system is non‑compliant'), source('celex:32024R1689/oj#art_79').

% 1. Duty to evaluate AI systems presenting a risk
must_evaluate(M, S) :-
    market_surveillance_authority(M),
    presenting_risk(S),
    sufficient_reason(M, S).
provenance(must_evaluate/2, 'celex:32024R1689/oj#art_79').

% 2. Duty to inform and cooperate when risks to fundamental rights are identified
must_inform_and_cooperate(M, NA) :-
    market_surveillance_authority(M),
    risks_to_fundamental_rights_identified(S),
    national_public_authority(NA).
provenance(must_inform_and_cooperate/2, 'celex:32024R1689/oj#art_79').

% 3. Operators must cooperate with the authority and other national public authorities
must_cooperate(Op, M) :-
    operator(Op),
    market_surveillance_authority(M),
    relevant_operator(Op, _S).
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_79').

% 4. Authority must require corrective action, withdrawal or recall when non‑compliance is found
required_corrective_action(M, Op, S) :-
    market_surveillance_authority(M),
    evaluation_finds_non_compliance(M, S),
    relevant_operator(Op, S).
provenance(required_corrective_action/3, 'celex:32024R1689/oj#art_79').

% 5. Authority shall inform the relevant notified body
must_inform(M, NB) :-
    market_surveillance_authority(M),
    notified_body(NB).
provenance(must_inform/2, 'celex:32024R1689/oj#art_79').

% 6. Cross‑border non‑compliance: authority must inform the Commission and other Member States
must_inform_cross_border(M, C) :-
    market_surveillance_authority(M),
    non_compliance_cross_border(S),
    commission(C).
provenance(must_inform_cross_border/2, 'celex:32024R1689/oj#art_79').

must_inform_cross_border(M, MS) :-
    market_surveillance_authority(M),
    non_compliance_cross_border(S),
    member_state(MS).
provenance(must_inform_cross_border/2, 'celex:32024R1689/oj#art_79').

% 7. Operator must ensure corrective action for all AI systems it has placed on the Union market
must_ensure(Op, corrective_action(S)) :-
    operator(Op),
    making_available_on_market(S),
    relevant_operator(Op, S).
provenance(must_ensure/2, 'celex:32024R1689/oj#art_79').

% 8. If operator fails to act, authority must take provisional measures (prohibit, restrict, withdraw, recall)
required_provisional_measures(M, S) :-
    market_surveillance_authority(M),
    operator_fails_to_act(Op, S).
provenance(required_provisional_measures/2, 'celex:32024R1689/oj#art_79').

% 9. Authority must notify the Commission and other Member States of provisional measures
must_notify(M, C) :-
    market_surveillance_authority(M),
    commission(C),
    operator_fails_to_act(Op, S).
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').

must_notify(M, MS) :-
    market_surveillance_authority(M),
    member_state(MS),
    operator_fails_to_act(Op, S).
provenance(must_notify/2, 'celex:32024R1689/oj#art_79').

% 10. Other authorities must inform the Commission and other Member States of measures and objections
must_inform_other(OtherM, C) :-
    other_authority(OtherM),
    commission(C),
    non_compliance(S).
provenance(must_inform_other/2, 'celex:32024R1689/oj#art_79').

must_inform_other(OtherM, MS) :-
    other_authority(OtherM),
    member_state(MS),
    non_compliance(S).
provenance(must_inform_other/2, 'celex:32024R1689/oj#art_79').

% 11. Measure deemed justified if no objection within three months
measure_deemed_justified(Meas) :-
    no_objection_within(Meas, three_months).
provenance(measure_deemed_justified/1, 'celex:32024R1689/oj#art_79').

% 12. Authorities must ensure appropriate restrictive measures are taken without undue delay
must_ensure_restrictive_measures(M, S) :-
    market_surveillance_authority(M),
    non_compliance(S).
provenance(must_ensure_restrictive_measures/2, 'celex:32024R1689/oj#art_79').

% References
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_3/pnt_19').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2/unp_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_40').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_41').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_50').
references('celex:32024R1689/oj#art_79', 'celex:32019R1020/oj#art_18').
references('celex:32024R1689/oj#art_79', 'celex:32024R1689/oj#art_79/par_8').
