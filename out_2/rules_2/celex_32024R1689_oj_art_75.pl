% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : f6d72ce208c706ebca9984f7b52929f6a3b8418f22f4d28cb361f2173e467efa
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred based_on_general_purpose_ai_model/1, gloss('AI system based on a general‑purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_developed/2, gloss('AI system and its underlying model are developed by the same provider'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason_to_consider_non_compliant/2, gloss('Market surveillance authority has sufficient reason to consider a system non‑compliant'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('Authority cannot conclude investigation of a high‑risk AI system'), source('celex:32024R1689/oj#art_75').
:- pred inability_to_access_information/2, gloss('Authority cannot access information related to the general‑purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred made_all_appropriate_efforts/2, gloss('Authority has made all appropriate efforts to obtain the information'), source('celex:32024R1689/oj#art_75').
:- pred considered_relevant/2, gloss('AI Office considers the information relevant'), source('celex:32024R1689/oj#art_75').
:- pred obtained_information/2, gloss('Market surveillance authority has obtained the information'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate/2, gloss('Authority shall cooperate with the AI Office'), source('celex:32024R1689/oj#art_75').
:- pred must_inform/2, gloss('Authority shall inform the specified recipient'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/3, gloss('AI Office shall supply information to the authority within a time limit'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('Authority shall safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').
:- pred permitted_submit_reasoned_request/2, gloss('Authority may submit a reasoned request to the AI Office'), source('celex:32024R1689/oj#art_75').
:- pred monitor_compliance/2, gloss('AI Office monitors and supervises compliance of an AI system'), source('celex:32024R1689/oj#art_75').

monitor_compliance(AI_Office, System) :-
    ai_office(AI_Office),
    ai_system(System),
    based_on_general_purpose_ai_model(System),
    same_provider_developed(System, Model),
    general_purpose_ai_model(Model).

must_cooperate(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    sufficient_reason_to_consider_non_compliant(Authority, System).

must_inform(Authority, board) :-
    market_surveillance_authority(Authority).

must_inform(Authority, OtherAuthority) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority.

permitted_submit_reasoned_request(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    unable_to_conclude_investigation(Authority, System),
    inability_to_access_information(Authority, Model),
    made_all_appropriate_efforts(Authority, Model).

must_supply_information(ai_office, Authority, supply(Info, within(days(30)))) :-
    ai_office(_),
    market_surveillance_authority(Authority),
    considered_relevant(ai_office, Info).

must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Info).

provenance(monitor_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
