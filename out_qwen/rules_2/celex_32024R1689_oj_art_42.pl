% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 31f5b35163d07214040bc91b329fed1d3f82d1dfcaaa0a70d469262146938d76
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred presumed_compliant_with_data_requirements/1, gloss('high-risk AI system presumed to comply with Article 10(4) requirements based on training and testing data'), source('celex:32024R1689/oj#art_42').
:- pred presumed_compliant_with_cybersecurity_requirements/1, gloss('high-risk AI system presumed to comply with Article 15 cybersecurity requirements based on certification'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_setting_specific_data/1, gloss('trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting of intended use'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_published_cybersecurity_scheme/1, gloss('certified or statement of conformity issued under a cybersecurity scheme pursuant to Regulation 2019/881 with references published in OJEU'), source('celex:32024R1689/oj#art_42').
:- pred certificate_covers_cybersecurity_requirements/1, gloss('cybersecurity certificate or statement of conformity covers the relevant Article 15 requirements'), source('celex:32024R1689/oj#art_42').

presumed_compliant_with_data_requirements(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_setting_specific_data(S).

presumed_compliant_with_cybersecurity_requirements(S) :-
    high_risk_ai_system(S),
    certified_under_published_cybersecurity_scheme(S),
    certificate_covers_cybersecurity_requirements(S).

provenance(presumed_compliant_with_data_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_compliant_with_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').
provenance(trained_and_tested_on_setting_specific_data/1, 'celex:32024R1689/oj#art_42').
provenance(certified_under_published_cybersecurity_scheme/1, 'celex:32024R1689/oj#art_42').
provenance(certificate_covers_cybersecurity_requirements/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
