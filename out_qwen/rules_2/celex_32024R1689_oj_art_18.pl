% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : a3ed51caedeaf14ce0d43f682e418c7cd979cad1bfb1b3745c44a91e0e1399cb
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation_at_disposal/2, gloss('provider must keep specified documentation at disposal of national competent authorities for period'), source('celex:32024R1689/oj#art_18').
:- pred documentation_retention_period/2, gloss('period ending 10 years after placing on market or putting into service'), source('celex:32024R1689/oj#art_18').
:- pred required_documentation_item/2, gloss('specific documentation item that must be kept under Article 18(1)'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').

must_keep_documentation_at_disposal(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    \+ financial_institution_provider(P),
    documentation_retention_period(S, Period),
    required_documentation_item(S, Item),
    keep_at_disposal_of_national_competent_authorities(P, Item, Period).

documentation_retention_period(S, years(10)) :-
    high_risk_ai_system(S),
    placed_on_market_or_put_into_service(S).

required_documentation_item(S, technical_documentation(S)).
required_documentation_item(S, quality_management_system_documentation(S)).
required_documentation_item(S, changes_approved_by_notified_bodies(S)).
required_documentation_item(S, notified_body_decisions(S)).
required_documentation_item(S, eu_declaration_of_conformity(S)).

financial_institution_provider(P) :-
    provider(P),
    financial_institution(P).

provenance(must_keep_documentation_at_disposal/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_retention_period/2, 'celex:32024R1689/oj#art_18').
provenance(required_documentation_item/2, 'celex:32024R1689/oj#art_18').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
