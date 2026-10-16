% unit       : celex:32024R1689/oj#art_18
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 1971a72071254ec4462422a7ed73c43a9883e077996001dd36fc25ac11245d5d
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5a08e0250119329720d10ebfa62fe5c6f406d5ed3d1af8c0b28e937b8171e245
% cached     : False
% title      : Documentation keeping
:- pred must_keep_documentation/2, gloss('provider must keep documentation for authorities'), source('celex:32024R1689/oj#art_18').
:- pred documentation_period/2, gloss('period for which documentation must be kept'), source('celex:32024R1689/oj#art_18').
:- pred technical_documentation/1, gloss('technical documentation of AI system'), source('celex:32024R1689/oj#art_18').
:- pred quality_management_system_documentation/1, gloss('documentation concerning quality management system'), source('celex:32024R1689/oj#art_18').
:- pred approved_changes_documentation/1, gloss('documentation concerning changes approved by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred notified_body_decisions/1, gloss('decisions and documents issued by notified bodies'), source('celex:32024R1689/oj#art_18').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity'), source('celex:32024R1689/oj#art_18').
:- pred member_state_determines_conditions/2, gloss('member state determines conditions for documentation keeping after bankruptcy'), source('celex:32024R1689/oj#art_18').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution'), source('celex:32024R1689/oj#art_18').
:- pred must_maintain_technical_documentation_under_financial_law/1, gloss('financial institution provider must maintain technical documentation under financial services law'), source('celex:32024R1689/oj#art_18').

documentation_period(S, years(10)) :-
    high_risk_ai_system(S),
    (placing_on_market(S); putting_into_service(S)).

must_keep_documentation(P, technical_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).

must_keep_documentation(P, quality_management_system_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).

must_keep_documentation(P, approved_changes_documentation(S)) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_),
    documentation_period(S, years(10)).

must_keep_documentation(P, notified_body_decisions(S)) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_),
    documentation_period(S, years(10)).

must_keep_documentation(P, eu_declaration_of_conformity(S)) :-
    provider(P),
    high_risk_ai_system(S),
    documentation_period(S, years(10)).

member_state_determines_conditions(MemberState, S) :-
    high_risk_ai_system(S),
    (provider_bankrupt_or_ceases_activity(P, MemberState); authorised_representative_bankrupt_or_ceases_activity(R, MemberState)),
    documentation_period(S, years(10)).

must_maintain_technical_documentation_under_financial_law(P) :-
    financial_institution_provider(P),
    high_risk_ai_system(S).

provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_18').
provenance(documentation_period/2, 'celex:32024R1689/oj#art_18').
provenance(member_state_determines_conditions/2, 'celex:32024R1689/oj#art_18').
provenance(must_maintain_technical_documentation_under_financial_law/1, 'celex:32024R1689/oj#art_18').

references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_18', 'celex:32024R1689/oj#art_18/par_1').
