% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 38898cd0307202a7e298510577a7e7b98be5f546897114b3b4a5966b72160844
% cached     : False
% title      : Documentation keeping
:- pred provides/2, gloss('provider provides AI system'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('provider is a financial institution'), source('celex:32024R1689/oj#art_18').
:- pred provider_bankrupt_or_ceases/1, gloss('provider or its authorised representative goes bankrupt or ceases activity'), source('celex:32024R1689/oj#art_18').
:- pred document_type/1, gloss('type of documentation required'), source('celex:32024R1689/oj#art_18').

% --- obligations of providers (paragraph 1) ---
must_keep(Provider, technical_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_keep(Provider, quality_management_system_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_keep(Provider, changes_approved_by_notified_body_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_keep(Provider, notified_body_decisions_documentation(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_keep(Provider, eu_declaration_of_conformity(period(years(10)))) :-
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

% --- obligations of Member States (paragraph 2) ---
must_determine(MemberState, documentation_availability(Provider, Document, period(years(10)))) :-
    member_state(MemberState),
    (provider(Provider) ; authorised_representative(Provider)),
    provider_bankrupt_or_ceases(Provider),
    provider(Provider),
    provides(Provider, System),
    high_risk_ai_system(System),
    document_type(Document).

% --- additional obligation for financial institutions (paragraph 3) ---
must_keep(Provider, technical_documentation(under_financial_services_law)) :-
    provider(Provider),
    financial_institution(Provider),
    provides(Provider, System),
    high_risk_ai_system(System).

% --- document type enumeration ---
document_type(technical_documentation).
document_type(quality_management_system_documentation).
document_type(changes_approved_by_notified_body_documentation).
document_type(notified_body_decisions_documentation).
document_type(eu_declaration_of_conformity).

% --- provenance ---
provenance(must_keep/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine/2, 'celex:32024R1689/oj#art_18').
provenance(provides/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_18').
provenance(provider_bankrupt_or_ceases/1, 'celex:32024R1689/oj#art_18').
provenance(document_type/1, 'celex:32024R1689/oj#art_18').

% --- references ---
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
