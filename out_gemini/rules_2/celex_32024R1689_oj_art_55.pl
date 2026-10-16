% unit       : celex:32024R1689/oj#art_55
% context    : CHAPTER V GENERAL-PURPOSE AI MODELS > SECTION 3 Obligations of providers of general-purpose AI models with systemic risk
% slice sha  : 02167c9d86ff8b65f7b30f77b945f4f17225db8e4e9f82743627133410f4b703
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 9715caa940a2ef3b5af715363c4789d83d99fe7f0059fff23cb88fb0e2c1f5e9
% cached     : False
% title      : Obligations of providers of general-purpose AI models with systemic risk
:- pred general_purpose_ai_model_with_systemic_risk/1, gloss('general-purpose AI model that presents systemic risk'), source('celex:32024R1689/oj#art_55').
:- pred provider_of_model/2, gloss('provider develops or provides the specified model'), source('celex:32024R1689/oj#art_55').
:- pred code_of_practice/1, gloss('code of practice within the meaning of Article 56'), source('celex:32024R1689/oj#art_55').
:- pred adheres_to/2, gloss('provider adheres to a code of practice'), source('celex:32024R1689/oj#art_55').
:- pred complies_with/2, gloss('entity complies with a standard or requirement'), source('celex:32024R1689/oj#art_55').
:- pred harmonised_standard_published/1, gloss('a harmonised standard has been published covering the obligations'), source('celex:32024R1689/oj#art_55').
:- pred presumption_of_conformity/2, gloss('provider enjoys presumption of conformity regarding model obligations'), source('celex:32024R1689/oj#art_55').
:- pred approved/1, gloss('code of practice is approved'), source('celex:32024R1689/oj#art_55').
:- pred permitted_rely_on_code_of_practice/2, gloss('provider may rely on code of practice to demonstrate compliance'), source('celex:32024R1689/oj#art_55').
:- pred information_obtained_pursuant_to/2, gloss('information or documentation obtained pursuant to an article'), source('celex:32024R1689/oj#art_55').

% References
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_53').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_54').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_56').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_55/par_1').
references('celex:32024R1689/oj#art_55', 'celex:32024R1689/oj#art_78').

% Paragraph 1: Obligations of providers of general-purpose AI models with systemic risk
% (a) Model evaluation and adversarial testing
must_comply(Provider, model_evaluation(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).

% (b) Assess and mitigate systemic risks at Union level
must_comply(Provider, assess_and_mitigate_systemic_risks(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).

% (c) Keep track of, document, and report serious incidents
must_report(Provider, serious_incident_information(Model, Recipient)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    ( ai_office(Recipient) ; national_competent_authority(Recipient) ).

% (d) Ensure cybersecurity protection
must_comply(Provider, cybersecurity_protection(Model)) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model).

% Paragraph 2: Reliance on codes of practice and harmonised standards
permitted_rely_on_code_of_practice(Provider, Code) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    code_of_practice(Code),
    \+ harmonised_standard_published(Model).

presumption_of_conformity(Provider, Model) :-
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    harmonised_standard(Standard),
    complies_with(Provider, Standard).

must_comply(Provider, demonstrate_alternative_means(Commission, Model)) :-
    commission(Commission),
    provider_of_general_purpose_ai_model(Provider),
    provider_of_model(Provider, Model),
    general_purpose_ai_model_with_systemic_risk(Model),
    \+ adheres_to_approved_code(Provider),
    \+ complies_with_harmonised_standard(Provider).

adheres_to_approved_code(Provider) :-
    code_of_practice(Code),
    approved(Code),
    adheres_to(Provider, Code).

complies_with_harmonised_standard(Provider) :-
    harmonised_standard(Standard),
    complies_with(Provider, Standard).

% Paragraph 3: Confidentiality obligations
must_comply(Recipient, confidentiality(Info)) :-
    information_obtained_pursuant_to(Info, 'celex:32024R1689/oj#art_55'),
    recipient_of_information(Recipient, Info).

recipient_of_information(Recipient, Info) :-
    information_obtained_pursuant_to(Info, 'celex:32024R1689/oj#art_55'),
    ( ai_office(Recipient)
    ; national_competent_authority(Recipient)
    ; commission(Recipient)
    ).

:- pred recipient_of_information/2, gloss('entity receiving information obtained pursuant to regulation'), source('celex:32024R1689/oj#art_55').
:- pred adheres_to_approved_code/1, gloss('provider adheres to an approved code of practice'), source('celex:32024R1689/oj#art_55').
:- pred complies_with_harmonised_standard/1, gloss('provider complies with a European harmonised standard'), source('celex:32024R1689/oj#art_55').

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_55').
provenance(must_report/2, 'celex:32024R1689/oj#art_55').
provenance(permitted_rely_on_code_of_practice/2, 'celex:32024R1689/oj#art_55').
provenance(presumption_of_conformity/2, 'celex:32024R1689/oj#art_55').
provenance(adheres_to_approved_code/1, 'celex:32024R1689/oj#art_55').
provenance(complies_with_harmonised_standard/1, 'celex:32024R1689/oj#art_55').
provenance(recipient_of_information/2, 'celex:32024R1689/oj#art_55').
provenance(general_purpose_ai_model_with_systemic_risk/1, 'celex:32024R1689/oj#art_55').
provenance(provider_of_model/2, 'celex:32024R1689/oj#art_55').
provenance(code_of_practice/1, 'celex:32024R1689/oj#art_55').
provenance(adheres_to/2, 'celex:32024R1689/oj#art_55').
provenance(complies_with/2, 'celex:32024R1689/oj#art_55').
provenance(harmonised_standard_published/1, 'celex:32024R1689/oj#art_55').
provenance(approved/1, 'celex:32024R1689/oj#art_55').
provenance(information_obtained_pursuant_to/2, 'celex:32024R1689/oj#art_55').
