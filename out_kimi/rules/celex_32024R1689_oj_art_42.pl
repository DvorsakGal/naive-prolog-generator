% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8f97a98bdf16a394abf06bed5f5dea1759d7ecee86f9bb8723d9dcf98b98eb0d
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred presumed_conformity_data_requirements/1, gloss('high-risk AI system presumed compliant due to training and testing on appropriate data'), source('celex:32024R1689/oj#art_42').
:- pred presumed_conformity_cybersecurity_requirements/1, gloss('high-risk AI system presumed compliant due to cybersecurity certification'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_representative_data/1, gloss('trained and tested on data reflecting intended use setting'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certified/1, gloss('certified under EU cybersecurity scheme with published references'), source('celex:32024R1689/oj#art_42').
:- pred covers_requirements/2, gloss('certificate or statement covers specified requirements'), source('celex:32024R1689/oj#art_42').

presumed_conformity_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_representative_data(S).

trained_and_tested_on_representative_data(S) :-
    training_data(S),
    testing_data(S),
    reflects_intended_use_setting(S).

reflects_intended_use_setting(S) :-
    geographical_setting(S),
    behavioural_setting(S),
    contextual_setting(S),
    functional_setting(S).

presumed_conformity_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    cybersecurity_certified(S),
    covers_requirements(S, cybersecurity_requirements).

cybersecurity_certified(S) :-
    certified_under_cybersecurity_scheme(S).
cybersecurity_certified(S) :-
    statement_of_conformity_issued(S).

certified_under_cybersecurity_scheme(S) :-
    cybersecurity_certificate(S),
    published_in_official_journal(S).

statement_of_conformity_issued(S) :-
    statement_of_conformity(S),
    published_in_official_journal(S).

published_in_official_journal(S) :-
    references_published(S, official_journal).

provenance(presumed_conformity_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_representative_data/1, 'celex:32024R1689/oj#art_42').
provenance(reflects_intended_use_setting/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_conformity_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certified/1, 'celex:32024R1689/oj#art_42').
provenance(covers_requirements/2, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(statement_of_conformity_issued/1, 'celex:32024R1689/oj#art_42').
provenance(published_in_official_journal/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
