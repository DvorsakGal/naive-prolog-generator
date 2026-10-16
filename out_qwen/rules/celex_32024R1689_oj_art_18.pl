% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c907d35ae56c0f3e5dfa1416579a5fc244a92af3e6f79568de74b36af845ebb4
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation(Provider, Documentation), gloss('provider must keep specific documentation at disposal of authorities'), source('celex:32024R1689/oj#art_18').
:- pred documentation_retention_period_years(Years), gloss('number of years documentation must be kept'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider(Provider), gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').

documentation_retention_period_years(10).

must_keep_documentation(P, technical_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).

must_keep_documentation(P, quality_management_system_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).

must_keep_documentation(P, changes_approved_by_notified_bodies(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S),
    changes_approved_by_notified_body_applies(S).

must_keep_documentation(P, notified_body_decisions(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S),
    notified_body_decision_exists(S).

must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S),
    within_retention_period(S).

within_retention_period(S) :-
    documentation_retention_period_years(Years),
    time_since_market_event(S, Elapsed),
    Elapsed =< Years.

placed_on_market_or_put_into_service(S) :-
    placing_on_market(S).
placed_on_market_or_put_into_service(S) :-
    putting_into_service(S).

% Financial institutions maintain technical documentation under financial services law
must_keep_documentation(P, technical_documentation_under_financial_law(S)) :-
    financial_institution_provider(P),
    high_risk_ai_system(S).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_retention_period_years/1, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
