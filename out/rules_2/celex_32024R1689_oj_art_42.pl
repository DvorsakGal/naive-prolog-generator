% unit       : celex:32024R1689/oj#art_42
% title      : Presumption of conformity with certain requirements
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : gpt-oss:120b-cloud
% prompt sha : c5db0314d7bdf7ec66a8deca7776000e6f8d350c3e6813587cded5267435b3f2
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_42').
:- pred reflective_data_training_and_testing_applies/1, gloss('system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting in which it is intended to be used'), source('celex:32024R1689/oj#art_42').
:- pred cybersecurity_certified_and_published_applies/1, gloss('system certified or with a statement of conformity issued under a cybersecurity scheme and whose references have been published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_42').
:- pred exempt_verification_of_requirements/2, gloss('presumption of conformity with the specified set of requirements'), source('celex:32024R1689/oj#art_42').

exempt_verification_of_requirements(S, art_10_par_4) :-
    high_risk_ai_system(S),
    reflective_data_training_and_testing_applies(S).

exempt_verification_of_requirements(S, art_15) :-
    high_risk_ai_system(S),
    cybersecurity_certified_and_published_applies(S).

provenance(exempt_verification_of_requirements/2, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
