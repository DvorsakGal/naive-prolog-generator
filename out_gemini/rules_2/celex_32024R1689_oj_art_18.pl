% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : b7d61d427cf300a2d847219683efd6c0c769aac4898accc5403da0441f984c61
% cached     : False
% title      : Documentation keeping
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_18').
:- pred provider_of/2, gloss('entity is the provider of an AI system'), source('celex:32024R1689/oj#art_18').
:- pred placed_on_market/1, gloss('AI system has been placed on the market'), source('celex:32024R1689/oj#art_18').
:- pred put_into_service/1, gloss('AI system has been put into service'), source('celex:32024R1689/oj#art_18').
:- pred documentation_item_article_18/2, gloss('documentation item required to be kept under Article 18(1) for an AI system'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('entity is a financial institution'), source('celex:32024R1689/oj#art_18').
:- pred subject_to_union_financial_services_governance/1, gloss('entity is subject to governance arrangements under Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred member_state/1, gloss('entity is an EU Member State'), source('celex:32024R1689/oj#art_18').
:- pred bankrupt_or_ceased_activity/1, gloss('entity has gone bankrupt or ceased activity prior to the end of the retention period'), source('celex:32024R1689/oj#art_18').
:- pred established_in/2, gloss('entity is established in a Member State'), source('celex:32024R1689/oj#art_18').

% Article 18(1): Documentation items to be kept
documentation_item_article_18(S, technical_documentation(art_11)) :-
    high_risk_ai_system(S).

documentation_item_article_18(S, quality_management_system_documentation(art_17)) :-
    high_risk_ai_system(S).

documentation_item_article_18(S, approved_changes(notified_body)) :-
    high_risk_ai_system(S).

documentation_item_article_18(S, decisions_and_documents(notified_body)) :-
    high_risk_ai_system(S).

documentation_item_article_18(S, eu_declaration_of_conformity(art_47)) :-
    high_risk_ai_system(S).

% Article 18(1): Provider keeping documentation at disposal of national competent authorities for 10 years
must_keep_at_disposal(Provider, documentation(Doc, S, national_competent_authorities, period(years(10), after(Event)))) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    documentation_item_article_18(S, Doc),
    ( placed_on_market(S), Event = market_placement ;
      put_into_service(S), Event = putting_into_service ).

% Article 18(2): Member State obligation on bankruptcy/cessation of activity
must_determine_conditions(MS, retention_of_documentation(S, Provider, national_competent_authorities, period(years(10)))) :-
    member_state(MS),
    provider_of(Provider, S),
    high_risk_ai_system(S),
    ( established_in(Provider, MS), bankrupt_or_ceased_activity(Provider) ;
      authorised_representative_of(Rep, Provider), established_in(Rep, MS), bankrupt_or_ceased_activity(Rep) ).

% Article 18(3): Financial institutions subject to internal governance requirements
must_maintain_documentation(Provider, technical_documentation(S, as_part_of_financial_services_law)) :-
    provider_of(Provider, S),
    high_risk_ai_system(S),
    financial_institution(Provider),
    subject_to_union_financial_services_governance(Provider).

% Provenance facts
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_18').
provenance(provider_of/2, 'celex:32024R1689/oj#art_18').
provenance(placed_on_market/1, 'celex:32024R1689/oj#art_18').
provenance(put_into_service/1, 'celex:32024R1689/oj#art_18').
provenance(documentation_item_article_18/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_18').
provenance(subject_to_union_financial_services_governance/1, 'celex:32024R1689/oj#art_18').
provenance(member_state/1, 'celex:32024R1689/oj#art_18').
provenance(bankrupt_or_ceased_activity/1, 'celex:32024R1689/oj#art_18').
provenance(established_in/2, 'celex:32024R1689/oj#art_18').
provenance(must_keep_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_documentation/2, 'celex:32024R1689/oj#art_18').

% References
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
