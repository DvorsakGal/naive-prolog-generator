% unit       : celex:32024R1689/oj#anx_5
% context    : ANNEXES
% slice sha  : 8b7f36614714d30b0d3f5402931e7914f2a3ae83a4d238ee2967e9e8402c5d7c
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : dfa1958847cf1e6273b1fdf8611e72407509553582ce04413ad52fff4b26bdfe
% cached     : False
% title      : EU declaration of conformity The EU declaration of conformity referred to in <ref id="celex:32024R1689/oj#art_47"/>, shall contain all of the following information:
:- pred eu_declaration_of_conformity_contains/2, gloss('EU declaration of conformity contains specified information element'), source('celex:32024R1689/oj#anx_5').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity document'), source('celex:32024R1689/oj#anx_5').

eu_declaration_of_conformity_contains(D, ai_system_name_and_type) :-
    eu_declaration_of_conformity(D),
    contains_ai_system_name_and_type(D).

eu_declaration_of_conformity_contains(D, provider_or_representative_name_and_address) :-
    eu_declaration_of_conformity(D),
    contains_provider_or_representative_name_and_address(D).

eu_declaration_of_conformity_contains(D, sole_responsibility_statement) :-
    eu_declaration_of_conformity(D),
    contains_sole_responsibility_statement(D).

eu_declaration_of_conformity_contains(D, conformity_statement) :-
    eu_declaration_of_conformity(D),
    contains_conformity_statement(D).

eu_declaration_of_conformity_contains(D, personal_data_compliance_statement) :-
    eu_declaration_of_conformity(D),
    involves_personal_data_processing(D),
    contains_personal_data_compliance_statement(D).

eu_declaration_of_conformity_contains(D, harmonised_standards_or_common_specification_references) :-
    eu_declaration_of_conformity(D),
    contains_harmonised_standards_or_common_specification_references(D).

eu_declaration_of_conformity_contains(D, notified_body_details) :-
    eu_declaration_of_conformity(D),
    applicable_notified_body(D),
    contains_notified_body_details(D).

eu_declaration_of_conformity_contains(D, place_date_signature) :-
    eu_declaration_of_conformity(D),
    contains_place_date_signature(D).

contains_ai_system_name_and_type(D) :-
    eu_declaration_of_conformity_contains(D, ai_system_name_and_type).

contains_provider_or_representative_name_and_address(D) :-
    eu_declaration_of_conformity_contains(D, provider_or_representative_name_and_address).

contains_sole_responsibility_statement(D) :-
    eu_declaration_of_conformity_contains(D, sole_responsibility_statement).

contains_conformity_statement(D) :-
    eu_declaration_of_conformity_contains(D, conformity_statement).

contains_personal_data_compliance_statement(D) :-
    eu_declaration_of_conformity_contains(D, personal_data_compliance_statement).

contains_harmonised_standards_or_common_specification_references(D) :-
    eu_declaration_of_conformity_contains(D, harmonised_standards_or_common_specification_references).

contains_notified_body_details(D) :-
    eu_declaration_of_conformity_contains(D, notified_body_details).

contains_place_date_signature(D) :-
    eu_declaration_of_conformity_contains(D, place_date_signature).

involves_personal_data_processing(D) :-
    eu_declaration_of_conformity(D),
    ai_system_involves_personal_data_processing(D).

applicable_notified_body(D) :-
    eu_declaration_of_conformity(D),
    notified_body_applicable(D).

ai_system_involves_personal_data_processing(D) :-
    eu_declaration_of_conformity(D),
    refers_to_ai_system(D, S),
    processes_personal_data(S).

notified_body_applicable(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_by_notified_body(D).

refers_to_ai_system(D, S) :-
    eu_declaration_of_conformity(D),
    declaration_refers_to_ai_system(D, S).

processes_personal_data(S) :-
    ai_system(S),
    involves_processing_of_personal_data(S).

conformity_assessment_by_notified_body(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_involves_notified_body(D).

declaration_refers_to_ai_system(D, S) :-
    eu_declaration_of_conformity_contains(D, ai_system_name_and_type),
    ai_system_identified_in_declaration(D, S).

ai_system_identified_in_declaration(D, S) :-
    eu_declaration_of_conformity(D),
    ai_system(S),
    declaration_identifies_ai_system(D, S).

involves_processing_of_personal_data(S) :-
    ai_system(S),
    processes_personal_data(S).

conformity_assessment_involves_notified_body(D) :-
    eu_declaration_of_conformity(D),
    notified_body_involved_in_conformity_assessment(D).

notified_body_involved_in_conformity_assessment(D) :-
    eu_declaration_of_conformity(D),
    conformity_assessment_procedure(D, P),
    notified_body_performs(P).

provenance(eu_declaration_of_conformity_contains/2, 'celex:32024R1689/oj#anx_5').
provenance(eu_declaration_of_conformity/1, 'celex:32024R1689/oj#anx_5').

references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_5', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016R0679/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32018R1725/oj').
references('celex:32024R1689/oj#anx_5', 'celex:32016L0680/oj').
