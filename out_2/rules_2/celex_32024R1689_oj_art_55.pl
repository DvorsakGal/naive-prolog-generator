% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 88748337081654219c43f1d1a12ad1b27af7af503bd0d799a3ab5ca510c13783
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred systemic_risk_applies/1, gloss('general‑purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred must_perform_model_evaluation/2, gloss('provider must perform model evaluation'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risk/2, gloss('provider must assess and mitigate systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred must_keep_track_document_and_report/2, gloss('provider must keep track, document and report'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/2, gloss('provider must ensure cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred permitted_reliance_on_codes_of_practice/1, gloss('provider may rely on codes of practice'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_means_of_compliance/2, gloss('provider must demonstrate alternative means of compliance'), source('celex:32024R1689/oj#art_55').
:- pred required_confidential_treatment/1, gloss('information must be treated confidentially'), source('celex:32024R1689/oj#art_55').
:- pred information_obtained_art_55_applies/1, gloss('information obtained pursuant to article 55'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

must_assess_and_mitigate_systemic_risk(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

must_keep_track_document_and_report(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

permitted_reliance_on_codes_of_practice(P) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

must_demonstrate_alternative_means_of_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk_applies(M).

required_confidential_treatment(I) :-
    information_obtained_art_55_applies(I).

provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_keep_track_document_and_report/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_reliance_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_means_of_compliance/2, 'celex:32024R1689/oj#art_55').
provenance(required_confidential_treatment/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_art_55_applies/1, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
