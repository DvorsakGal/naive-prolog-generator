% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : afb375e6ede12c20fb31a94ecb64af6b5b17f171ed18debf06a16335bb019f93
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_evaluate_model/2, gloss('provider shall perform model evaluation'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risks/2, gloss('provider shall assess and mitigate systemic risks'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incidents/2, gloss('provider shall report serious incidents and corrective measures'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity/2, gloss('provider shall ensure adequate cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred may_rely_on_codes_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider shall demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').

must_evaluate_model(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_report_serious_incidents(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_ensure_cybersecurity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

may_rely_on_codes_of_practice(P, compliance(art_55_par_1)) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).

provenance(must_evaluate_model/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
