% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 2fe5acf8bdb089801c9ba4d7f3d3106b355a315b495e79127e8feefdc77768b0
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_setting_data/1, gloss('AI system trained and tested on data reflecting its specific intended setting'), source('celex:32024R1689/oj#art_42').
:- pred presumed_conformity/2, gloss('AI system is presumed to comply with specific legal requirements'), source('celex:32024R1689/oj#art_42').
:- pred certified_or_statement_issued_under_cybersecurity_scheme/2, gloss('AI system certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation (EU) 2019/881'), source('celex:32024R1689/oj#art_42').
:- pred published_in_official_journal/1, gloss('references have been published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_42').
:- pred covers_cybersecurity_requirements/2, gloss('cybersecurity certificate or statement of conformity covers relevant cybersecurity requirements'), source('celex:32024R1689/oj#art_42').

% Paragraph 1
presumed_conformity(System, requirements_art_10_par_4) :-
    high_risk_ai_system(System),
    trained_and_tested_on_setting_data(System).

% Paragraph 2
presumed_conformity(System, cybersecurity_requirements_art_15) :-
    high_risk_ai_system(System),
    certified_or_statement_issued_under_cybersecurity_scheme(System, SchemeCertOrStatement),
    published_in_official_journal(SchemeCertOrStatement),
    covers_cybersecurity_requirements(SchemeCertOrStatement, cybersecurity_requirements_art_15).

provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
