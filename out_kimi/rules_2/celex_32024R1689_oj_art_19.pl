% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7855b2c11fa9c08aca62be0fd1bb2e9a09a505394bbb58af663e3a54c5751ac5
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs'), source('celex:32024R1689/oj#art_19').
:- pred logs_under_control/2, gloss('logs of high-risk AI system are under provider control'), source('celex:32024R1689/oj#art_19').
:- pred retention_period/2, gloss('period for which logs must be kept'), source('celex:32024R1689/oj#art_19').
:- pred financial_institution/1, gloss('entity subject to Union financial services law'), source('celex:32024R1689/oj#art_19').
:- pred subject_to_financial_services_law/1, gloss('subject to requirements under Union financial services law'), source('celex:32024R1689/oj#art_19').
:- pred maintains_as_financial_documentation/2, gloss('maintains logs as part of financial services documentation'), source('celex:32024R1689/oj#art_19').

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    retention_period(S, Period),
    Period >= months(6),
    \+ national_law_provides_otherwise(S).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    national_law_provides_otherwise(S),
    applicable_law_specifies_period(S, _Period).

maintains_as_financial_documentation(P, S) :-
    provider(P),
    financial_institution(P),
    subject_to_financial_services_law(P),
    high_risk_ai_system(S),
    logs_under_control(P, S).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(maintains_as_financial_documentation/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(financial_institution/1, 'celex:32024R1689/oj#art_19').
provenance(subject_to_financial_services_law/1, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
