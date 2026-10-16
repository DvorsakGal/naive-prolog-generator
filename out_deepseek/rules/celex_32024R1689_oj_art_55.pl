% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b53ebed97ba936a9137653b6273c4a8b746cb99766a3d677c880aa5cfa87fc13
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
% New predicates for Article 55
:- pred model_evaluation/1, gloss('evaluation of a general-purpose AI model'), source('celex:32024R1689/oj#art_55').
:- pred adversarial_testing/1, gloss('testing of a model to identify and mitigate systemic risks'), source('celex:32024R1689/oj#art_55').
:- pred systemic_risk_assessment/1, gloss('assessment of possible systemic risks'), source('celex:32024R1689/oj#art_55').
:- pred systemic_risk_mitigation/1, gloss('mitigation of possible systemic risks'), source('celex:32024R1689/oj#art_55').
:- pred serious_incident_report/1, gloss('report of relevant information about serious incidents'), source('celex:32024R1689/oj#art_55').
:- pred corrective_measure/1, gloss('possible corrective measure to address serious incidents'), source('celex:32024R1689/oj#art_55').
:- pred cybersecurity_protection/1, gloss('adequate level of cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred code_of_practice/1, gloss('code of practice within the meaning of Article 56'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity/1, gloss('presumption of conformity granted by compliance with harmonised standards'), source('celex:32024R1689/oj#art_55').
:- pred alternative_compliance_means/1, gloss('alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').

% Article 55(1) obligations
must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    model_evaluation(M),
    adversarial_testing(M).

must_assess_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    systemic_risk_assessment(M).

must_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    systemic_risk_mitigation(M).

must_report_serious_incidents(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    serious_incident_report(M).

must_report_corrective_measures(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    corrective_measure(M).

must_ensure_cybersecurity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    cybersecurity_protection(M).

% Article 55(2) compliance demonstration
may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    code_of_practice(M).

presumption_of_conformity(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    harmonised_standard(M).

must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ code_of_practice(M),
    \+ harmonised_standard(M),
    alternative_compliance_means(M).

% Provenance
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_corrective_measures/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').

% References
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
