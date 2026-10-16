% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 020c29cf9291432172cf8386de5e17e9e3d371447401016181f0569869778377
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').
:- pred contains_ai_system_identification/1, gloss('contains AI system name, type and traceability reference'), source('celex:32024R1689/oj#anx_5').
:- pred contains_provider_details/1, gloss('contains name and address of provider or authorised representative'), source('celex:32024R1689/oj#anx_5').
:- pred contains_sole_responsibility_statement/1, gloss('contains statement of sole responsibility of the provider'), source('celex:32024R1689/oj#anx_5').
:- pred contains_conformity_statement/1, gloss('contains statement of conformity with the Regulation and other relevant Union law'), source('celex:32024R1689/oj#anx_5').
:- pred contains_personal_data_compliance_statement/1, gloss('contains statement of compliance with GDPR, EUDPR and LED'), source('celex:32024R1689/oj#anx_5').
:- pred contains_harmonised_standard_references/1, gloss('contains references to harmonised standards or common specifications'), source('celex:32024R1689/oj#anx_5').
:- pred contains_notified_body_details/1, gloss('contains notified body name, number, procedure description and certificate identification'), source('celex:32024R1689/oj#anx_5').
:- pred contains_issuance_details/1, gloss('contains place, date, name, function and signature of signatory'), source('celex:32024R1689/oj#anx_5').

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standard_references(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_harmonised_standard_references(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_harmonised_standard_references(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).

eu_declaration_of_conformity(D) :-
    contains_ai_system_identification(D),
    contains_provider_details(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_personal_data_compliance_statement(D),
    contains_harmonised_standard_references(D),
    contains_notified_body_details(D),
    contains_issuance_details(D).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_harmonised_standard_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_issuance_details/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
