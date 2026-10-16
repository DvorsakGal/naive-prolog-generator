% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 5589285b236ba10898b688369584bb42aa39c15359496e369d9d55ccbd4a5030
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_perform_model_evaluation/1, gloss('provider must perform model evaluation for systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risks/1, gloss('provider must assess and mitigate systemic risks at Union level'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incidents/1, gloss('provider must report serious incidents and corrective measures'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/1, gloss('provider must ensure adequate cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred may_rely_on_code_of_practice/1, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/1, gloss('provider must demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').
:- pred harmonised_standard_published/0, gloss('harmonised standard has been published'), source('celex:32024R1689/oj#art_55').
:- pred approved_code_of_practice_adhered_to/1, gloss('provider adheres to approved code of practice'), source('celex:32024R1689/oj#art_55').
:- pred harmonised_standard_complied_with/1, gloss('provider complies with European harmonised standard'), source('celex:32024R1689/oj#art_55').
:- pred confidentiality_obligations_apply/0, gloss('confidentiality obligations apply to information obtained'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    model_evaluation_protocols_reflect_state_of_the_art.

must_assess_and_mitigate_systemic_risks(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M).

must_report_serious_incidents(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    serious_incident(I),
    incident_related_to_model(I, M),
    corrective_measure_for_incident(C, I).

must_ensure_cybersecurity_protection(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M).

may_rely_on_code_of_practice(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    \+ harmonised_standard_published,
    code_of_practice(C),
    approved_code_of_practice(C).

must_demonstrate_alternative_compliance(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    \+ approved_code_of_practice_adhered_to(P),
    \+ harmonised_standard_complied_with(P).

harmonised_standard_complied_with(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    harmonised_standard_published,
    harmonised_standard(S),
    covers_obligations_art_55_par_1(S).

presumption_of_conformity(P) :-
    general_purpose_ai_model_provider(P),
    systemic_risk_present(M),
    general_purpose_ai_model(M),
    harmonised_standard_complied_with(P).

confidentiality_obligations_apply :-
    information_obtained_under_art_55(_I).

provenance(must_perform_model_evaluation/1, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risks/1, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incidents/1, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/1, 'celex:32024R1689/oj#art_55').
provenance(may_rely_on_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_published/0, 'celex:32024R1689/oj#art_55').
provenance(approved_code_of_practice_adhered_to/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_complied_with/1, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/1, 'celex:32024R1689/oj#art_55').
provenance(confidentiality_obligations_apply/0, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
