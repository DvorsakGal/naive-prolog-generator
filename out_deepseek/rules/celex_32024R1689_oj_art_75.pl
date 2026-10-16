% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 904c67f05ce47aee3bf099ccf6e0faf66458bd90fb9da7a07b486b04fbd3ae18
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred must_cooperate_with_ai_office/2, gloss('market surveillance authority must cooperate with AI Office for compliance evaluations'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities/2, gloss('market surveillance authority must inform Board and other authorities of cooperation'), source('celex:32024R1689/oj#art_75').
:- pred may_request_access_to_information/2, gloss('market surveillance authority may request AI Office to enforce access to information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/2, gloss('AI Office must supply relevant information to requesting authority'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('market surveillance authority must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').

% Article 75(1): AI Office powers where AI system and general-purpose AI model share the same provider
ai_office_has_supervisory_powers(S) :-
    ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    provider(P),
    develops(P, S),
    develops(P, M).

must_have_market_surveillance_powers(AI_Office) :-
    ai_office(AI_Office),
    market_surveillance_authority(MSA),
    powers_of(MSA, Powers),
    has_powers(AI_Office, Powers).

% Article 75(2): Cooperation obligation for market surveillance authorities
must_cooperate_with_ai_office(MSA, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployers(S),
    purpose_classified_as_high_risk(S),
    sufficient_reason_to_consider_non_compliant(MSA, S).

must_inform_board_and_authorities(MSA, S) :-
    must_cooperate_with_ai_office(MSA, S).

% Article 75(3): Information access enforcement
may_request_access_to_information(MSA, M) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    investigation_of(MSA, S),
    unable_to_conclude_investigation(MSA, S),
    general_purpose_ai_model(M),
    information_relates_to(M, Info),
    unable_to_access(MSA, Info),
    made_all_appropriate_efforts(MSA, Info).

must_supply_information(AI_Office, request(MSA, Info)) :-
    ai_office(AI_Office),
    may_request_access_to_information(MSA, M),
    information_relates_to(M, Info),
    relevant_to_non_compliance(Info, S),
    high_risk_ai_system(S),
    within_days(30).

must_safeguard_confidentiality(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtains_information(MSA, Info).

% Provenance
provenance(ai_office_has_supervisory_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_have_market_surveillance_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_access_to_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

% References
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
