% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cea73760a111211240d8e3e7b00f5cb3e22fee1cd958d0ac3215e50204eceabf
% cached     : False
% title      : Documentation keeping
:- pred high_risk_ai_system/1, gloss('high‑risk AI system as defined in the Regulation'), source('celex:32024R1689/oj#art_18').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution/1, gloss('provider that is a financial institution subject to Union financial services law'), source('celex:32024R1689/oj#art_18').

must_keep(Provider, technical_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).

must_keep(Provider, quality_management_system_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).

must_keep(Provider, notified_body_changes_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).

must_keep(Provider, notified_body_decisions_documentation) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).

must_keep(Provider, eu_declaration_of_conformity) :-
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    period(years(10), after(S)).

must_determine(MemberState, retention_condition(Provider, period(years(10), after(S)))) :-
    member_state(MemberState),
    provider(Provider),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

must_determine(MemberState, retention_condition(AR, period(years(10), after(S)))) :-
    member_state(MemberState),
    authorised_representative(AR),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)).

must_maintain(Provider, technical_documentation) :-
    provider(Provider),
    financial_institution(Provider).

provenance(must_keep/2, 'celex:32024R1689/oj#art_18').
provenance(must_determine/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain/2, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
