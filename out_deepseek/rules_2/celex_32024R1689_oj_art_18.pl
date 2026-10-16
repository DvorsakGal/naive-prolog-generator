% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 51206b73a81ea3b0513de666475283d277b7af37498cc7066b59a7fc82656d17
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred must_determine_conditions/2, gloss('Member State must determine conditions for documentation availability'), source('celex:32024R1689/oj#art_18').
:- pred must_maintain_technical_documentation/2, gloss('financial institution provider must maintain technical documentation under financial services law'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').

must_keep_documentation(Provider, documentation(TechnicalDoc, QualityDoc, ApprovedChanges, NotifiedBodyDocs, EUDeclaration)) :-
    provider(Provider),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ),
    TechnicalDoc = technical_documentation(art_11),
    QualityDoc = quality_management_system_documentation(art_17),
    ApprovedChanges = changes_approved_by_notified_bodies,
    NotifiedBodyDocs = documents_issued_by_notified_bodies,
    EUDeclaration = eu_declaration_of_conformity(art_47).

must_determine_conditions(MemberState, documentation_availability(Provider)) :-
    must_keep_documentation(Provider, _),
    ( provider(Provider) ; authorised_representative(Provider) ),
    established_on_territory(Provider, MemberState),
    ( bankrupt(Provider) ; ceased_activity(Provider) ).

must_maintain_technical_documentation(Provider, technical_documentation(art_11)) :-
    financial_institution_provider(Provider),
    high_risk_ai_system(S),
    ( placing_on_market(S) ; putting_into_service(S) ).

financial_institution_provider(Provider) :-
    provider(Provider),
    subject_to_union_financial_services_law(Provider).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_technical_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
