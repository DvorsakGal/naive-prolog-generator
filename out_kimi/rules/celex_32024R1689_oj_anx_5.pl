% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6e334733874013707da1ee148f46724f69bde82a6fb8e66cd525870c0742a845
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity for an AI system'), source('celex:32024R1689/oj#anx_5').
:- pred must_contain/2, gloss('declaration must contain specified information'), source('celex:32024R1689/oj#anx_5').
:- pred issued_under_sole_responsibility/1, gloss('declaration issued under sole responsibility of provider'), source('celex:32024R1689/oj#anx_5').
:- pred in_conformity_with/2, gloss('AI system in conformity with specified regulation'), source('celex:32024R1689/oj#anx_5').
:- pred complies_with_data_protection/2, gloss('AI system complies with data protection regulation'), source('celex:32024R1689/oj#anx_5').
:- pred references_harmonised_standard/2, gloss('declaration references harmonised standard or common specification'), source('celex:32024R1689/oj#anx_5').
:- pred notified_body_details/4, gloss('details of notified body and conformity assessment'), source('celex:32024R1689/oj#anx_5').
:- pred issue_details/5, gloss('place, date, signatory details of declaration'), source('celex:32024R1689/oj#anx_5').

must_contain(Declaration, ai_system_name_and_reference(System)) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System).

must_contain(Declaration, provider_details(Provider)) :-
    eu_declaration_of_conformity(Declaration),
    provider(Provider).

must_contain(Declaration, issued_under_sole_responsibility(Provider)) :-
    eu_declaration_of_conformity(Declaration),
    provider(Provider).

must_contain(Declaration, in_conformity_with(System, Regulation)) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    (Regulation = 'celex:32024R1689/oj'; relevant_union_law(Regulation)).

must_contain(Declaration, complies_with_data_protection(System, 'celex:32016R0679/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).

must_contain(Declaration, complies_with_data_protection(System, 'celex:32018R1725/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).

must_contain(Declaration, complies_with_data_protection(System, 'celex:32016L0680/oj')) :-
    eu_declaration_of_conformity(Declaration),
    ai_system(System),
    personal_data_processed(System).

must_contain(Declaration, references_harmonised_standard(Declaration, Standard)) :-
    eu_declaration_of_conformity(Declaration),
    harmonised_standard(Standard).

must_contain(Declaration, references_harmonised_standard(Declaration, Specification)) :-
    eu_declaration_of_conformity(Declaration),
    common_specification(Specification).

must_contain(Declaration, notified_body_details(Body, Procedure, Certificate)) :-
    eu_declaration_of_conformity(Declaration),
    notified_body(Body),
    conformity_assessment(Procedure),
    certificate(Certificate).

must_contain(Declaration, issue_details(Place, Date, SignatoryName, SignatoryFunction, OnBehalfOf)) :-
    eu_declaration_of_conformity(Declaration).

personal_data_processed(System) :-
    ai_system(System),
    personal_data(Data),
    processed_by(System, Data).

% Helper predicate for data processing relationship
:- pred processed_by/2, gloss('data is processed by AI system'), source('celex:32024R1689/oj#anx_5').

% Certificate type for compound term
:- pred certificate/1, gloss('certificate issued for conformity assessment'), source('celex:32024R1689/oj#anx_5').

% Relevant Union law predicate for other regulations
:- pred relevant_union_law/1, gloss('other relevant Union law providing for EU declaration of conformity'), source('celex:32024R1689/oj#anx_5').

provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').
provenance(must_contain/2, 'celex:32024R1689/oj#anx_5').
provenance(issued_under_sole_responsibility/1, 'celex:32024R1689/oj#anx_5').
provenance(in_conformity_with/2, 'celex:32024R1689/oj#anx_5').
provenance(complies_with_data_protection/2, 'celex:32024R1689/oj#anx_5').
provenance(references_harmonised_standard/2, 'celex:32024R1689/oj#anx_5').
provenance(notified_body_details/4, 'celex:32024R1689/oj#anx_5').
provenance(issue_details/5, 'celex:32024R1689/oj#anx_5').
provenance(personal_data_processed/1, 'celex:32024R1689/oj#anx_5').
provenance(processed_by/2, 'celex:32024R1689/oj#anx_5').
provenance(certificate/1, 'celex:32024R1689/oj#anx_5').
provenance(relevant_union_law/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
