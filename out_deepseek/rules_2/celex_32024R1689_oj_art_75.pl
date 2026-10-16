% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 9d341d4cbb15257e6565676bd9c427e02869391c3a9c2fb6a640759a9099e29d
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred ai_office/1, gloss('Commission function for AI governance'), source('47').
:- pred market_surveillance_authority/1, gloss('national authority carrying out market surveillance'), source('26').
:- pred high_risk_ai_system/1, gloss('AI system listed in Annex III'), source('reconciled').
:- pred general_purpose_ai_model/1, gloss('AI model capable of a wide range of tasks'), source('63').
:- pred general_purpose_ai_system/1, gloss('AI system based on a general-purpose AI model'), source('66').
:- pred provider/1, gloss('entity that develops or places an AI system'), source('3').
:- pred deployer/1, gloss('entity using an AI system under its authority'), source('4').

% New predicates introduced for this provision
:- pred must_cooperate_with_ai_office/2, gloss('market surveillance authority must cooperate with AI Office for compliance evaluations'), source('celex:32024R1689/oj#art_75').
:- pred must_inform_board_and_authorities/2, gloss('market surveillance authority must inform Board and other market surveillance authorities'), source('celex:32024R1689/oj#art_75').
:- pred may_request_information_from_ai_office/2, gloss('market surveillance authority may submit reasoned request to AI Office to enforce access to information'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information_within_deadline/2, gloss('AI Office must supply relevant information to applicant authority within 30 days'), source('celex:32024R1689/oj#art_75').
:- pred must_safeguard_confidentiality/2, gloss('market surveillance authority must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_75').
:- pred same_provider_develops_model_and_system/2, gloss('provider develops both the general-purpose AI model and the AI system'), source('celex:32024R1689/oj#art_75').
:- pred ai_office_has_supervisory_powers/2, gloss('AI Office has powers to monitor and supervise compliance of an AI system'), source('celex:32024R1689/oj#art_75').
:- pred non_compliant_general_purpose_ai_system/1, gloss('general-purpose AI system suspected non-compliant with requirements'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('market surveillance authority unable to conclude investigation due to lack of access to information'), source('celex:32024R1689/oj#art_75').

% Article 75(1)
ai_office_has_supervisory_powers(AI_Office, System) :-
    ai_office(AI_Office),
    ai_system(System),
    general_purpose_ai_model(Model),
    provider(Provider),
    same_provider_develops_model_and_system(Provider, System),
    based_on(System, Model).

same_provider_develops_model_and_system(Provider, System) :-
    provider(Provider),
    ai_system(System),
    general_purpose_ai_model(Model),
    develops(Provider, Model),
    develops(Provider, System).

% Article 75(2)
must_cooperate_with_ai_office(Authority, System) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    non_compliant_general_purpose_ai_system(System),
    deployer_can_use_for_high_risk_purpose(System).

must_inform_board_and_authorities(Authority, System) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(System),
    non_compliant_general_purpose_ai_system(System),
    deployer_can_use_for_high_risk_purpose(System).

deployer_can_use_for_high_risk_purpose(System) :-
    general_purpose_ai_system(System),
    deployer(_Deployer),
    high_risk_ai_system(System).

% Article 75(3)
may_request_information_from_ai_office(Authority, System) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(System),
    unable_to_conclude_investigation(Authority, System).

must_supply_information_within_deadline(AI_Office, Request) :-
    ai_office(AI_Office),
    may_request_information_from_ai_office(Authority, System),
    Request = request(Authority, System),
    % The AI Office must supply information within 30 days
    true.

must_safeguard_confidentiality(Authority, Information) :-
    market_surveillance_authority(Authority),
    obtained_information(Authority, Information).

% Provenance
provenance(ai_office_has_supervisory_powers/2, 'celex:32024R1689/oj#art_75').
provenance(same_provider_develops_model_and_system/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_inform_board_and_authorities/2, 'celex:32024R1689/oj#art_75').
provenance(deployer_can_use_for_high_risk_purpose/1, 'celex:32024R1689/oj#art_75').
provenance(may_request_information_from_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information_within_deadline/2, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

% References
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
