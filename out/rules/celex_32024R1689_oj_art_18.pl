% unit       : celex:32024R1689/oj#art_18
% title      : Documentation keeping
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : gpt-oss:120b-cloud
% prompt sha : 327391a62369bdc55f4aacfa95211ad655026af74f327ba03dee86ffa6561342
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_18').
:- pred technical_documentation/1, gloss('technical documentation'), source('celex:32024R1689/oj#art_18').
:- pred quality_management_system_documentation/1, gloss('documentation concerning the quality management system'), source('celex:32024R1689/oj#art_18').
:- pred notified_body_change_documentation/1, gloss('documentation concerning the changes approved by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred notified_body_decision_documentation/1, gloss('decisions and other documents issued by the notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity'), source('celex:32024R1689/oj#art_18').
:- pred required_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_18').
:- pred provider_bankrupt/1, gloss('provider has become bankrupt'), source('celex:32024R1689/oj#art_18').
:- pred provider_ceases_activity/1, gloss('provider has ceased its activity'), source('celex:32024R1689/oj#art_18').
:- pred authorised_representative_bankrupt/1, gloss('authorised representative has become bankrupt'), source('celex:32024R1689/oj#art_18').
:- pred authorised_representative_ceases_activity/1, gloss('authorised representative has ceased its activity'), source('celex:32024R1689/oj#art_18').
:- pred established_on_territory/2, gloss('entity established on the territory of a Member State'), source('celex:32024R1689/oj#art_18').
:- pred required_determine_conditions/2, gloss('Member State must determine conditions for documentation retention'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_18').
:- pred subject_to_financial_services_law/1, gloss('entity subject to Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred required_maintain_technical_documentation/1, gloss('financial institution provider must maintain technical documentation'), source('celex:32024R1689/oj#art_18').
:- pred documentation_type/1, gloss('type of documentation referred to in Article 18'), source('celex:32024R1689/oj#art_18').

% Documentation types
documentation_type(technical_documentation).
documentation_type(quality_management_system_documentation).
documentation_type(notified_body_change_documentation).
documentation_type(notified_body_decision_documentation).
documentation_type(eu_declaration_of_conformity).

% 1. Provider obligations to keep documentation
required_keep_documentation(P, technical_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

required_keep_documentation(P, quality_management_system_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

required_keep_documentation(P, notified_body_change_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

required_keep_documentation(P, notified_body_decision_documentation) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

required_keep_documentation(P, eu_declaration_of_conformity) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

% 2. Member State must determine conditions for documentation retention in bankruptcy/cessation cases
required_determine_conditions(MS, Doc) :-
    member_state(MS),
    documentation_type(Doc),
    provider(P),
    (provider_bankrupt(P) ; provider_ceases_activity(P)),
    established_on_territory(P, MS).

required_determine_conditions(MS, Doc) :-
    member_state(MS),
    documentation_type(Doc),
    authorised_representative(AR),
    (authorised_representative_bankrupt(AR) ; authorised_representative_ceases_activity(AR)),
    established_on_territory(AR, MS).

% 3. Financial institution providers must maintain technical documentation under financial services law
required_maintain_technical_documentation(P) :-
    provider(P),
    financial_institution(P),
    subject_to_financial_services_law(P).

% Provenance
provenance(required_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(required_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(required_maintain_technical_documentation/1, 'celex:32024R1689/oj#art_18').

% References
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
