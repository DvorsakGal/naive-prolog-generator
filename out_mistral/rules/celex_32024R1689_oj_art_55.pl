% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a91766f4259fa81dd50686bcb0d8676de93dad1df8e1a2b6adae4a5eb4048e45
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_perform_model_evaluation/1, gloss('provider of GPAI model with systemic risk must perform model evaluation with adversarial testing'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risks/1, gloss('provider of GPAI model with systemic risk must assess and mitigate possible systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred must_keep_track_and_report_serious_incidents/1, gloss('provider of GPAI model with systemic risk must keep track, document and report serious incidents and corrective measures'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/1, gloss('provider of GPAI model with systemic risk must ensure adequate cybersecurity protection for model and physical infrastructure'), source('celex:32024R1689/oj#art_55').
:- pred may_rely_on_code_of_practice/1, gloss('provider of GPAI model with systemic risk may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity_via_harmonised_standard/1, gloss('compliance with European harmonised standard grants presumption of conformity'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/1, gloss('provider not adhering to code of practice or harmonised standard must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').
:- pred confidential_treatment_of_information/1, gloss('information and documentation obtained pursuant to Article 55 including trade secrets must be treated confidentially'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).

must_assess_and_mitigate_systemic_risks(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).

must_keep_track_and_report_serious_incidents(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).

must_ensure_cybersecurity_protection(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).

may_rely_on_code_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M).

presumption_of_conformity_via_harmonised_standard(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M),
    harmonised_standard(S),
    covers(S, obligations(art_55_par_1)).

must_demonstrate_alternative_compliance(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    places_on_market(P, M),
    \+ adheres_to_approved_code_of_practice(P),
    \+ complies_with_european_harmonised_standard(P).

confidential_treatment_of_information(Info) :-
    obtained_pursuant_to(Info, art_55).

provenance(must_perform_model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/1, 'celex:32024R1689/oj#art_55').
provenance(must_keep_track_and_report_serious_incidents/1, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity_via_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(confidential_treatment_of_information/1, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
