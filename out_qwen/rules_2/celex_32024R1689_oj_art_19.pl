% unit       : celex:32024R1689/oj#art_19
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 0f2572a54d8a70004ffa8312da33d5b9f2fee58cc54f96ca38f1086fe949fd51
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : a2b08029b1c254239736fe66714c52765effa241cefe23d83c8194705fea3475
% cached     : False
% title      : Automatically generated logs
:- pred must_keep_logs/2, gloss('provider must keep automatically generated logs of high-risk AI system'), source('celex:32024R1689/oj#art_19').
:- pred logs_under_control/2, gloss('logs are under the control of the provider'), source('celex:32024R1689/oj#art_19').
:- pred minimum_log_retention_period/2, gloss('minimum period for keeping logs based on intended purpose'), source('celex:32024R1689/oj#art_19').
:- pred financial_services_documentation_applies/2, gloss('logs maintained as part of documentation under financial services law'), source('celex:32024R1689/oj#art_19').

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    logs_under_control(P, S),
    \+ financial_institution(P),
    minimum_log_retention_period(S, months(6)).

must_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    financial_institution(P),
    financial_services_documentation_applies(P, S).

provenance(must_keep_logs/2, 'celex:32024R1689/oj#art_19').
provenance(logs_under_control/2, 'celex:32024R1689/oj#art_19').
provenance(minimum_log_retention_period/2, 'celex:32024R1689/oj#art_19').
provenance(financial_services_documentation_applies/2, 'celex:32024R1689/oj#art_19').

references('celex:32024R1689/oj#art_19', 'celex:32024R1689/oj#art_12/par_1').
