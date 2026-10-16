% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : c4ae475882070f498ceed4047f74d5b9683ed387954aebc8e05629a94e075d2d
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred model_and_system_developed_by_same_provider/2, gloss('AI model and AI system are developed by the same provider'), source('celex:32024R1689/oj#art_75').
:- pred powers_of_market_surveillance_authority/2, gloss('AI Office has powers of market surveillance authority for AI system'), source('celex:32024R1689/oj#art_75').
:- pred general_purpose_ai_system_used_directly_for_high_risk/1, gloss('General-purpose AI system that can be used directly by deployers for at least one high-risk purpose'), source('celex:32024R1689/oj#art_75').
:- pred suspected_non_compliant/2, gloss('Market surveillance authority has sufficient reason to consider AI system non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate/2, gloss('Actor must cooperate with another entity on a matter'), source('celex:32024R1689/oj#art_75').
:- pred must_inform/2, gloss('Actor must inform a recipient of a matter'), source('celex:32024R1689/oj#art_75').
:- pred permitted_submit_reasoned_request/2, gloss('Authority may submit a reasoned request to AI Office'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation_due_to_access/2, gloss('Authority is unable to conclude investigation because of lack of access to general-purpose AI model information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/2, gloss('AI Office must supply relevant information to requesting authority'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('Authority must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_75').

% Paragraph 1: AI Office has market surveillance authority powers where model and system share the same provider
powers_of_market_surveillance_authority(Office, System) :-
    ai_office(Office),
    general_purpose_ai_system(System),
    general_purpose_ai_model(Model),
    model_and_system_developed_by_same_provider(Model, System).

% Paragraph 2: Cooperation and notification when high-risk-capable general-purpose AI system is suspected non-compliant
must_cooperate(Authority, with(Office, compliance_evaluation(System))) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).

must_inform(Authority, non_compliance_investigation(System, Board)) :-
    market_surveillance_authority(Authority),
    board(Board),
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).

must_inform(Authority, non_compliance_investigation(System, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    general_purpose_ai_system_used_directly_for_high_risk(System),
    suspected_non_compliant(Authority, System).

% Paragraph 3: Reasoned request and enforcement of access to information
permitted_submit_reasoned_request(Authority, request(Office, access_to_model_info(System))) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    unable_to_conclude_investigation_due_to_access(Authority, System).

must_supply_information(Office, to(Authority, within(days(30), System))) :-
    ai_office(Office),
    market_surveillance_authority(Authority),
    permitted_submit_reasoned_request(Authority, request(Office, access_to_model_info(System))).

must_safeguard_confidentiality(Authority, information_obtained(System)) :-
    market_surveillance_authority(Authority),
    permitted_submit_reasoned_request(Authority, request(_Office, access_to_model_info(System))).

% Provenance
provenance(powers_of_market_surveillance_authority/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

% References
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
