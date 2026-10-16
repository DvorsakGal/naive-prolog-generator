% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 1173a80c6df7249b89ababf7e31212309824e828f0bd276d08675bc2bb4c74eb
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model presenting systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred must_perform_model_evaluation/2, gloss('provider must perform model evaluation including adversarial testing'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risks/2, gloss('provider must assess and mitigate possible systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incidents_for_model/2, gloss('provider must report serious incidents and corrective measures for a model'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_for_model/2, gloss('provider must ensure cybersecurity protection for model and infrastructure'), source('celex:32024R1689/oj#art_55').
:- pred may_rely_on_code_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/2, gloss('provider must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').

general_purpose_ai_model_with_systemic_risk(M) :-
    general_purpose_ai_model(M),
    systemic_risk(M).

must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).

must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).

must_report_serious_incidents_for_model(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).

must_ensure_cybersecurity_for_model(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).

may_rely_on_code_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M).

must_demonstrate_alternative_compliance(P, M) :-
    provider(P),
    general_purpose_ai_model_with_systemic_risk(M),
    provides_general_purpose_ai_model(P, M),
    \+ adheres_to_approved_code_or_standard(P, M).

adheres_to_approved_code_or_standard(P, M) :-
    may_rely_on_code_of_practice(P, M).

provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents_for_model/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_for_model/2, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/2, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
