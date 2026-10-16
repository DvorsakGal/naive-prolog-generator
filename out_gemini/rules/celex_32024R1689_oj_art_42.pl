% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dd82f0b1a02d6f5b58b1d1792cd7d77767aec0a0f5982790dae08505d2ae5645
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_42').
:- pred trained_and_tested_on_setting_data/1, gloss('trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting intended'), source('celex:32024R1689/oj#art_42').
:- pred presumed_conformity/2, gloss('system is presumed to comply with specified requirements'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme/2, gloss('system certified or statement of conformity issued under Regulation (EU) 2019/881 covering requirements'), source('celex:32024R1689/oj#art_42').
:- pred published_in_oj/1, gloss('references have been published in the Official Journal'), source('celex:32024R1689/oj#art_42').

% Paragraph 1: Presumption of conformity with Article 10(4)
presumed_conformity(System, requirements_art_10_par_4) :-
    high_risk_ai_system(System),
    trained_and_tested_on_setting_data(System).

% Paragraph 2: Presumption of conformity with Article 15 cybersecurity requirements
presumed_conformity(System, requirements_art_15_cybersecurity) :-
    high_risk_ai_system(System),
    certified_under_cybersecurity_scheme(System, Scheme),
    published_in_oj(Scheme).

provenance(presumed_conformity/2, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
