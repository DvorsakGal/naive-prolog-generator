% unit       : celex:32024R1689/oj#art_18
% title      : Documentation keeping
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : gpt-oss:120b-cloud
% prompt sha : fcc6bae94b5f54791b4717d46c6548d78c5d3f866ed203e1f15132338b0a13d6
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_18').
:- pred ten_years_after_market_or_service/1, gloss('period ending ten years after the AI system has been placed on the market or put into service'), source('celex:32024R1689/oj#art_18').
:- pred doc_type/1, gloss('type of documentation referred to in Article 18'), source('celex:32024R1689/oj#art_18').
:- pred required_keep_documentation/3, gloss('provider must keep documentation at the disposal of the national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_18').
:- pred bankrupt/1, gloss('entity has become bankrupt'), source('celex:32024R1689/oj#art_18').
:- pred ceases_activity/1, gloss('entity has ceased its activity'), source('celex:32024R1689/oj#art_18').
:- pred provider_on_territory/2, gloss('provider established on the territory of a Member State'), source('celex:32024R1689/oj#art_18').
:- pred authorised_representative_on_territory/2, gloss('authorised representative established on the territory of a Member State'), source('celex:32024R1689/oj#art_18').
:- pred period_not_ended_yet/1, gloss('the ten‑year period has not yet ended'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('provider is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred part_of_financial_services_law/1, gloss('documentation is part of the documentation kept under Union financial services law'), source('celex:32024R1689/oj#art_18').
:- pred technical_documentation/1, gloss('technical documentation of the AI system'), source('celex:32024R1689/oj#art_18').

% Types of documentation referred to in Article 18
doc_type(technical_documentation).
doc_type(quality_management_system_documentation).
doc_type(changes_approved_by_notified_body_documentation).
doc_type(notified_body_decisions_documentation).
doc_type(eu_declaration_of_conformity).

% Technical documentation as a concrete object
technical_documentation(technical_documentation).

% -----------------------------------------------------------------
% Obligations of the provider
required_keep_documentation(Provider, Doc, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    ten_years_after_market_or_service(System),
    doc_type(Doc).

provenance(required_keep_documentation/3, 'celex:32024R1689/oj#art_18').

% -----------------------------------------------------------------
% Obligations of each Member State
required_determine_conditions(MemberState, Doc, System) :-
    member_state(MemberState),
    high_risk_ai_system(System),
    doc_type(Doc),
    (   provider(P),
        (bankrupt(P) ; ceases_activity(P)),
        provider_on_territory(P, MemberState)
    ;   authorised_representative(AR),
        (bankrupt(AR) ; ceases_activity(AR)),
        authorised_representative_on_territory(AR, MemberState)
    ),
    period_not_ended_yet(System).

provenance(required_determine_conditions/3, 'celex:32024R1689/oj#art_18').

% -----------------------------------------------------------------
% Additional obligation for financial‑institution providers
required_maintain_technical_documentation(Provider, System) :-
    provider(Provider),
    financial_institution(Provider),
    high_risk_ai_system(System),
    technical_documentation(Doc),
    part_of_financial_services_law(Doc).

provenance(required_maintain_technical_documentation/2, 'celex:32024R1689/oj#art_18').

% -----------------------------------------------------------------
% References cited in this provision
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
