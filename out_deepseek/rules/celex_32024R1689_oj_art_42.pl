% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 843454c0d42924638342f08911e43991c184c9589f221ab59663727b17cfd957
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred trained_and_tested_on_relevant_data/1, gloss('high-risk AI system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting within which it is intended to be used'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme/1, gloss('high-risk AI system certified or with a statement of conformity under a cybersecurity scheme pursuant to Regulation (EU) 2019/881'), source('celex:32024R1689/oj#art_42').

trained_and_tested_on_relevant_data(S) :-
    ai_system(S),
    training_data(S),
    testing_data(S),
    intended_purpose(S).

certified_under_cybersecurity_scheme(S) :-
    ai_system(S),
    % certification or statement of conformity under a cybersecurity scheme
    true.

presumed_compliance_with_data_requirements(S) :-
    trained_and_tested_on_relevant_data(S).

presumed_compliance_with_cybersecurity_requirements(S) :-
    certified_under_cybersecurity_scheme(S).

provenance(trained_and_tested_on_relevant_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliance_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliance_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
