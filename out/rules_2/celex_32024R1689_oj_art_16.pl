% unit       : celex:32024R1689/oj#art_16
% title      : Obligations of providers of high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : ccb6ea32e881fdb457a5e7e7774884fa720b03add1341ce6d731aabbfd8af058
% model      : gpt-oss:120b-cloud
% prompt sha : 973b6ee9089f6d8a93bd59ac40da0657932e71a1f74af92121e1e89734a69bb4
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_16').
:- pred required_compliance/2, gloss('obligation to ensure compliance with the requirements'), source('celex:32024R1689/oj#art_16').
:- pred required_labeling/2, gloss('obligation to indicate name, trade name or trade mark and contact address'), source('celex:32024R1689/oj#art_16').
:- pred required_quality_management_system/1, gloss('obligation to have a quality management system in place'), source('celex:32024R1689/oj#art_16').
:- pred required_keep_documentation/1, gloss('obligation to keep the documentation referred to in the regulation'), source('celex:32024R1689/oj#art_16').
:- pred required_keep_logs/2, gloss('obligation to keep automatically generated logs'), source('celex:32024R1689/oj#art_16').
:- pred required_conformity_assessment/2, gloss('obligation to ensure the system undergoes the relevant conformity assessment procedure'), source('celex:32024R1689/oj#art_16').
:- pred required_declaration_of_conformity/2, gloss('obligation to draw up an EU declaration of conformity'), source('celex:32024R1689/oj#art_16').
:- pred required_affix_ce_marking/2, gloss('obligation to affix the CE marking'), source('celex:32024R1689/oj#art_16').
:- pred required_registration_obligations/1, gloss('obligation to comply with registration obligations'), source('celex:32024R1689/oj#art_16').
:- pred required_corrective_actions/1, gloss('obligation to take necessary corrective actions and provide information'), source('celex:32024R1689/oj#art_16').
:- pred required_demonstrate_conformity/2, gloss('obligation to demonstrate conformity upon request of a national competent authority'), source('celex:32024R1689/oj#art_16').
:- pred required_accessibility_compliance/2, gloss('obligation to ensure compliance with accessibility requirements'), source('celex:32024R1689/oj#art_16').

required_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_labeling(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_quality_management_system(P) :-
    provider(P).

required_keep_documentation(P) :-
    provider(P).

required_keep_logs(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_conformity_assessment(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_declaration_of_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_affix_ce_marking(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_registration_obligations(P) :-
    provider(P).

required_corrective_actions(P) :-
    provider(P).

required_demonstrate_conformity(P, S) :-
    provider(P),
    high_risk_ai_system(S).

required_accessibility_compliance(P, S) :-
    provider(P),
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_compliance/2, 'celex:32024R1689/oj#art_16').
provenance(required_labeling/2, 'celex:32024R1689/oj#art_16').
provenance(required_quality_management_system/1, 'celex:32024R1689/oj#art_16').
provenance(required_keep_documentation/1, 'celex:32024R1689/oj#art_16').
provenance(required_keep_logs/2, 'celex:32024R1689/oj#art_16').
provenance(required_conformity_assessment/2, 'celex:32024R1689/oj#art_16').
provenance(required_declaration_of_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(required_affix_ce_marking/2, 'celex:32024R1689/oj#art_16').
provenance(required_registration_obligations/1, 'celex:32024R1689/oj#art_16').
provenance(required_corrective_actions/1, 'celex:32024R1689/oj#art_16').
provenance(required_demonstrate_conformity/2, 'celex:32024R1689/oj#art_16').
provenance(required_accessibility_compliance/2, 'celex:32024R1689/oj#art_16').

references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_17').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_18').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_19').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_48').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_16', 'celex:32024R1689/oj#art_20').
references('celex:32024R1689/oj#art_16', 'celex:32016L2102/oj').
references('celex:32024R1689/oj#art_16', 'celex:32019L0882/oj').
