% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 072fcc809b204a336d6594e150112a4916c2822b482904de6d39aa4f35bbce16
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity referred to in Article 47'), source('celex:32024R1689/oj#anx_5').
:- pred declaration_for_ai_system/2, gloss('EU declaration of conformity relates to an AI system'), source('celex:32024R1689/oj#anx_5').
:- pred involves_processing_of_personal_data/1, gloss('AI system involves the processing of personal data'), source('celex:32024R1689/oj#anx_5').
:- pred involves_notified_body/1, gloss('conformity assessment of AI system involves a notified body'), source('celex:32024R1689/oj#anx_5').
:- pred required_declaration_content/2, gloss('declaration of conformity is required to contain specified content item'), source('celex:32024R1689/oj#anx_5').
:- pred required_eu_declaration_of_conformity/1, gloss('EU declaration of conformity satisfies all mandated information requirements'), source('celex:32024R1689/oj#anx_5').

% Point 1: identification and traceability
required_declaration_content(D, identification_and_traceability(S)) :-
    declaration_for_ai_system(D, S).

% Point 2: name and address of provider or authorised representative
required_declaration_content(D, provider_or_authorised_representative_details(S)) :-
    declaration_for_ai_system(D, S).

% Point 3: statement of sole responsibility of the provider
required_declaration_content(D, statement_sole_responsibility_provider(S)) :-
    declaration_for_ai_system(D, S).

% Point 4: statement of conformity with AI Act and relevant Union law
required_declaration_content(D, statement_conformity_union_law(S)) :-
    declaration_for_ai_system(D, S).

% Point 5: statement of compliance with personal data protection law (where applicable)
required_declaration_content(D, statement_data_protection_compliance(S)) :-
    declaration_for_ai_system(D, S),
    involves_processing_of_personal_data(S).

% Point 6: references to harmonised standards or common specifications used
required_declaration_content(D, references_harmonised_standards_or_common_specifications(S)) :-
    declaration_for_ai_system(D, S).

% Point 7: notified body details, procedure description, and certificate (where applicable)
required_declaration_content(D, notified_body_intervention_details(S)) :-
    declaration_for_ai_system(D, S),
    involves_notified_body(S).

% Point 8: place, date, signatory details, and signature
required_declaration_content(D, signatory_details_and_signature(S)) :-
    declaration_for_ai_system(D, S).

% A declaration is complete when it meets the mandatory structure
required_eu_declaration_of_conformity(D) :-
    eu_declaration_of_conformity(D),
    declaration_for_ai_system(D, S),
    required_declaration_content(D, identification_and_traceability(S)),
    required_declaration_content(D, provider_or_authorised_representative_details(S)),
    required_declaration_content(D, statement_sole_responsibility_provider(S)),
    required_declaration_content(D, statement_conformity_union_law(S)),
    required_declaration_content(D, references_harmonised_standards_or_common_specifications(S)),
    required_declaration_content(D, signatory_details_and_signature(S)).

provenance(required_declaration_content/2, 'celex:32024R1689/oj#anx_5').
provenance(required_eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32018R1725/oj', 'celex:32024R1689/oj#anx_5').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
