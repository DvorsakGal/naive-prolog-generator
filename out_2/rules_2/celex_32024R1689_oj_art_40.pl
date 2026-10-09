% unit       : celex:32024R1689/oj#art_40
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 88e247ac891150197c02c849ebd6a180ab5deb0378fab8c74b71b069fd817c75
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 0ad6cbf351bacefff2e9e3cd64796247bbbce2c7dfa153bb3a207bba53e95a62
% cached     : False
% title      : Harmonised standards and standardisation deliverables
:- pred conform_requirements/2, gloss('system conforms to requirements when complying with a harmonised standard'), source('celex:32024R1689/oj#art_40').
:- pred conform_obligation/2, gloss('system conforms to obligation when complying with a harmonised standard'), source('celex:32024R1689/oj#art_40').
:- pred must_issue/2, gloss('Commission shall issue a standardisation request'), source('celex:32024R1689/oj#art_40').
:- pred must_include/2, gloss('Commission shall include deliverables on resource performance'), source('celex:32024R1689/oj#art_40').
:- pred must_consult/2, gloss('Commission shall consult board and stakeholders'), source('celex:32024R1689/oj#art_40').
:- pred must_specify/2, gloss('Commission shall specify standards characteristics'), source('celex:32024R1689/oj#art_40').
:- pred must_seek/2, gloss('Participants shall seek to promote investment and innovation'), source('celex:32024R1689/oj#art_40').

conform_requirements(S, chp_3_sec_2) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).

conform_obligation(S, chp_5_sec_2) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).

conform_obligation(S, chp_5_sec_3) :-
    (high_risk_ai_system(S) ; general_purpose_ai_model(S)),
    complies_with_harmonised_standard(S).

must_issue(C, standardisation_request(requirements(chp_3_sec_2))) :-
    ai_office(C).

must_issue(C, standardisation_request(obligation(chp_5_sec_2))) :-
    ai_office(C).

must_issue(C, standardisation_request(obligation(chp_5_sec_3))) :-
    ai_office(C).

must_include(C, resource_performance_deliverable) :-
    ai_office(C).

must_consult(C, board) :-
    ai_office(C).

must_consult(C, stakeholder) :-
    ai_office(C).

must_specify(C, standard_characteristics(clear, consistent, union_harmonisation_legislation(anx_1))) :-
    ai_office(C).

must_seek(O, promote(investment_and_innovation)) :-
    operator(O).

provenance(conform_requirements/2, 'celex:32024R1689/oj#art_40').
provenance(conform_obligation/2, 'celex:32024R1689/oj#art_40').
provenance(must_issue/2, 'celex:32024R1689/oj#art_40').
provenance(must_include/2, 'celex:32024R1689/oj#art_40').
provenance(must_consult/2, 'celex:32024R1689/oj#art_40').
provenance(must_specify/2, 'celex:32024R1689/oj#art_40').
provenance(must_seek/2, 'celex:32024R1689/oj#art_40').

references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_2').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#chp_5/sec_3').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_10').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#anx_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_1').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_40/par_2/unp_2').
references('celex:32024R1689/oj#art_40', 'celex:32012R1025/oj#art_24').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_5').
references('celex:32024R1689/oj#art_40', 'celex:32024R1689/oj#art_6').
