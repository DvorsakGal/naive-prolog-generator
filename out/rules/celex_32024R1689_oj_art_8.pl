% unit       : celex:32024R1689/oj#art_8
% title      : Compliance with the requirements
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : gpt-oss:120b-cloud
% prompt sha : b1890358406f124bdec63affe9d63db3b88cabbf75e7e6be400eea6e2fd9ff47
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_8').
:- pred taking_into_account_intended_purpose/1, gloss('considering intended purpose'), source('celex:32024R1689/oj#art_8').
:- pred taking_into_account_state_of_the_art/1, gloss('considering state of the art'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system_considered/1, gloss('risk management system taken into account'), source('celex:32024R1689/oj#art_8').
:- pred product_contains_ai_system/1, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred applicable_requirements/1, gloss('all applicable Union harmonisation requirements'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration/2, gloss('provider may integrate testing and reporting into existing documentation'), source('celex:32024R1689/oj#art_8').

required_compliance(S) :-
    high_risk(S),
    taking_into_account_intended_purpose(S),
    taking_into_account_state_of_the_art(S),
    risk_management_system_considered(S).

must_ensure_compliance(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod),
    high_risk(Prod),
    applicable_requirements(Prod).

permitted_integration(P, Prod) :-
    provider(P),
    product_contains_ai_system(Prod),
    high_risk(Prod).

provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
