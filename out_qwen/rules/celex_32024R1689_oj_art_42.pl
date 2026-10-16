% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9eb1696df9895cb31938b2125212098fb6437170ad9f3c5fe7af4feb019a5b36
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred presumed_compliant_with_data_requirements/1, gloss('high-risk AI system presumed to comply with Article 10(4) requirements'), source('celex:32024R1689/oj#art_42').
:- pred presumed_compliant_with_cybersecurity_requirements/1, gloss('high-risk AI system presumed to comply with Article 15 cybersecurity requirements'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_setting_specific_data/1, gloss('trained and tested on data reflecting specific geographical, behavioural, contextual or functional setting'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_published_cybersecurity_scheme/1, gloss('certified or statement of conformity issued under cybersecurity scheme published in OJEU'), source('celex:32024R1689/oj#art_42').
:- pred certificate_covers_cybersecurity_requirements/1, gloss('cybersecurity certificate or statement covers Article 15 requirements'), source('celex:32024R1689/oj#art_42').

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
