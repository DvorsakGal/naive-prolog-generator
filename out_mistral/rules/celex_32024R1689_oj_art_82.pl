% unit       : celex:32024R1689/oj#art_82
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : ccb2b78252b2561b9526853368aa5121294866adf3005bee3b8820c79a58f8e0
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f8847becbbb706d56e1921c7629a88de9a27394ab48b0c28ec01441890e21809
% cached     : False
% title      : Compliant AI systems which present a risk
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under the regulation'), source('celex:32024R1689/oj#art_82').
:- pred presents_risk/1, gloss('AI system presents a risk to health, safety, fundamental rights, or public interest'), source('celex:32024R1689/oj#art_82').
:- pred compliant_ai_system/1, gloss('AI system complies with the regulation'), source('celex:32024R1689/oj#art_82').
:- pred evaluation_under_art_79/1, gloss('evaluation performed under Article 79'), source('celex:32024R1689/oj#art_82').
:- pred consulted_national_public_authority/2, gloss('market surveillance authority consulted the national public authority'), source('celex:32024R1689/oj#art_82').
:- pred finding_of_risk/2, gloss('market surveillance authority finds that a compliant high-risk AI system presents a risk'), source('celex:32024R1689/oj#art_82').
:- pred risk_to_health_or_safety/1, gloss('risk to the health or safety of persons'), source('celex:32024R1689/oj#art_82').
:- pred risk_to_fundamental_rights/1, gloss('risk to fundamental rights'), source('celex:32024R1689/oj#art_82').
:- pred risk_to_public_interest/1, gloss('risk to other aspects of public interest protection'), source('celex:32024R1689/oj#art_82').
:- pred corrective_action_taken/2, gloss('operator ensures corrective action is taken for AI system'), source('celex:32024R1689/oj#art_82').
:- pred made_available_on_union_market/2, gloss('operator has made AI system available on the Union market'), source('celex:32024R1689/oj#art_82').
:- pred member_state_informs_commission/2, gloss('Member State immediately informs the Commission of a finding'), source('celex:32024R1689/oj#art_82').
:- pred member_state_informs_other_member_states/2, gloss('Member State immediately informs other Member States of a finding'), source('celex:32024R1689/oj#art_82').
:- pred commission_consults/2, gloss('Commission enters into consultation with Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred commission_evaluates_national_measures/2, gloss('Commission evaluates the national measures taken'), source('celex:32024R1689/oj#art_82').
:- pred commission_decides_justification/2, gloss('Commission decides whether the national measure is justified'), source('celex:32024R1689/oj#art_82').
:- pred commission_proposes_other_measures/2, gloss('Commission proposes other appropriate measures where necessary'), source('celex:32024R1689/oj#art_82').
:- pred commission_communicates_decision/3, gloss('Commission immediately communicates its decision to Member States and operators'), source('celex:32024R1689/oj#art_82').
:- pred commission_informs_other_member_states/2, gloss('Commission informs the other Member States of its decision'), source('celex:32024R1689/oj#art_82').
:- pred prescribed_period/2, gloss('period prescribed by the market surveillance authority'), source('celex:32024R1689/oj#art_82').
:- pred without_undue_delay/1, gloss('action taken without undue delay'), source('celex:32024R1689/oj#art_82').

risk_to_health_or_safety(S) :-
    presents_risk(S),
    risk_to_health_or_safety_of_persons(S).

risk_to_fundamental_rights(S) :-
    presents_risk(S),
    risk_to_fundamental_rights_of_persons(S).

risk_to_public_interest(S) :-
    presents_risk(S),
    risk_to_other_aspects_of_public_interest_protection(S).

presents_risk(S) :-
    risk_to_health_or_safety(S).
presents_risk(S) :-
    risk_to_fundamental_rights(S).
presents_risk(S) :-
    risk_to_public_interest(S).

finding_of_risk(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    compliant_ai_system(S),
    evaluation_under_art_79(S),
    consulted_national_public_authority(MSA, S),
    presents_risk(S).

must_take_appropriate_measures(MSA, S) :-
    finding_of_risk(MSA, S),
    must_eliminate_risk(MSA, S).

must_eliminate_risk(MSA, S) :-
    finding_of_risk(MSA, S),
    prescribed_period(MSA, Period),
    without_undue_delay(within(Period)).

must_ensure_no_risk_when_placed(MSA, S) :-
    finding_of_risk(MSA, S),
    must_eliminate_risk(MSA, S).

must_take_corrective_action(Operator, S) :-
    operator(Operator),
    finding_of_risk(_MSA, S),
    made_available_on_union_market(Operator, S),
    corrective_action_taken(Operator, S).

must_ensure_corrective_action_all_systems(Operator, S) :-
    operator(Operator),
    finding_of_risk(MSA, S),
    made_available_on_union_market(Operator, S),
    prescribed_period(MSA, Period),
    corrective_action_taken(Operator, within(Period, S)).

must_inform_commission(MemberState, Finding) :-
    member_state(MemberState),
    finding_of_risk(_MSA, S),
    Finding = finding(S),
    member_state_informs_commission(MemberState, Finding).

must_inform_other_member_states(MemberState, Finding) :-
    member_state(MemberState),
    finding_of_risk(_MSA, S),
    Finding = finding(S),
    member_state_informs_other_member_states(MemberState, Finding).

must_consult(Commission, MemberStates) :-
    finding_of_risk(_MSA, S),
    commission_consults(Commission, MemberStates).

must_evaluate_national_measures(Commission, Measures) :-
    finding_of_risk(_MSA, S),
    commission_evaluates_national_measures(Commission, Measures).

must_decide_justification(Commission, Measure) :-
    finding_of_risk(_MSA, S),
    commission_decides_justification(Commission, Measure).

must_propose_other_measures(Commission, Measures) :-
    finding_of_risk(_MSA, S),
    commission_proposes_other_measures(Commission, Measures).

must_communicate_decision(Commission, MemberStates, Operators) :-
    finding_of_risk(_MSA, S),
    commission_communicates_decision(Commission, MemberStates, Operators).

must_inform_other_member_states_decision(Commission, MemberStates) :-
    finding_of_risk(_MSA, S),
    commission_informs_other_member_states(Commission, MemberStates).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_82').
provenance(compliant_ai_system/1, 'celex:32024R1689/oj#art_82').
provenance(evaluation_under_art_79/1, 'celex:32024R1689/oj#art_82').
provenance(consulted_national_public_authority/2, 'celex:32024R1689/oj#art_82').
provenance(finding_of_risk/2, 'celex:32024R1689/oj#art_82').
provenance(risk_to_health_or_safety/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_fundamental_rights/1, 'celex:32024R1689/oj#art_82').
provenance(risk_to_public_interest/1, 'celex:32024R1689/oj#art_82').
provenance(corrective_action_taken/2, 'celex:32024R1689/oj#art_82').
provenance(made_available_on_union_market/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_commission/2, 'celex:32024R1689/oj#art_82').
provenance(member_state_informs_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(commission_consults/2, 'celex:32024R1689/oj#art_82').
provenance(commission_evaluates_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(commission_decides_justification/2, 'celex:32024R1689/oj#art_82').
provenance(commission_proposes_other_measures/2, 'celex:32024R1689/oj#art_82').
provenance(commission_communicates_decision/3, 'celex:32024R1689/oj#art_82').
provenance(commission_informs_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(prescribed_period/2, 'celex:32024R1689/oj#art_82').
provenance(without_undue_delay/1, 'celex:32024R1689/oj#art_82').
provenance(must_take_appropriate_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_eliminate_risk/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_no_risk_when_placed/2, 'celex:32024R1689/oj#art_82').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_82').
provenance(must_ensure_corrective_action_all_systems/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_commission/2, 'celex:32024R1689/oj#art_82').
provenance(must_inform_other_member_states/2, 'celex:32024R1689/oj#art_82').
provenance(must_consult/2, 'celex:32024R1689/oj#art_82').
provenance(must_evaluate_national_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_decide_justification/2, 'celex:32024R1689/oj#art_82').
provenance(must_propose_other_measures/2, 'celex:32024R1689/oj#art_82').
provenance(must_communicate_decision/3, 'celex:32024R1689/oj#art_82').
provenance(must_inform_other_member_states_decision/2, 'celex:32024R1689/oj#art_82').

references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_79').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_82', 'celex:32024R1689/oj#art_82/par_1').
