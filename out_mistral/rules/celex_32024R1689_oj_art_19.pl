% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 66f3f6a74bca1c3b0e44b51bf1d3480e2045d5dcff33e78e3637a4e8ac1c1371
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider obliged to keep automatically generated logs of high-risk AI system'), source('celex:32024R1689/oj#art_19').
:- pred logs_under_control/2, gloss('logs of high-risk AI system under control of provider'), source('celex:32024R1689/oj#art_19').
:- pred appropriate_retention_period/2, gloss('retention period appropriate to intended purpose of high-risk AI system'), source('celex:32024R1689/oj#art_19').
:- pred minimum_retention_period/1, gloss('minimum retention period of six months'), source('celex:32024R1689/oj#art_19').
:- pred financial_institution_provider/1, gloss('provider that is a financial institution subject to Union financial services law requirements'), source('celex:32024R1689/oj#art_19').
:- pred logs_maintained_as_part_of_documentation/2, gloss('logs maintained as part of documentation under financial services law'), source('celex:32024R1689/oj#art_19').

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    appropriate_retention_period(S, months(6)).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    minimum_retention_period(months(6)),
    appropriate_retention_period(S, months(6)).

logs_under_control(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    automatically_generated_logs(S, L),
    under_control(P, L).

appropriate_retention_period(S, Period) :-
    high_risk_ai_system(S),
    intended_purpose(S),
    period_appropriate_to_intended_purpose(S, Period).

minimum_retention_period(months(6)).

must_maintain_logs_as_documentation(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    logs_maintained_as_part_of_documentation(P, S).

financial_institution_provider(P) :-
    provider(P),
    financial_institution(P),
    subject_to_union_financial_services_law(P).

logs_maintained_as_part_of_documentation(P, S) :-
    financial_institution_provider(P),
    high_risk_ai_system(S),
    automatically_generated_logs(S, L),
    documentation_under_financial_services_law(P, D),
    logs_included_in_documentation(L, D).

automatically_generated_logs(S, L) :-
    high_risk_ai_system(S),
    logs_automatically_generated_by(S, L).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(appropriate_retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(minimum_retention_period/1, 'celex:32024R1689/oj#art_19').
provenance(financial_institution_provider/1, 'celex:32024R1689/oj#art_19').
provenance(logs_maintained_as_part_of_documentation/2, 'celex:32024R1689/oj#art_19').
provenance(must_maintain_logs_as_documentation/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
