% unit       : celex:32024R1689/oj#art_55
% title      : Obligations of providers of general-purpose AI models with systemic risk
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : gpt-oss:120b-cloud
% prompt sha : 5d158b4471e1d867815c25518d6cb227096c1e2b889b11a2eb7796bcdf1c2f6f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_perform_model_evaluation/2, gloss('provider must perform model evaluation in accordance with standardised protocols and tools'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risks/2, gloss('provider must assess and mitigate possible systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incident_information/2, gloss('provider must keep track of, document and report information about serious incidents and corrective measures'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/2, gloss('provider must ensure an adequate level of cybersecurity protection for the model and its physical infrastructure'), source('celex:32024R1689/oj#art_55').

:- pred permitted_rely_on_codes_of_practice/2, gloss('provider may rely on codes of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred permitted_use_harmonised_standard/2, gloss('provider may rely on a European harmonised standard to demonstrate conformity'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_means/2, gloss('provider must demonstrate alternative adequate means of compliance when not relying on a code of practice or harmonised standard'), source('celex:32024R1689/oj#art_55').

:- pred information/1, gloss('any information or documentation obtained pursuant to the obligations'), source('celex:32024R1689/oj#art_55').
:- pred obtained_under_art_55/1, gloss('information obtained pursuant to article 55'), source('celex:32024R1689/oj#art_55').
:- pred must_treat_confidentially/2, gloss('provider must treat information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_assess_and_mitigate_systemic_risks(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_report_serious_incident_information(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

must_ensure_cybersecurity_protection(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

permitted_rely_on_codes_of_practice(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M).

permitted_use_harmonised_standard(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    harmonised_standard(_).

must_demonstrate_alternative_means(P, M) :-
    provider(P),
    general_purpose_ai_model(M),
    systemic_risk(M),
    \+ permitted_rely_on_codes_of_practice(P, M),
    \+ permitted_use_harmonised_standard(P, M).

must_treat_confidentially(P, I) :-
    provider(P),
    information(I),
    obtained_under_art_55(I).

provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident_information/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_use_harmonised_standard/2, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_means/2, 'celex:32024R1689/oj#art_55').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
