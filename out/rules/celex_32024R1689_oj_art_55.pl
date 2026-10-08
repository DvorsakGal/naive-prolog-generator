% unit       : celex:32024R1689/oj#art_55
% title      : Obligations of providers of general-purpose AI models with systemic risk
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : gpt-oss:120b-cloud
% prompt sha : 73e9fcb3d4f2dd37025db78034fed0e25dd0c5e080e374ba6061f510c4b0e5b7
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_model_evaluation/2, gloss('obligation to perform model evaluation'), source('celex:32024R1689/oj#art_55').
:- pred required_assess_and_mitigate_systemic_risk/2, gloss('obligation to assess and mitigate systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred required_report_serious_incidents/2, gloss('obligation to keep track, document and report serious incidents'), source('celex:32024R1689/oj#art_55').
:- pred required_cybersecurity_protection/2, gloss('obligation to ensure adequate cybersecurity protection'), source('celex:32024R1689/oj#art_55').
:- pred permitted_rely_on_codes_of_practice/2, gloss('permission to rely on codes of practice'), source('celex:32024R1689/oj#art_55').
:- pred required_demonstrate_alternative_means/2, gloss('obligation to demonstrate alternative adequate means of compliance'), source('celex:32024R1689/oj#art_55').
:- pred required_confidentiality_obligation/1, gloss('obligation to treat information confidentially'), source('celex:32024R1689/oj#art_55').
:- pred systemic_risk_applies/1, gloss('condition that a model is subject to systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred harmonised_standard_not_published_applies/0, gloss('condition that no harmonised standard has been published'), source('celex:32024R1689/oj#art_55').
:- pred info_obtained_under_art_55/1, gloss('information obtained pursuant to article 55'), source('celex:32024R1689/oj#art_55').

systemic_risk_applies(Model) :-
    general_purpose_ai_model(Model),
    systemic_risk(_).

harmonised_standard_not_published_applies.

info_obtained_under_art_55(_Info).

required_model_evaluation(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).

required_assess_and_mitigate_systemic_risk(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).

required_report_serious_incidents(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    serious_incident(Inc),
    serious_incident(Inc).

required_cybersecurity_protection(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model).

permitted_rely_on_codes_of_practice(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    harmonised_standard_not_published_applies.

required_demonstrate_alternative_means(Provider, Model) :-
    provider(Provider),
    general_purpose_ai_model(Model),
    systemic_risk_applies(Model),
    \+ permitted_rely_on_codes_of_practice(Provider, Model).

required_confidentiality_obligation(Info) :-
    info_obtained_under_art_55(Info).

provenance(required_model_evaluation/2, 'celex:32024R1689/oj#art_55').
provenance(required_assess_and_mitigate_systemic_risk/2, 'celex:32024R1689/oj#art_55').
provenance(required_report_serious_incidents/2, 'celex:32024R1689/oj#art_55').
provenance(required_cybersecurity_protection/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_codes_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(required_demonstrate_alternative_means/2, 'celex:32024R1689/oj#art_55').
provenance(required_confidentiality_obligation/1, 'celex:32024R1689/oj#art_55').
provenance(systemic_risk_applies/1, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_not_published_applies/0, 'celex:32024R1689/oj#art_55').
provenance(info_obtained_under_art_55/1, 'celex:32024R1689/oj#art_55').

references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').
