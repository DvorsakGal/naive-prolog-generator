% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : fe3503a0f6f3e1a48e40a5ed4156f2088806a100f41ba41361f4310fff82c3dc
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred ai_office_has_powers_to_monitor/1, gloss('AI Office has powers to monitor and supervise compliance of an AI system'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate_with_ai_office_on_evaluation/2, gloss('market surveillance authority must cooperate with AI Office to carry out compliance evaluations'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities_of_non_compliance/2, gloss('market surveillance authority must inform Board and other authorities of non-compliance consideration'), source('celex:32024R1689/oj#art_75').
:- pred may_request_information_enforcement/2, gloss('market surveillance authority may submit reasoned request to AI Office to enforce access to information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information_within_deadline/3, gloss('AI Office must supply relevant information to applicant authority within specified deadline'), source('celex:32024R1689/oj#art_75').

ai_office_has_powers_to_monitor(S) :-
    general_purpose_ai_system(S),
    provider(P),
    provides_general_purpose_ai_model(P, S).

must_cooperate_with_ai_office_on_evaluation(A, S) :-
    relevant_market_surveillance_authority(A),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).

must_inform_board_and_authorities_of_non_compliance(A, S) :-
    relevant_market_surveillance_authority(A),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(A, S).

may_request_information_enforcement(A, S) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    unable_to_access_model_information(A, S).

must_supply_information_within_deadline(ai_office, A, days(30)) :-
    market_surveillance_authority(A),
    high_risk_ai_system(S),
    may_request_information_enforcement(A, S).

provenance(ai_office_has_powers_to_monitor/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office_on_evaluation/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities_of_non_compliance/2, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_enforcement/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within_deadline/3, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
