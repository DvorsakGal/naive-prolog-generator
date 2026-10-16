% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ee371b03631fd74434f13a531e938f2a9cda0a5b97156356bf0394c964720e06
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity referred to in Article 47'), source('celex:32024R1689/oj#anx_5').
:- pred contains_information/2, gloss('document contains the specified information item'), source('celex:32024R1689/oj#anx_5').
:- pred processes_personal_data/1, gloss('AI system involves the processing of personal data'), source('celex:32024R1689/oj#anx_5').
:- pred involves_notified_body/1, gloss('conformity assessment of the AI system involves a notified body'), source('celex:32024R1689/oj#anx_5').
:- pred required_declaration_content/2, gloss('required information content for an EU declaration of conformity for an AI system'), source('celex:32024R1689/oj#anx_5').
:- pred valid_eu_declaration_of_conformity/2, gloss('EU declaration of conformity contains all required information for an AI system'), source('celex:32024R1689/oj#anx_5').

% Item 1: AI system identification and traceability
required_declaration_content(identification_and_traceability, S) :-
    ai_system(S).

% Item 2: Name and address of provider or authorised representative
required_declaration_content(provider_or_representative_details, S) :-
    ai_system(S).

% Item 3: Statement of sole responsibility of the provider
required_declaration_content(sole_responsibility_statement, S) :-
    ai_system(S).

% Item 4: Statement of conformity with this Regulation and other relevant Union law
required_declaration_content(conformity_statement, S) :-
    ai_system(S).

% Item 5: Statement of compliance with data protection law where personal data is processed
required_declaration_content(data_protection_compliance_statement, S) :-
    ai_system(S),
    processes_personal_data(S).

% Item 6: References to relevant harmonised standards or common specifications
required_declaration_content(standards_and_specifications_references, S) :-
    ai_system(S).

% Item 7: Notified body details, assessment procedure and certificate identification where applicable
required_declaration_content(notified_body_details_and_certificate, S) :-
    ai_system(S),
    involves_notified_body(S).

% Item 8: Place and date of issue, signatory details and signature
required_declaration_content(issue_and_signatory_details, S) :-
    ai_system(S).

% Complete compliance check for an EU declaration of conformity
valid_eu_declaration_of_conformity(D, S) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    contains_information(D, identification_and_traceability),
    contains_information(D, provider_or_representative_details),
    contains_information(D, sole_responsibility_statement),
    contains_information(D, conformity_statement),
    contains_information(D, standards_and_specifications_references),
    contains_information(D, issue_and_signatory_details),
    check_personal_data_requirement(D, S),
    check_notified_body_requirement(D, S).

:- pred check_personal_data_requirement/2, gloss('checks compliance with item 5 if personal data processed'), source('celex:32024R1689/oj#anx_5').
check_personal_data_requirement(D, S) :-
    processes_personal_data(S),
    contains_information(D, data_protection_compliance_statement).
check_personal_data_requirement(_D, S) :-
    ai_system(S),
    \+ processes_personal_data(S).

:- pred check_notified_body_requirement/2, gloss('checks compliance with item 7 if notified body involved'), source('celex:32024R1689/oj#anx_5').
check_notified_body_requirement(D, S) :-
    involves_notified_body(S),
    contains_information(D, notified_body_details_and_certificate).
check_notified_body_requirement(_D, S) :-
    ai_system(S),
    \+ involves_notified_body(S).

% Provenance
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(contains_information/2, 'celex:32024R1689/oj#anx_5').
provenance(processes_personal_data/1, 'celex:32024R1689/oj#anx_5').
provenance(involves_notified_body/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_content/2, 'celex:32024R1689/oj#anx_5').
provenance(valid_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#anx_5').
provenance(check_personal_data_requirement/2, 'celex:32024R1689/oj#anx_5').
provenance(check_notified_body_requirement/2, 'celex:32024R1689/oj#anx_5').

% References
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
