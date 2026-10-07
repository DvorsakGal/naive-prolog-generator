% unit      : celex:32024R1689/oj#art_8
% source    : celex:32024R1689%2Foj#art_8.xml
% model     : gpt-oss:120b-cloud
% prompt sha: 4bb875fe50e1676764b78ed80325eaac901fcb5fc362f11b0628c6052a415129
% signature: 5a505f3da956f61957e66c01dbcf90e9fc05776918032a15a3fc75b49d8c5e61
% cached    : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_8').
:- pred risk_management_system/1, gloss('risk management system referred to in art 9'), source('celex:32024R1689/oj#art_8').
:- pred contains_ai_system/2, gloss('product contains an AI system'), source('celex:32024R1689/oj#art_8').
:- pred applicable_union_harmonisation_requirements/1, gloss('applicable Union harmonisation legislation requirements'), source('celex:32024R1689/oj#art_8').
:- pred permitted_integration_of_testing_and_reporting/2, gloss('provider may integrate testing and reporting processes into existing documentation'), source('celex:32024R1689/oj#art_8').

required_compliance(S) :-
    high_risk_ai_system(S),
    intended_purpose(S, _),
    risk_management_system(_).

must_ensure(Provider, Product) :-
    provider(Provider),
    contains_ai_system(Product, S),
    high_risk_ai_system(S),
    applicable_union_harmonisation_requirements(Product).

permitted_integration_of_testing_and_reporting(Provider, Product) :-
    provider(Provider),
    contains_ai_system(Product, S),
    high_risk_ai_system(S).

provenance(required_compliance/1, 'celex:32024R1689/oj#art_8').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_8').
provenance(permitted_integration_of_testing_and_reporting/2, 'celex:32024R1689/oj#art_8').

references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_9').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#anx_1/sec_1').
references('celex:32024R1689/oj#art_8', 'celex:32024R1689/oj#art_8/par_1').
