% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0c8db78530c99ec8fb82df1b63cb3226b59662b0a994918020878de014717c72
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').
:- pred contains_ai_system_identification/1, gloss('declaration contains AI system name, type and unambiguous reference'), source('celex:32024R1689/oj#anx_5').
:- pred contains_provider_information/1, gloss('declaration contains name and address of provider or authorised representative'), source('celex:32024R1689/oj#anx_5').
:- pred contains_sole_responsibility_statement/1, gloss('declaration states it is issued under sole responsibility of provider'), source('celex:32024R1689/oj#anx_5').
:- pred contains_conformity_statement/1, gloss('declaration states AI system is in conformity with this Regulation and relevant Union law'), source('celex:32024R1689/oj#anx_5').
:- pred contains_personal_data_compliance_statement/1, gloss('declaration states compliance with GDPR, EUDPR and LED where personal data processed'), source('celex:32024R1689/oj#anx_5').
:- pred contains_standards_references/1, gloss('declaration references harmonised standards or common specifications used'), source('celex:32024R1689/oj#anx_5').
:- pred contains_notified_body_details/1, gloss('declaration contains notified body name, number, procedure description and certificate identification'), source('celex:32024R1689/oj#anx_5').
:- pred contains_signature_details/1, gloss('declaration contains place, date, signatory name, function and signature'), source('celex:32024R1689/oj#anx_5').

required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    contains_ai_system_identification(D),
    contains_provider_information(D),
    contains_sole_responsibility_statement(D),
    contains_conformity_statement(D),
    contains_standards_references(D),
    contains_signature_details(D).

required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D),
    contains_personal_data_compliance_statement(D).

required_eu_declaration_of_conformity_content(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_carried_out(D),
    contains_notified_body_details(D).

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_provider_information/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_sole_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_standards_references/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_notified_body_details/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_signature_details/1, 'celex:32024R1689/oj#anx_5').
provenance(required_eu_declaration_of_conformity_content/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
