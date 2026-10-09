% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e91b1c8f644fc3f1ac1866aa4a903417b6ca2493f4b3b45089d4b87a224b11ac
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred must_perform_model_evaluation/2, gloss('provider must perform model evaluation'), source('celex:32024R1689/oj#art_55').
:- pred must_assess_and_mitigate_systemic_risk/2, gloss('provider must assess and mitigate systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred must_report_serious_incident_information/2, gloss('provider must report serious incident information'), source('celex:32024R1689/oj#art_55').
:- pred must_ensure_cybersecurity_protection/2, gloss('provider must ensure cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred permitted_rely_on_codes_of_practice/1, gloss('provider may rely on codes of practice'), source('celex:32024R1689/oj#art_55').
:- pred must_demonstrate_alternative_compliance/1, gloss('provider must demonstrate alternative compliance'), source('celex:32024R1689/oj#art_55').
:- pred must_treat_confidentially/2, gloss('provider must treat information confidentially'), source('celex:32024R1689/oj#art_55').

:- pred adheres_to_approved_code_of_practice/1, gloss('provider adheres to an approved code of practice'), source('celex:32024R1689/oj#art_55').
:- pred complies_with_european_harmonised_standard/1, gloss('provider complies with a European harmonised standard'), source('celex:32024R1689/oj#art_55').
:- pred information_obtained_pursuant_to_art_55/1, gloss('information obtained pursuant to article 55'), source('celex:32024R1689/oj#art_55').
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general‑purpose AI model with systemic risk'), source('celex:32024R1689/oj#art_55').

must_perform_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).

must_assess_and_mitigate_systemic_risk(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).

must_report_serious_incident_information(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model),
    serious_incident(_Incident),
    ai_office(_AIOffice),
    national_competent_authority(_NCA).

must_ensure_cybersecurity_protection(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model_with_systemic_risk(Model).

permitted_rely_on_codes_of_practice(Provider) :-
    provider(Provider).

must_demonstrate_alternative_compliance(Provider) :-
    provider(Provider),
    (\+ adheres_to_approved_code_of_practice(Provider) ;
     \+ complies_with_european_harmonised_standard(Provider)).

must_treat_confidentially(Provider, Information) :-
    provider(Provider),
    information_obtained_pursuant_to_art_55(Information).

% Placeholder definitions to allow negation-as-failure
adheres_to_approved_code_of_practice(_Provider) :- fail.
complies_with_european_harmonised_standard(_Provider) :- fail.

% Classification of models
general_purpose_ai_model_with_systemic_risk(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(_Risk).

% Provenance
provenance(must_perform_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(must_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(must_report_serious_incident_information/2, 'celex:32024R1689/oj#art_55').
provenance(must_ensure_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(must_demonstrate_alternative_compliance/1, 'celex:32024R1689/oj#art_55').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_55').
provenance(adheres_to_approved_code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(complies_with_european_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_pursuant_to_art_55/1, 'celex:32024R1689/oj#art_55').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').

% References
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
