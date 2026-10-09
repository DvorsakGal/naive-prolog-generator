% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b9722e079c8fb1f876b034faf0808344b3a6fa04ac76bf9e21f6c44be5a6e250
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_42').
:- pred trained/1, gloss('system has been trained on appropriate data'), source('celex:32024R1689/oj#art_42').
:- pred tested/1, gloss('system has been tested on appropriate data'), source('celex:32024R1689/oj#art_42').
:- pred certified/1, gloss('system has obtained a cybersecurity certification'), source('celex:32024R1689/oj#art_42').
:- pred statement_of_conformity_issued/1, gloss('system has a statement of conformity under a cybersecurity scheme'), source('celex:32024R1689/oj#art_42').
:- pred published_in_oj/1, gloss('reference of certification or statement published in the Official Journal'), source('celex:32024R1689/oj#art_42').
:- pred covers_cybersecurity_requirements/1, gloss('certificate or statement covers the required cybersecurity requirements'), source('celex:32024R1689/oj#art_42').
:- pred presumed_compliant/1, gloss('presumed to comply with relevant requirements of the Regulation'), source('celex:32024R1689/oj#art_42').
:- pred presumed_cybersecurity_compliant/1, gloss('presumed to comply with cybersecurity requirements of the Regulation'), source('celex:32024R1689/oj#art_42').

presumed_compliant(S) :-
    high_risk_ai_system(S),
    trained(S),
    tested(S),
    intended_purpose(S).

presumed_cybersecurity_compliant(S) :-
    high_risk_ai_system(S),
    ( certified(S) ; statement_of_conformity_issued(S) ),
    published_in_oj(S),
    covers_cybersecurity_requirements(S).

provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_cybersecurity_compliant/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
