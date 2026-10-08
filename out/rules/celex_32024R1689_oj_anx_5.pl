% unit       : celex:32024R1689/oj#anx_5
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : gpt-oss:120b-cloud
% prompt sha : 3b82c6b1cdcf537de981b8b8b42273e2f438cdaec6dcd49b3ac7326cc3cb709b
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred required_ai_system_identification/1, gloss('identification and traceability information of the AI system'), source('celex:32024R1689/oj#anx_5').
required_ai_system_identification(S) :-
    ai_system(S).

:- pred required_provider_contact_information/1, gloss('name and address of the provider'), source('celex:32024R1689/oj#anx_5').
required_provider_contact_information(P) :-
    provider(P).

:- pred required_authorised_representative_contact_information/1, gloss('name and address of the authorised representative'), source('celex:32024R1689/oj#anx_5').
required_authorised_representative_contact_information(R) :-
    authorised_representative(R).

:- pred required_provider_responsibility_statement/1, gloss('statement that the declaration is issued under the sole responsibility of the provider'), source('celex:32024R1689/oj#anx_5').
required_provider_responsibility_statement(P) :-
    provider(P).

:- pred required_conformity_statement/1, gloss('statement that the AI system is in conformity with the AI Act and other relevant Union law'), source('celex:32024R1689/oj#anx_5').
required_conformity_statement(S) :-
    ai_system(S).

:- pred processing_personal_data/1, gloss('AI system involves processing of personal data'), source('celex:32024R1689/oj#anx_5').

:- pred required_personal_data_compliance_statement/1, gloss('statement that the AI system complies with GDPR and related legislation'), source('celex:32024R1689/oj#anx_5').
required_personal_data_compliance_statement(S) :-
    ai_system(S),
    processing_personal_data(S).

:- pred required_harmonised_standard_reference/1, gloss('reference to any relevant harmonised standards or common specifications used'), source('celex:32024R1689/oj#anx_5').
required_harmonised_standard_reference(S) :-
    ai_system(S).

:- pred required_notified_body_information/1, gloss('name, identification number of the notified body and description of the conformity assessment procedure and certificate'), source('celex:32024R1689/oj#anx_5').
required_notified_body_information(NB) :-
    notified_body(NB).

:- pred declaration/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').

:- pred required_declaration_signature_information/1, gloss('place, date, name, function of the signatory and indication of on whose behalf the signature is made'), source('celex:32024R1689/oj#anx_5').
required_declaration_signature_information(D) :-
    declaration(D).

% Provenance
provenance(required_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_contact_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_authorised_representative_contact_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_personal_data_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_harmonised_standard_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_notified_body_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_signature_information/1, 'celex:32024R1689/oj#anx_5').

% References
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
