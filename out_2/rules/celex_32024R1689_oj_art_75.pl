% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0bafaa5d9f5bfcd36a68c4a40fc6fed9a6a4fd8d897d4c4ae8201a1347cca723
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
% --- New predicates introduced ---
:- pred has_power/2, gloss('authority to monitor and supervise compliance'), source('celex:32024R1689/oj#art_75').
:- pred same_provider/2, gloss('provider develops both model and system'), source('celex:32024R1689/oj#art_75').
:- pred usable_directly_by_deployer/1, gloss('system can be used directly by deployers'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_purpose/1, gloss('purpose classified as high‑risk'), source('celex:32024R1689/oj#art_75').
:- pred has_sufficient_reason/2, gloss('authority has sufficient reason to consider non‑compliance'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_access_information/2, gloss('authority cannot access information despite appropriate efforts'), source('celex:32024R1689/oj#art_75').
:- pred relevant_information/2, gloss('information relevant to establish non‑compliance'), source('celex:32024R1689/oj#art_75').
:- pred obtained_information/2, gloss('information obtained by authority'), source('celex:32024R1689/oj#art_75').

% --- Clause heads with provenance ---

has_power(ai_office, monitor_and_supervise(S)) :-
    general_purpose_ai_system(S),
    provider(P),
    same_provider(P, S).

must_cooperate(MSA, ai_office) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).

must_inform(MSA, board) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).

must_inform(MSA, other_market_surveillance_authorities) :-
    market_surveillance_authority(MSA),
    has_sufficient_reason(MSA, S),
    general_purpose_ai_system(S),
    usable_directly_by_deployer(S),
    high_risk_purpose(_Purpose).

permitted_submit_reasoned_request(request(MSA, ai_office, S)) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    unable_to_access_information(MSA, S).

request_submitted(MSA, ai_office, S) :-
    permitted_submit_reasoned_request(request(MSA, ai_office, S)).

must_supply(ai_office, information(Info, MSA)) :-
    request_submitted(MSA, ai_office, S),
    relevant_information(Info, S),
    within(days(30)).

must_safeguard(MSA, confidentiality(Info)) :-
    obtained_information(MSA, Info).

% --- Provenance for each head predicate ---
provenance(has_power/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/1, 'celex:32024R1689/oj#art_75').
provenance(request_submitted/3, 'celex:32024R1689/oj#art_75').
provenance(must_supply/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_75').

% --- References ---
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
