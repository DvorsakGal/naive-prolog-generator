% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : e9ae3c29ce2cf05651ac04d18c0e5755aa7077e315bc7043be3546cc61e6f54e
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_perform_model_evaluation/2, gloss('provider must perform model evaluation including adversarial testing'), source('celex:32024R1689/oj#art_55/par_1').
:- pred must_assess_and_mitigate_systemic_risks/2, gloss('provider must assess and mitigate possible systemic risks at Union level'), source('celex:32024R1689/oj#art_55/par_1').
:- pred must_track_document_and_report_serious_incidents/2, gloss('provider must track, document and report serious incidents to AI Office'), source('celex:32024R1689/oj#art_55/par_1').
:- pred must_ensure_adequate_cybersecurity/2, gloss('provider must ensure adequate cybersecurity protection for model and infrastructure'), source('celex:32024R1689/oj#art_55/par_1').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55/par_2').
:- pred presumed_conformity_through_harmonised_standard/2, gloss('compliance with harmonised standard grants presumption of conformity'), source('celex:32024R1689/oj#art_55/par_2').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider not adhering to code or standard must demonstrate alternative compliance'), source('celex:32024R1689/oj#art_55/par_2').
:- pred confidentiality_obligations_apply/1, gloss('information obtained under this article treated per confidentiality obligations'), source('celex:32024R1689/oj#art_55/par_3').

must_perform_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

must_assess_and_mitigate_systemic_risks(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

must_track_document_and_report_serious_incidents(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

must_ensure_adequate_cybersecurity(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

may_rely_on_code_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

presumed_conformity_through_harmonised_standard(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model).

must_demonstrate_alternative_compliance(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_classification_applies(Model),
    \+ may_rely_on_code_of_practice(Provider, Model),
    \+ presumed_conformity_through_harmonised_standard(Provider, Model).

confidentiality_obligations_apply(Info) :-
    nonvar(Info).

provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_track_document_and_report_serious_incidents/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(must_ensure_adequate_cybersecurity/2, 'celex:32024R1689/oj#art_55/par_1').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(presumed_conformity_through_harmonised_standard/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55/par_2').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_55/par_3').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
