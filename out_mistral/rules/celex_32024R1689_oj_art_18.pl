% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a15596efb59f604baa90b19729a17e82dc73b57c05fbf5591d9b1a16d300f910
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation/2, gloss('provider must keep documentation at disposal of national competent authorities'), source('celex:32024R1689/oj#art_18').
:- pred documentation_kept/2, gloss('specific documentation kept by provider'), source('celex:32024R1689/oj#art_18').
:- pred retention_period/2, gloss('period for which documentation must be kept'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').

must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    placing_on_market(S).

must_keep_documentation(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    putting_into_service(S).

retention_period(S, years(10)) :-
    high_risk_ai_system(S).

documentation_kept(P, technical_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).

documentation_kept(P, quality_management_system_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).

documentation_kept(P, notified_body_changes_documentation(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)),
    notified_body(_NB).

documentation_kept(P, notified_body_decisions(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)),
    notified_body(_NB).

documentation_kept(P, eu_declaration_of_conformity(S)) :-
    must_keep_documentation(P, S),
    retention_period(S, years(10)).

must_keep_documentation(P, technical_documentation(S)) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    part_of(S, financial_services_documentation).

financial_institution_provider(P) :-
    provider(P),
    financial_institution(P).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_kept/2, 'celex:32024R1689/oj#art_18').
provenance(retention_period/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
