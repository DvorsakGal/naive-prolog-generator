% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 07d8fa202b6062c0e477bbc16d898dd5861e973e6607e6f4a1af08fa84a00a3b
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred presumed_conformity_data_requirements/1, gloss('high-risk AI system presumed to comply with Article 10(4) data requirements'), source('celex:32024R1689/oj#art_42').
:- pred presumed_conformity_cybersecurity_requirements/1, gloss('high-risk AI system presumed to comply with Article 15 cybersecurity requirements'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_appropriate_data/1, gloss('trained and tested on data reflecting intended use setting'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certificate_or_statement_issued/1, gloss('cybersecurity certificate or statement of conformity issued under relevant scheme'), source('celex:32024R1689/oj#art_42').
:- pred certificate_covers_cybersecurity_requirements/1, gloss('cybersecurity certificate or statement covers Article 15 requirements'), source('celex:32024R1689/oj#art_42').

presumed_conformity_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_appropriate_data(S).

trained_and_tested_on_appropriate_data(S) :-
    training_data_information(S),
    testing_data(S),
    data_training_requirement_met(S).

presumed_conformity_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certificate_or_statement_issued(S),
    reference_published_in_official_journal(S),
    certificate_covers_cybersecurity_requirements(S).

cybersecurity_certificate_or_statement_issued(S) :-
    statement_of_conformity(S).

provenance(presumed_conformity_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_conformity_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_appropriate_data/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_or_statement_issued/1, 'celex:32024R1689/oj#art_42').
provenance(certificate_covers_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
