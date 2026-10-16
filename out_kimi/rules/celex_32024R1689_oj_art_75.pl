% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0f757e8e0f4bb304f2b6574e211887c0fc619b6be164390ea375a94eade8a59f
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred general_purpose_ai_system_based_on_same_provider_model/1, gloss('AI system based on a general-purpose AI model developed by the same provider'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_purpose_general_purpose_ai_system/1, gloss('general-purpose AI system with at least one high-risk purpose'), source('celex:32024R1689/oj#art_75').
:- pred non_compliant_high_risk_ai_system/1, gloss('high-risk AI system that is non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/1, gloss('market surveillance authority unable to conclude investigation due to lack of information'), source('celex:32024R1689/oj#art_75').
:- pred reasoned_request_for_information/2, gloss('reasoned request from authority to AI Office for information'), source('celex:32024R1689/oj#art_75').

% Article 75(1): AI Office monitoring and supervision powers for same-provider general-purpose AI systems
ai_office_monitors_same_provider_system(S) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    provider(P),
    develops(P, M),
    develops(P, S).

ai_office_has_market_surveillance_powers(S) :-
    ai_office_monitors_same_provider_system(S).

% Article 75(2): Cooperation for compliance evaluation of potentially non-compliant high-risk general-purpose AI systems
must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_purpose_general_purpose_ai_system(S),
    sufficient_reason_non_compliant(Authority, S).

sufficient_reason_non_compliant(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_purpose_general_purpose_ai_system(S),
    can_be_used_directly_by_deployers(S),
    at_least_one_high_risk_purpose(S),
    \+ compliant_with_requirements(S).

must_inform_board_and_authorities(Authority, non_compliant_evaluation(S)) :-
    must_cooperate_with_ai_office(Authority, S).

% Article 75(3): Reasoned request for information when investigation cannot conclude
may_submit_reasoned_request(Authority, ai_office, information_access(Model)) :-
    market_surveillance_authority(Authority),
    investigating(Authority, S),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    unable_to_conclude_investigation(Authority),
    made_all_appropriate_efforts(Authority, M),
    \+ accessed_information(Authority, M).

unable_to_conclude_investigation(Authority) :-
    market_surveillance_authority(Authority),
    investigating(Authority, S),
    high_risk_ai_system(S),
    general_purpose_ai_model(M),
    ai_system_based_on_model(S, M),
    \+ accessed_information(Authority, M),
    made_all_appropriate_efforts(Authority, M).

must_supply_information(ai_office, Authority, relevant_information(Model)) :-
    reasoned_request_for_information(Authority, ai_office),
    general_purpose_ai_model(M),
    considers_relevant(ai_office, M, non_compliant(S)),
    high_risk_ai_system(S),
    ai_system_based_on_model(S, M).

within_deadline(ai_office, Authority, days(30)) :-
    reasoned_request_for_information(Authority, ai_office).

must_safeguard_confidentiality(Authority, obtained_information) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, _).

% Helper definitions
ai_system_based_on_model(S, M) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M).

can_be_used_directly_by_deployers(S) :-
    general_purpose_ai_system(S),
    deployer(D),
    can_use_directly(D, S).

at_least_one_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    intended_purpose(P),
    classified_as_high_risk(P).

at_least_one_high_risk_purpose(S) :-
    general_purpose_ai_system(S),
    reasonably_foreseeable_misuse(P),
    classified_as_high_risk(P).

compliant_with_requirements(S) :-
    high_risk_ai_system(S),
    fulfills_requirements(S).

made_all_appropriate_efforts(Authority, M) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_model(M),
    attempted_access(Authority, M).

accessed_information(Authority, M) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_model(M),
    has_accessed(Authority, M).

considers_relevant(ai_office, M, non_compliant(S)) :-
    general_purpose_ai_model(M),
    high_risk_ai_system(S),
    ai_system_based_on_model(S, M),
    relevant_for_compliance(ai_office, M, S).

obtained_information(Authority, Info) :-
    market_surveillance_authority(Authority),
    received(Authority, Info, ai_office).

% Provenance
provenance(ai_office_monitors_same_provider_system/1, 'celex:32024R1689/oj#art_75').
provenance(ai_office_has_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(sufficient_reason_non_compliant/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_submit_reasoned_request/3, 'celex:32024R1689/oj#art_75').
provenance(unable_to_conclude_investigation/1, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(within_deadline/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').
provenance(ai_system_based_on_model/2, 'celex:32024R1689/oj#art_75').
provenance(can_be_used_directly_by_deployers/1, 'celex:32024R1689/oj#art_75').
provenance(at_least_one_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(compliant_with_requirements/1, 'celex:32024R1689/oj#art_75').
provenance(made_all_appropriate_efforts/2, 'celex:32024R1689/oj#art_75').
provenance(accessed_information/2, 'celex:32024R1689/oj#art_75').
provenance(considers_relevant/3, 'celex:32024R1689/oj#art_75').
provenance(obtained_information/2, 'celex:32024R1689/oj#art_75').

% References
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
