% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c7e40ada7cd7bab9e2eaa4a92dd01fdfd9364775b65bdc0d43137df954d0aad6
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred model_evaluation/1, gloss('model evaluation performed in accordance with standardised protocols and tools'), source('celex:32024R1689/oj#art_55').
:- pred adversarial_testing/1, gloss('adversarial testing of the model conducted and documented'), source('celex:32024R1689/oj#art_55').
:- pred systemic_risk_assessment_at_union_level/1, gloss('assessment and mitigation of possible systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred track_document_report_serious_incidents/2, gloss('provider keeps track of, documents, and reports serious incidents and corrective measures'), source('celex:32024R1689/oj#art_55').
:- pred adequate_cybersecurity_protection/1, gloss('adequate level of cybersecurity protection for model and physical infrastructure'), source('celex:32024R1689/oj#art_55').
:- pred may_rely_on_codes_of_practice/1, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity/1, gloss('compliance with European harmonised standards grants presumption of conformity'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/1, gloss('provider who does not adhere to code of practice or harmonised standard must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_perform_model_evaluation(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    model_evaluation(M),
    adversarial_testing(M).

must_assess_and_mitigate_systemic_risks(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    systemic_risk_assessment_at_union_level(M).

must_track_document_report_serious_incidents(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    track_document_report_serious_incidents(P, M),
    without_delay(reporting).

must_ensure_adequate_cybersecurity(P, M) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    adequate_cybersecurity_protection(M).

may_rely_on_codes_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    approved_code_of_practice(C),
    relies_on(P, C).

presumption_of_conformity(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    harmonised_standard_published(S),
    covers(S, obligations_of_art_55_par_1).

must_demonstrate_alternative_compliance(P) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    \+ adheres_to_approved_code_of_practice(P),
    \+ complies_with_european_harmonised_standard(P).

must_treat_information_confidentially(P, Info) :-
    general_purpose_ai_model_provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provider_of(P, M),
    information_or_documentation_obtained(Info, M),
    trade_secret(Info).

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(adversarial_testing/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_assessment_at_union_level/1, 'celex:32024R1689/oj#art_55').
provenance(track_document_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(adequate_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_track_document_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_adequate_cybersecurity/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
