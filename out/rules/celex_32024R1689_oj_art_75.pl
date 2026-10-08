% unit       : celex:32024R1689/oj#art_75
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : gpt-oss:120b-cloud
% prompt sha : 4b2442adb0f405bbaac7ca7b41a7ec1a321ef2fa383aa03931f4a0ba4a5a8ca9
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred based_on_general_purpose_ai_model/1, gloss('AI system based on a general‑purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_developed/1, gloss('AI system and its underlying model are developed by the same provider'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason/2, gloss('market surveillance authority has sufficient reason concerning an AI system'), source('celex:32024R1689/oj#art_75').
:- pred directly_usable_by_deployer/1, gloss('AI system can be used directly by a deployer'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_purpose/1, gloss('purpose classified as high‑risk'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('market surveillance authority cannot conclude its investigation of an AI system'), source('celex:32024R1689/oj#art_75').
:- pred inability_to_access_information/2, gloss('authority cannot access information related to the AI model'), source('celex:32024R1689/oj#art_75').
:- pred made_all_appropriate_efforts/2, gloss('authority has made all appropriate efforts to obtain information'), source('celex:32024R1689/oj#art_75').
:- pred request_submitted/3, gloss('reasoned request submitted by a market surveillance authority to the AI Office'), source('celex:32024R1689/oj#art_75').
:- pred without_delay/1, gloss('information supplied without delay'), source('celex:32024R1689/oj#art_75').
:- pred within_30_days/1, gloss('information supplied within 30 days'), source('celex:32024R1689/oj#art_75').
:- pred obtained_information/2, gloss('information obtained by a market surveillance authority'), source('celex:32024R1689/oj#art_75').

must_monitor_and_supervise(ai_office, S) :-
    general_purpose_ai_system(S),
    based_on_general_purpose_ai_model(S),
    same_provider_developed(S).

must_cooperate_with(MSA, ai_office, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).

must_inform(MSA, board, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).

must_inform(MSA, other_market_surveillance_authorities, S) :-
    market_surveillance_authority(MSA),
    general_purpose_ai_system(S),
    directly_usable_by_deployer(S),
    high_risk_purpose(S),
    sufficient_reason(MSA, S).

permitted_submit_reasoned_request(MSA, ai_office, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(MSA, S),
    inability_to_access_information(MSA, S),
    made_all_appropriate_efforts(MSA, S).

request_submitted(MSA, ai_office, S) :-
    permitted_submit_reasoned_request(MSA, ai_office, S).

must_supply_information(ai_office, MSA, Info) :-
    request_submitted(MSA, ai_office, _S),
    without_delay(Info),
    within_30_days(Info).

must_safeguard_confidentiality(MSA, Info) :-
    market_surveillance_authority(MSA),
    obtained_information(MSA, Info).

provenance(must_monitor_and_supervise/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with/3, 'celex:32024R1689/oj#art_75').
provenance(must_inform/3, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/3, 'celex:32024R1689/oj#art_75').
provenance(request_submitted/3, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
