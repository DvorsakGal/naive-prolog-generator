% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7e612dcc65f1407b5c506fb15009ca86a0090825f8435eeb6830df14b74f5240
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred risk_to_health_safety_or_rights/1, gloss('presents risk to health, safety, persons, fundamental rights or public interest'), source('celex:32024R1689/oj#art_82').
:- pred compliant_with_regulation/1, gloss('AI system complies with this Regulation'), source('celex:32024R1689/oj#art_82').
:- pred evaluation_under_art_79/1, gloss('evaluation performed under Article 79'), source('celex:32024R1689/oj#art_82').
:- pred consulted_relevant_authority/1, gloss('market surveillance authority consulted relevant national public authority'), source('celex:32024R1689/oj#art_82').
:- pred finding_of_risk/2, gloss('market surveillance authority finds risk despite compliance'), source('celex:32024R1689/oj#art_82').
:- pred prescribed_period/2, gloss('period prescribed by market surveillance authority for operator to act'), source('celex:32024R1689/oj#art_82').
:- pred corrective_action_taken/2, gloss('corrective action taken by operator for AI systems made available'), source('celex:32024R1689/oj#art_82').
:- pred informed_commission_and_member_states/1, gloss('Member States informed Commission and other Member States of finding'), source('celex:32024R1689/oj#art_82').
:- pred finding_details/4, gloss('details provided: identification data, origin and supply chain, nature of risk, nature and duration of national measures'), source('celex:32024R1689/oj#art_82').
:- pred commission_consultation/2, gloss('Commission entered into consultation with Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred commission_evaluation/2, gloss('Commission evaluated national measures taken'), source('celex:32024R1689/oj#art_82').
:- pred commission_decision/3, gloss('Commission decided whether measure justified and proposed other measures'), source('celex:32024R1689/oj#art_82').
:- pred commission_communicated_decision/2, gloss('Commission communicated decision to Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred commission_informed_other_member_states/1, gloss('Commission informed other Member States of decision'), source('celex:32024R1689/oj#art_82').

finding_of_risk(Msa, S) :-
    market_surveillance_authority(Msa),
    high_risk_ai_system(S),
    evaluation_under_art_79(S),
    consulted_relevant_authority(Msa),
    compliant_with_regulation(S),
    risk_to_health_safety_or_rights(S).

must_take_appropriate_measures(Msa, operator(O), ensure_no_longer_presents_risk(S)) :-
    finding_of_risk(Msa, S),
    operator(O),
    (placing_on_market(S); putting_into_service(S)),
    prescribed_period(Msa, S).

must_ensure_corrective_action(O, all_systems_made_available(S)) :-
    provider(O),
    finding_of_risk(_Msa, S),
    corrective_action_taken(O, S),
    timeline_prescribed_by(Msa, S),
    market_surveillance_authority(Msa).

must_ensure_corrective_action(O, all_systems_made_available(S)) :-
    operator(O),
    \+ provider(O),
    finding_of_risk(_Msa, S),
    corrective_action_taken(O, S),
    timeline_prescribed_by(Msa, S),
    market_surveillance_authority(Msa).

must_inform(MemberState, finding_of_risk(Msa, S)) :-
    member_state(MemberState),
    finding_of_risk(Msa, S),
    informed_commission_and_member_states(MemberState),
    finding_details(S, identification_data, origin_and_supply_chain, nature_of_risk, national_measures).

must_enter_consultation(Commission, member_states_and_operators(MemberStates, Operators)) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_consultation(Commission, Msa),
    commission_evaluation(Commission, national_measures(Msa, S)).

must_decide(Commission, justified(national_measures(Msa, S))) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_evaluation(Commission, national_measures(Msa, S)),
    commission_decision(Commission, national_measures(Msa, S), justified).

must_decide(Commission, propose_other_measures(national_measures(Msa, S))) :-
    ai_office(Commission),
    finding_of_risk(Msa, S),
    commission_evaluation(Commission, national_measures(Msa, S)),
    commission_decision(Commission, national_measures(Msa, S), other_measures).

must_communicate(Commission, decision(MemberStates, Operators)) :-
    ai_office(Commission),
    commission_decision(Commission, _Measures, _Outcome),
    commission_communicated_decision(Commission, member_states(MemberStates)),
    commission_communicated_decision(Commission, operators(Operators)).

must_inform(Commission, other_member_states(MemberStates)) :-
    ai_office(Commission),
    commission_communicated_decision(Commission, _),
    commission_informed_other_member_states(Commission).

provenance(finding_of_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_appropriate_measures/3, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform/2, 'celex:32024R1689/oj#art_82').
provenance(must_enter_consultation/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82/par_1', 'celex:32024R1689/oj#art_82/par_1').
references('celex:32024R1689/oj#art_82/par_1', 'celex:32024R1689/oj#art_82/par_1').
