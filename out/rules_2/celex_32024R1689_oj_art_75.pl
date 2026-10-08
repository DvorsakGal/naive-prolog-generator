% unit       : celex:32024R1689/oj#art_75
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : gpt-oss:120b-cloud
% prompt sha : d86194863860d78105842bec495da218fecd7e7cf7a31d07d1cd95cc7f7b6d37
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_monitoring_and_supervision_power/2, gloss('AI Office must have power to monitor and supervise compliance of a GP AI system'), source('celex:32024R1689/oj#art_75').
:- pred required_market_surveillance_powers/2, gloss('AI Office must have all powers of a market surveillance authority'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_for_model_and_system/1, gloss('Provider develops both the general‑purpose AI model and the AI system'), source('celex:32024R1689/oj#art_75').
:- pred can_be_used_directly_by_deployer_for_high_risk_purpose/1, gloss('AI system can be used directly by deployers for at least one high‑risk purpose'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason_to_consider_non_compliant/2, gloss('Market surveillance authority has sufficient reason to deem the system non‑compliant'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate_with_ai_office/2, gloss('Market surveillance authority must cooperate with the AI Office to carry out compliance evaluations'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities/2, gloss('Market surveillance authority must inform the Board and other authorities of the non‑compliance'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_75').
:- pred cannot_access_information/2, gloss('Authority cannot access information related to the GP AI model despite appropriate efforts'), source('celex:32024R1689/oj#art_75').
:- pred made_all_appropriate_efforts/2, gloss('Authority has made all appropriate efforts to obtain the information'), source('celex:32024R1689/oj#art_75').
:- pred permitted_submit_reasoned_request/2, gloss('Market surveillance authority may submit a reasoned request to the AI Office'), source('celex:32024R1689/oj#art_75').
:- pred relevant_information/2, gloss('Information relevant to establishing non‑compliance of a high‑risk AI system'), source('celex:32024R1689/oj#art_75').
:- pred considered_relevant_by_ai_office/1, gloss('AI Office considers the information relevant'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/3, gloss('AI Office must supply relevant information to the requesting authority without delay and within 30 days'), source('celex:32024R1689/oj#art_75').
:- pred obtained_information/2, gloss('Market surveillance authority has obtained information'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('Market surveillance authority must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').

required_monitoring_and_supervision_power(ai_office, S) :-
    general_purpose_ai_system(S),
    same_provider_for_model_and_system(S).

required_market_surveillance_powers(ai_office, S) :-
    general_purpose_ai_system(S),
    same_provider_for_model_and_system(S).

must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).

must_inform_board_and_authorities(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    can_be_used_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).

permitted_submit_reasoned_request(Authority, S) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    cannot_access_information(Authority, S),
    made_all_appropriate_efforts(Authority, S).

must_supply_information(ai_office, Authority, S) :-
    permitted_submit_reasoned_request(Authority, S),
    relevant_information(S, Info),
    considered_relevant_by_ai_office(Info).

must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Info).

provenance(required_monitoring_and_supervision_power/2, 'celex:32024R1689/oj#art_75').
provenance(required_market_surveillance_powers/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
