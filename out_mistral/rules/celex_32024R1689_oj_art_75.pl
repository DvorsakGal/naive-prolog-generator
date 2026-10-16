% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7a846b1cb954d02e3fdba166cef0d95f8ad4d1fcd862e60403729b6491d93ce0
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred ai_office_monitoring_powers/1, gloss('AI Office has market surveillance authority powers over general-purpose AI systems developed by same provider as model'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_model_and_system/2, gloss('provider developed both the general-purpose AI model and the AI system based on it'), source('celex:32024R1689/oj#art_75').
:- pred general_purpose_ai_system_high_risk_purpose/1, gloss('general-purpose AI system usable directly by deployers for at least one high-risk purpose'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason_non_compliance/2, gloss('market surveillance authorities have sufficient reason to consider system non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate_compliance_evaluation/2, gloss('market surveillance authorities must cooperate with AI Office for compliance evaluations'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities/2, gloss('market surveillance authorities must inform the Board and other market surveillance authorities'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('market surveillance authority unable to conclude investigation due to inability to access model information'), source('celex:32024R1689/oj#art_75').
:- pred may_request_information_access/2, gloss('market surveillance authority may submit reasoned request to AI Office for information access'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information_within/3, gloss('AI Office must supply relevant information within specified period'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('market surveillance authorities must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').

ai_office_monitoring_powers(S) :-
    ai_system(S),
    general_purpose_ai_system(S),
    same_provider_model_and_system(P, S),
    provider(P).

same_provider_model_and_system(P, S) :-
    provider(P),
    ai_system(S),
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    developed_by(M, P),
    developed_by(S, P).

general_purpose_ai_system_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    deployer(D),
    can_be_used_directly_by(S, D),
    high_risk_purpose(P),
    purpose_classified_as_high_risk(P).

must_cooperate_compliance_evaluation(A, O) :-
    market_surveillance_authority(A),
    ai_office(O),
    general_purpose_ai_system_high_risk_purpose(S),
    sufficient_reason_non_compliance(A, S).

must_inform_board_and_authorities(A, Info) :-
    market_surveillance_authority(A),
    must_cooperate_compliance_evaluation(A, _O),
    Info = compliance_evaluation_result(S),
    general_purpose_ai_system_high_risk_purpose(S).

unable_to_conclude_investigation(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    \+ can_access_model_information(A, S),
    made_all_appropriate_efforts(A, S).

may_request_information_access(A, O) :-
    market_surveillance_authority(A),
    ai_office(O),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(A, S).

must_supply_information_within(O, A, days(30)) :-
    ai_office(O),
    market_surveillance_authority(A),
    may_request_information_access(A, O),
    relevant_information_for_compliance(I),
    without_delay(I).

must_safeguard_confidentiality(A, I) :-
    market_surveillance_authority(A),
    information_obtained(A, I),
    confidential(I).

provenance(ai_office_monitoring_powers/1, 'celex:32024R1689/oj#art_75').
provenance(same_provider_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(general_purpose_ai_system_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_non_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_compliance_evaluation/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_access/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
