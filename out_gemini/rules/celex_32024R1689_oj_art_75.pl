% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f7552bfb19f0e4d5b38f94fd504427f73e47596af7d3e5a743b2b8d173e9e7f9
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred developed_by/2, gloss('system or model developed by provider'), source('celex:32024R1689/oj#art_75').
:- pred based_on_model/2, gloss('AI system is based on general-purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred powers_to_monitor_and_supervise(Actor, System), gloss('Actor has powers to monitor and supervise compliance of system'), source('celex:32024R1689/oj#art_75').
:- pred market_surveillance_authority_powers(Actor), gloss('Actor has all powers of a market surveillance authority'), source('celex:32024R1689/oj#art_75').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_75').
:- pred direct_deployment_for_high_risk_purpose(System), gloss('system can be used directly by deployers for high-risk purpose'), source('celex:32024R1689/oj#art_75').
:- pred suspected_non_compliant(Authority, System), gloss('market surveillance authority has reason to consider system non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred must_cooperate(Actor, Object), gloss('duty of actor to cooperate on object'), source('celex:32024R1689/oj#art_75').
:- pred must_inform(Actor, Object), gloss('duty of actor to inform target about object'), source('celex:32024R1689/oj#art_75').
:- pred board/1, gloss('European Artificial Intelligence Board'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_access_model_information(Authority, Model), gloss('authority cannot access information about model despite efforts'), source('celex:32024R1689/oj#art_75').
:- pred permitted_request(Actor, Object), gloss('actor is permitted to make a request'), source('celex:32024R1689/oj#art_75').
:- pred reasoned_request_for_model_info(Authority, System, Model), gloss('reasoned request submitted to AI Office for model information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply(Actor, Object), gloss('duty of actor to supply information'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard(Actor, Object), gloss('duty of actor to safeguard confidentiality'), source('celex:32024R1689/oj#art_75').
:- pred confidential_information(Authority, Information), gloss('information obtained by authority subject to confidentiality'), source('celex:32024R1689/oj#art_75').

% Paragraph 1: AI Office monitoring and supervision powers
powers_to_monitor_and_supervise(Office, System) :-
    ai_office(Office),
    general_purpose_ai_system(System),
    general_purpose_ai_model(Model),
    based_on_model(System, Model),
    provider(Provider),
    developed_by(System, Provider),
    developed_by(Model, Provider).

market_surveillance_authority_powers(Office) :-
    ai_office(Office).

% Paragraph 2: Cooperation on suspected non-compliant GPAI systems usable for high-risk purposes
must_cooperate(Authority, evaluation(ai_office, System)) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).

must_inform(Authority, suspected_non_compliance(System, Board)) :-
    market_surveillance_authority(Authority),
    board(Board),
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).

must_inform(Authority, suspected_non_compliance(System, OtherAuthority)) :-
    market_surveillance_authority(Authority),
    market_surveillance_authority(OtherAuthority),
    Authority \= OtherAuthority,
    general_purpose_ai_system(System),
    direct_deployment_for_high_risk_purpose(System),
    suspected_non_compliant(Authority, System).

% Paragraph 3: Request to AI Office for GPAI model info and supply within 30 days
permitted_request(Authority, request_model_access(Office, Model, System)) :-
    market_surveillance_authority(Authority),
    ai_office(Office),
    high_risk_ai_system(System),
    general_purpose_ai_model(Model),
    based_on_model(System, Model),
    unable_to_access_model_information(Authority, Model).

must_supply(Office, relevant_information(Authority, System, within(days(30)))) :-
    ai_office(Office),
    reasoned_request_for_model_info(Authority, System, _Model),
    market_surveillance_authority(Authority),
    high_risk_ai_system(System).

must_safeguard(Authority, confidentiality(Info)) :-
    market_surveillance_authority(Authority),
    confidential_information(Authority, Info).

provenance(powers_to_monitor_and_supervise/2, 'celex:32024R1689/oj#art_75').
provenance(market_surveillance_authority_powers/1, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform/2, 'celex:32024R1689/oj#art_75').
provenance(permitted_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
