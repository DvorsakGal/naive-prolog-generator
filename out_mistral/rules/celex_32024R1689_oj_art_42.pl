% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7ea751a1706a3bc75b5bc12db1a09b307badc773eafc9d741df961ade395f51a
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred presumed_compliant_with_data_requirements/1, gloss('high-risk AI system trained and tested on data reflecting its specific setting is presumed to comply with Article 10(4) requirements'), source('celex:32024R1689/oj#art_42').
:- pred presumed_compliant_with_cybersecurity_requirements/1, gloss('high-risk AI system with cybersecurity certification is presumed to comply with Article 15 cybersecurity requirements to the extent covered'), source('celex:32024R1689/oj#art_42').

presumed_compliant_with_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_on_representative_data(S),
    tested_on_representative_data(S).

presumed_compliant_with_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certified(S).

trained_on_representative_data(S) :-
    trained_on_data_reflecting_setting(S, geographical),
    trained_on_data_reflecting_setting(S, behavioural),
    trained_on_data_reflecting_setting(S, contextual),
    trained_on_data_reflecting_setting(S, functional).

tested_on_representative_data(S) :-
    tested_on_data_reflecting_setting(S, geographical),
    tested_on_data_reflecting_setting(S, behavioural),
    tested_on_data_reflecting_setting(S, contextual),
    tested_on_data_reflecting_setting(S, functional).

trained_on_data_reflecting_setting(S, Setting) :-
    training_data(D),
    used_for_training(S, D),
    reflects_setting(D, Setting),
    intended_use_setting(S, Setting).

tested_on_data_reflecting_setting(S, Setting) :-
    testing_data(D),
    used_for_testing(S, D),
    reflects_setting(D, Setting),
    intended_use_setting(S, Setting).

cybersecurity_certified(S) :-
    certified_under_cybersecurity_scheme(S, Scheme),
    scheme_references_published_in_official_journal(Scheme).

certified_under_cybersecurity_scheme(S, Scheme) :-
    cybersecurity_certificate_issued(S, Scheme).

certified_under_cybersecurity_scheme(S, Scheme) :-
    statement_of_conformity_issued(S, Scheme).

high_risk_ai_system(S) :-
    ai_system(S),
    high_risk(S).

provenance(presumed_compliant_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliant_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(trained_on_data_reflecting_setting/2, 'celex:32024R1689/oj#art_42').
provenance(tested_on_data_reflecting_setting/2, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certified/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/2, 'celex:32024R1689/oj#art_42').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
