% unit       : celex:32024R1689/oj#art_75
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : f761728a89cf54a4fcdc37b2f4339def55ada6321c04b46eb7ee4131eb5bee0c
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : eb0e34db5a2bb5829b0562b2ebfd54dbbea674a4c74bbd775a0965be397f6f63
% cached     : False
% title      : Mutual assistance, market surveillance and control of general-purpose AI systems
:- pred must_cooperate_with_ai_office/2, gloss('market surveillance authority must cooperate with AI Office for compliance evaluation'), source('celex:32024R1689/oj#art_75').
:- pred may_submit_reasoned_request/2, gloss('market surveillance authority may submit reasoned request to AI Office for information access'), source('celex:32024R1689/oj#art_75').
:- pred must_supply_information/3, gloss('AI Office must supply relevant information to requesting authority within deadline'), source('celex:32024R1689/oj#art_75').
:- pred has_monitoring_and_supervision_powers/2, gloss('AI Office has monitoring and supervision powers over AI system'), source('celex:32024R1689/oj#art_75').
:- pred general_purpose_ai_system_based_on_same_provider_model/1, gloss('AI system based on general-purpose AI model developed by same provider'), source('celex:32024R1689/oj#art_75').
:- pred sufficient_reason_to_consider_non_compliant/2, gloss('market surveillance authority has sufficient reason to consider system non-compliant'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_conclude_investigation/2, gloss('market surveillance authority unable to conclude investigation due to information access failure'), source('celex:32024R1689/oj#art_75').
:- pred unable_to_access_information/2, gloss('market surveillance authority unable to access information related to general-purpose AI model'), source('celex:32024R1689/oj#art_75').
:- pred all_appropriate_efforts_made/2, gloss('market surveillance authority has made all appropriate efforts to obtain information'), source('celex:32024R1689/oj#art_75').
:- pred information_relevant_to_non_compliance/2, gloss('information relevant to establishing whether high-risk AI system is non-compliant'), source('celex:32024R1689/oj#art_75').

has_monitoring_and_supervision_powers(ai_office, S) :-
    general_purpose_ai_system(S),
    general_purpose_ai_model(M),
    based_on(S, M),
    provider(P),
    developed_by(P, S),
    developed_by(P, M).

must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    deployer_can_use_directly(_D, S),
    purpose_classified_as_high_risk(Purpose),
    used_for_at_least_one_purpose(S, Purpose),
    sufficient_reason_to_consider_non_compliant(Authority, S),
    requirements_laid_down_in_act(Requirements),
    non_compliant_with(S, Requirements).

must_cooperate_with_ai_office(Authority, S) :-
    market_surveillance_authority(Authority),
    general_purpose_ai_system(S),
    high_risk_ai_system(S),
    sufficient_reason_to_consider_non_compliant(Authority, S).

may_submit_reasoned_request(Authority, ai_office) :-
    market_surveillance_authority(Authority),
    high_risk_ai_system(S),
    unable_to_conclude_investigation(Authority, S),
    unable_to_access_information(Authority, Info),
    related_to_general_purpose_ai_model(Info, M),
    all_appropriate_efforts_made(Authority, Info).

must_supply_information(ai_office, Authority, Info) :-
    may_submit_reasoned_request(Authority, ai_office),
    information_relevant_to_non_compliance(Info, S),
    high_risk_ai_system(S),
    within_deadline(days(30)).

must_safeguard_confidentiality(Authority, Info) :-
    market_surveillance_authority(Authority),
    obtains(Authority, Info),
    information_related_to_investigation(Info).

provenance(has_monitoring_and_supervision_powers/2, 'celex:32024R1689/oj#art_75').
provenance(must_cooperate_with_ai_office/2, 'celex:32024R1689/oj#art_75').
provenance(may_submit_reasoned_request/2, 'celex:32024R1689/oj#art_75').
provenance(must_supply_information/3, 'celex:32024R1689/oj#art_75').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_75').

references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#chp_9/sec_3').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj').
references('celex:32024R1689/oj#art_75', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_75', 'celex:32019R1020/oj#chp_6').
