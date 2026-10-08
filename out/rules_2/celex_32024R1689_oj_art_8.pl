% unit       : celex:32024R1689/oj#art_8
% title      : Compliance with the requirements
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 2 Requirements for high-risk AI systems
% slice sha  : c7045aca09429116471bac508bc55ecb034e8042ec799ca94ded199cd8af8153
% model      : gpt-oss:120b-cloud
% prompt sha : 05543725502fbf374871537d9194db2114354588c9c4b49b45de859d44757598
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('AI system classified as high‑risk'), source('celex:32024R1689/oj#art_8').
:- pred intended_purpose_applies/1, gloss('consideration of the intended purpose of the AI system'), source('celex:32024R1689/oj#art_8').
:- pred state_of_the_art_applies/1, gloss('consideration of the generally acknowledged state of the art on AI'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system_applies/1, gloss('consideration of the risk management system referred to in art 9'), source('celex:32024R1689/oj#art_8').
:- pred required_compliance/1, gloss('high‑risk AI system must comply with the requirements laid down'), source('celex:32024R1689/oj#art_8').
:- pred must_ensure_compliance/2, gloss('provider must ensure that the AI system is fully compliant'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_testing_and_reporting/2, gloss('provider may integrate testing and reporting processes into existing documentation required by Union harmonisation legislation'), source('celex:32024R1689/oj#art_8').

required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose_applies(S),
    state_of_the_art_applies(S),
    risk_management_system_applies(S).

must_ensure_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

permitted_integration_of_testing_and_reporting(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_8').
provenance(intended_purpose_applies/1, 'celex:32024R1689/oj#art_8').
provenance(state_of_the_art_applies/1, 'celex:32024R1689/oj#art_8').
provenance(risk_management_system_applies/1, 'celex:32024R1689/oj#art_8').
provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure_compliance/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
