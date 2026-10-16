% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dad4628cc921b780841f88b1921880eb04148cc2875a41ba34b7735a9a746602
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_perform_model_evaluation/2, gloss('provider must evaluate model with standardised protocols and adversarial testing'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risk/2, gloss('provider must assess and mitigate systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incident/2, gloss('provider must report serious incidents and corrective measures to AI Office and authorities'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/2, gloss('provider must ensure cybersecurity for model and infrastructure'), source('celex:32024R1689/oj#art_55').
:- pred permitted_reliance_on_code_of_practice/2, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity_applies/2, gloss('compliance with harmonised standard grants presumption of conformity'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider not using code or standard must demonstrate alternative means'), source('celex:32024R1689/oj#art_55').
:- pred must_treat_information_confidentially/2, gloss('information obtained under article must be treated confidentially'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_assess_and_mitigate_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_report_serious_incident(P, incident(I, M)) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    serious_incident(I).

must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

permitted_reliance_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ harmonised_standard_published_for_obligations(M).

presumption_of_conformity_applies(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    complies_with_harmonised_standard(P, M).

must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ adheres_to_approved_code_of_practice(P, M),
    \+ complies_with_harmonised_standard(P, M).

must_treat_information_confidentially(_Actor, information_obtained_under_art_55).

provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity_applies/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
