% unit       : celex:32024R1689/oj#art_42
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 5b7eb7f8fdbba2c49ee811f2ba953fd993f967b97a0e2411ee627dae0fa6fa2e
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : f03418742403780396756d238e7202fd24b462d875f9e136dc6520ffe856751e
% cached     : False
% title      : Presumption of conformity with certain requirements
:- pred trained_and_tested_on_reflective_data_applies/1, gloss('system trained and tested on data reflecting the specific geographical, behavioural, contextual or functional setting intended for use'), source('celex:32024R1689/oj#art_42').
:- pred certified_under_cybersecurity_scheme_applies/1, gloss('system certified or with a statement of conformity issued under a cybersecurity scheme'), source('celex:32024R1689/oj#art_42').
:- pred published_references_applies/1, gloss('references of the cybersecurity certificate or statement of conformity have been published in the Official Journal of the European Union'), source('celex:32024R1689/oj#art_42').

presumed_compliant(S) :-
    high_risk_ai_system(S),
    trained_and_tested_on_reflective_data_applies(S).

presumed_cybersecurity_compliance(S) :-
    high_risk_ai_system(S),
    certified_under_cybersecurity_scheme_applies(S),
    published_references_applies(S).

provenance(presumed_compliant/1, 'celex:32024R1689/oj#art_42').
provenance(presumed_cybersecurity_compliance/1, 'celex:32024R1689/oj#art_42').

references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_10/par_4').
references('celex:32024R1689/oj#art_42', 'celex:32019R0881/oj').
references('celex:32024R1689/oj#art_42', 'celex:32024R1689/oj#art_15').
