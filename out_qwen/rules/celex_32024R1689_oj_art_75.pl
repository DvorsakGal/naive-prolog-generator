% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 70b565dd404e03dbb787e23beee4a06cb289c254af91ca6f42f450d455d7d719
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred ai_office_has_powers/1, gloss('AI Office has monitoring and supervision powers for the system'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate_with_ai_office/2, gloss('market surveillance authority must cooperate with AI Office on compliance evaluation'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities/2, gloss('market surveillance authority must inform Board and other authorities of non-compliance consideration'), source('celex:32024R1689/oj#art_75').
:- pred may_request_information_enforcement/2, gloss('market surveillance authority may request AI Office to enforce access to information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/3, gloss('AI Office must supply relevant information to requesting authority within deadline'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('market surveillance authority must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').

ai_office_has_powers(S) :-
    general_purpose_ai_system(S),
    based_on_model(S, M),
    provider(P),
    develops(P, M),
    develops(P, S).

must_cooperate_with_ai_office(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system(S),
    usable_directly_by_deployer_for_high_risk_purpose(S),
    sufficient_reason_to_consider_non_compliant(A, S).

must_inform_board_and_authorities(A, S) :-
    market_surveillance_authority(A),
    general_purpose_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).

may_request_information_enforcement(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_conclude_investigation_due_to_information_access(A, S),
    made_all_appropriate_efforts_to_obtain_information(A, S).

must_supply_information(AiOffice, A, info_request(S)) :-
    ai_office(AiOffice),
    market_surveillance_authority(A),
    may_request_information_enforcement(A, S),
    within(days(30)).

must_safeguard_confidentiality(A, I) :-
    market_surveillance_authority(A),
    obtained_from_ai_office(I).

provenance(ai_office_has_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_enforcement/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
