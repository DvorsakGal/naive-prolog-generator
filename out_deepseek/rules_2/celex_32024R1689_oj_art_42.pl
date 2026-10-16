% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 6e6d406ed86c711ce439aa0f3bc8ab644a51b84a2639ed075d28a23280b3405e
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred trained_and_tested_on_relevant_data/1, gloss('trained and tested on data reflecting specific geographical, behavioural, contextual or functional setting'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme/1, gloss('certified or statement of conformity issued under cybersecurity scheme'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_scheme_reference_published/1, gloss('references of cybersecurity scheme published in OJEU'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certificate_covers_requirements/1, gloss('cybersecurity certificate or statement covers art_15 requirements'), source('celex:32024R1689/oj#art_42').

presumed_conformity(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_relevant_data(S).

presumed_conformity(S) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme(S),
    cybersecurity_scheme_reference_published(S),
    cybersecurity_certificate_covers_requirements(S).

provenance(presumed_conformity/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_relevant_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_scheme_reference_published/1, 'celex:32024R1689/oj#art_42').
provenance(cybersecurity_certificate_covers_requirements/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
