% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 42dd04a33e71b74d7a5e0e690aa108cc38e8611544cbc7294618df7b68b9e636
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity issued under Article 47'), source('celex:32024R1689/oj#anx_5').
:- pred contains_ai_system_identification/1, gloss('declaration contains AI system name, type and unambiguous reference for identification and traceability'), source('celex:32024R1689/oj#anx_5').
:- pred contains_provider_or_representative_details/1, gloss('declaration contains name and address of provider or authorised representative'), source('celex:32024R1689/oj#anx_5').
:- pred contains_sole_responsibility_statement/1, gloss('declaration contains statement that it is issued under sole responsibility of provider'), source('celex:32024R1689/oj#anx_5').
:- pred contains_conformity_statement/1, gloss('declaration contains statement that AI system is in conformity with the Regulation and other relevant Union law'), source('celex:32024R1689/oj#anx_5').
:- pred contains_data_protection_compliance_statement/1, gloss('declaration contains statement of compliance with GDPR, Regulation 2018/1725 and Directive 2016/680 where personal data is processed'), source('celex:32024R1689/oj#anx_5').
:- pred contains_harmonised_standards_references/1, gloss('declaration contains references to relevant harmonised standards or common specifications'), source('celex:32024R1689/oj#anx_5').
:- pred contains_notified_body_details/1, gloss('declaration contains name, identification number, conformity assessment procedure description and certificate identification of notified body where applicable'), source('celex:32024R1689/oj#anx_5').
:- pred contains_signature_details/1, gloss('declaration contains place, date, name, function and signature of signatory'), source('celex:32024R1689/oj#anx_5').
:- pred processes_personal_data/1, gloss('AI system involves processing of personal data'), source('celex:32024R1689/oj#anx_5').

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standards_references(D),
    contains_signature_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_data_protection_compliance_statement(D),
    contains_harmonised_standards_references(D),
    contains_signature_details(D),
    processes_personal_data(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standards_references(D),
    contains_notified_body_details(D),
    contains_signature_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_or_representative_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_data_protection_compliance_statement(D),
    contains_harmonised_standards_references(D),
    contains_notified_body_details(D),
    contains_signature_details(D),
    processes_personal_data(D).

contains_data_protection_compliance_statement(D) :-
    eu_declaration_of_conformity(D),
    processes_personal_data(D).

contains_notified_body_details(D) :-
    eu_declaration_of_conformity(D),
    notified_body(_B).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_or_representative_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_data_protection_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_harmonised_standards_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_signature_details/1, 'celex:32024R1689/oj#anx_5').
provenance(processes_personal_data/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
