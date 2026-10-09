% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 95043ddbb08c0157f58a27c50c68b2a816453c3a45a1be21e489893239b32549
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred required_ai_system_identification/1, gloss('AI system name, type and reference for identification and traceability'), source('celex:32024R1689/oj#anx_5').
:- pred required_provider_information/1, gloss('name and address of the provider'), source('celex:32024R1689/oj#anx_5').
:- pred required_authorised_representative_information/1, gloss('name and address of the authorised representative'), source('celex:32024R1689/oj#anx_5').
:- pred required_provider_responsibility_statement/1, gloss('statement that the declaration is issued under the sole responsibility of the provider'), source('celex:32024R1689/oj#anx_5').
:- pred required_conformity_statement/1, gloss('statement that the AI system is in conformity with the Regulation and other Union law'), source('celex:32024R1689/oj#anx_5').
:- pred processes_personal_data/1, gloss('AI system involves processing of personal data'), source('celex:32024R1689/oj#anx_5').
:- pred required_gdpr_compliance_statement/1, gloss('statement that the AI system complies with GDPR and related regulations'), source('celex:32024R1689/oj#anx_5').
:- pred required_harmonised_standard_reference/1, gloss('reference to any relevant harmonised standard used'), source('celex:32024R1689/oj#anx_5').
:- pred required_common_specification_reference/1, gloss('reference to any other common specification used'), source('celex:32024R1689/oj#anx_5').
:- pred required_notified_body_information/1, gloss('name and identification number of the notified body'), source('celex:32024R1689/oj#anx_5').
:- pred required_conformity_assessment_procedure_description/1, gloss('description of the conformity assessment procedure performed'), source('celex:32024R1689/oj#anx_5').
:- pred certificate/1, gloss('certificate issued for conformity'), source('celex:32024R1689/oj#anx_5').
:- pred required_certificate_identification/1, gloss('identification of the certificate issued'), source('celex:32024R1689/oj#anx_5').
:- pred declaration_of_conformity/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').
:- pred required_declaration_issue_details/1, gloss('place, date, signatory name, function and signature details of the declaration'), source('celex:32024R1689/oj#anx_5').

required_ai_system_identification(S) :-
    ai_system(S),
    ai_system(S).

required_provider_information(P) :-
    provider(P),
    provider(P).

required_authorised_representative_information(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

required_provider_responsibility_statement(P) :-
    provider(P),
    provider(P).

required_conformity_statement(S) :-
    ai_system(S),
    ai_system(S).

required_gdpr_compliance_statement(S) :-
    processes_personal_data(S),
    processes_personal_data(S).

required_harmonised_standard_reference(S) :-
    ai_system(S),
    harmonised_standard(H),
    harmonised_standard(H).

required_common_specification_reference(S) :-
    ai_system(S),
    common_specification(C),
    common_specification(C).

required_notified_body_information(NB) :-
    notified_body(NB),
    notified_body(NB).

required_conformity_assessment_procedure_description(A) :-
    conformity_assessment(A),
    conformity_assessment(A).

required_certificate_identification(C) :-
    certificate(C),
    certificate(C).

required_declaration_issue_details(D) :-
    declaration_of_conformity(D),
    declaration_of_conformity(D).

provenance(required_ai_system_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_authorised_representative_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_provider_responsibility_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_gdpr_compliance_statement/1, 'celex:32024R1689/oj#anx_5').
provenance(required_harmonised_standard_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_common_specification_reference/1, 'celex:32024R1689/oj#anx_5').
provenance(required_notified_body_information/1, 'celex:32024R1689/oj#anx_5').
provenance(required_conformity_assessment_procedure_description/1, 'celex:32024R1689/oj#anx_5').
provenance(required_certificate_identification/1, 'celex:32024R1689/oj#anx_5').
provenance(required_declaration_issue_details/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
