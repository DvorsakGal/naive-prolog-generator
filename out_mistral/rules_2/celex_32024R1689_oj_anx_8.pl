% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : cde697e0e19ef522f0f7f4eca392e5e1472504aeb1798fff2e41f3cf41c67290
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred registration_information_section_a/1, gloss('information to be submitted by providers of high-risk AI systems under Article 49(1)'), source('celex:32024R1689/oj#anx_8').
:- pred registration_information_section_b/1, gloss('information to be submitted by providers of AI systems not high-risk under Article 49(2)'), source('celex:32024R1689/oj#anx_8').
:- pred registration_information_section_c/1, gloss('information to be submitted by deployers of high-risk AI systems under Article 49(3)'), source('celex:32024R1689/oj#anx_8').
:- pred must_submit_registration_information/2, gloss('actor must submit registration information of given type'), source('celex:32024R1689/oj#anx_8').
:- pred must_keep_registration_information_up_to_date/2, gloss('actor must keep registration information up to date'), source('celex:32024R1689/oj#anx_8').
:- pred registration_information_item/2, gloss('specific registration information item required for given section'), source('celex:32024R1689/oj#anx_8').
:- pred provider_contact_details/1, gloss('name, address and contact details of provider'), source('celex:32024R1689/oj#anx_8').
:- pred submitter_on_behalf_of_provider/1, gloss('person submitting information on behalf of provider with name, address and contact details'), source('celex:32024R1689/oj#anx_8').
:- pred authorised_representative_contact_details/1, gloss('name, address and contact details of authorised representative'), source('celex:32024R1689/oj#anx_8').
:- pred ai_system_trade_name_and_reference/1, gloss('AI system trade name and additional unambiguous reference for identification and traceability'), source('celex:32024R1689/oj#anx_8').
:- pred intended_purpose_description/1, gloss('description of intended purpose of AI system'), source('celex:32024R1689/oj#anx_8').
:- pred components_and_functions_description/1, gloss('description of components and functions supported through AI system'), source('celex:32024R1689/oj#anx_8').
:- pred information_used_description/1, gloss('basic and concise description of information used by system and its operating logic'), source('celex:32024R1689/oj#anx_8').
:- pred ai_system_status/1, gloss('status of AI system: on market, in service, no longer placed, or recalled'), source('celex:32024R1689/oj#anx_8').
:- pred certificate_details/1, gloss('type, number and expiry date of certificate and name or identification number of notified body'), source('celex:32024R1689/oj#anx_8').
:- pred scanned_certificate_copy/1, gloss('scanned copy of certificate'), source('celex:32024R1689/oj#anx_8').
:- pred member_states_where_available/1, gloss('Member States where AI system placed on market, put into service or made available'), source('celex:32024R1689/oj#anx_8').
:- pred eu_declaration_of_conformity_copy/1, gloss('copy of EU declaration of conformity'), source('celex:32024R1689/oj#anx_8').
:- pred electronic_instructions_for_use/1, gloss('electronic instructions for use'), source('celex:32024R1689/oj#anx_8').
:- pred additional_information_url/1, gloss('URL for additional information (optional)'), source('celex:32024R1689/oj#anx_8').
:- pred not_high_risk_condition/1, gloss('condition under Article 6(3) based on which AI system is considered not high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred not_high_risk_grounds_summary/1, gloss('short summary of grounds on which AI system is considered not high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred deployer_contact_details/1, gloss('name, address and contact details of deployer'), source('celex:32024R1689/oj#anx_8').
:- pred submitter_on_behalf_of_deployer/1, gloss('name, address and contact details of person submitting information on behalf of deployer'), source('celex:32024R1689/oj#anx_8').
:- pred eu_database_entry_url/1, gloss('URL of entry of AI system in EU database by its provider'), source('celex:32024R1689/oj#anx_8').
:- pred fundamental_rights_impact_assessment_summary/1, gloss('summary of findings of fundamental rights impact assessment'), source('celex:32024R1689/oj#anx_8').
:- pred data_protection_impact_assessment_summary/1, gloss('summary of data protection impact assessment'), source('celex:32024R1689/oj#anx_8').
:- pred instructions_for_use_exempt/1, gloss('electronic instructions for use not required for high-risk AI systems in law enforcement, migration, asylum and border control management areas'), source('celex:32024R1689/oj#anx_8').

% Section A: providers of high-risk AI systems under Article 49(1)
registration_information_section_a(section_a).

must_submit_registration_information(P, section_a) :-
    provider(P),
    high_risk_ai_system(S),
    registered_in_eu_database(S).

must_keep_registration_information_up_to_date(P, section_a) :-
    provider(P),
    high_risk_ai_system(S),
    registered_in_eu_database(S).

registration_information_item(section_a, provider_contact_details).
registration_information_item(section_a, submitter_on_behalf_of_provider).
registration_information_item(section_a, authorised_representative_contact_details).
registration_information_item(section_a, ai_system_trade_name_and_reference).
registration_information_item(section_a, intended_purpose_description).
registration_information_item(section_a, components_and_functions_description).
registration_information_item(section_a, information_used_description).
registration_information_item(section_a, ai_system_status).
registration_information_item(section_a, certificate_details).
registration_information_item(section_a, scanned_certificate_copy).
registration_information_item(section_a, member_states_where_available).
registration_information_item(section_a, eu_declaration_of_conformity_copy).
registration_information_item(section_a, electronic_instructions_for_use).
registration_information_item(section_a, additional_information_url).

% Section B: providers of AI systems not high-risk under Article 49(2)
registration_information_section_b(section_b).

must_submit_registration_information(P, section_b) :-
    provider(P),
    ai_system(S),
    concluded_not_high_risk(S),
    registered_in_eu_database(S).

must_keep_registration_information_up_to_date(P, section_b) :-
    provider(P),
    ai_system(S),
    concluded_not_high_risk(S),
    registered_in_eu_database(S).

registration_information_item(section_b, provider_contact_details).
registration_information_item(section_b, submitter_on_behalf_of_provider).
registration_information_item(section_b, authorised_representative_contact_details).
registration_information_item(section_b, ai_system_trade_name_and_reference).
registration_information_item(section_b, intended_purpose_description).
registration_information_item(section_b, not_high_risk_condition).
registration_information_item(section_b, not_high_risk_grounds_summary).
registration_information_item(section_b, ai_system_status).
registration_information_item(section_b, member_states_where_available).

% Section C: deployers of high-risk AI systems under Article 49(3)
registration_information_section_c(section_c).

must_submit_registration_information(D, section_c) :-
    deployer(D),
    high_risk_ai_system(S),
    registered_in_eu_database(S).

must_keep_registration_information_up_to_date(D, section_c) :-
    deployer(D),
    high_risk_ai_system(S),
    registered_in_eu_database(S).

registration_information_item(section_c, deployer_contact_details).
registration_information_item(section_c, submitter_on_behalf_of_deployer).
registration_information_item(section_c, eu_database_entry_url).
registration_information_item(section_c, fundamental_rights_impact_assessment_summary).
registration_information_item(section_c, data_protection_impact_assessment_summary).

% Exception: electronic instructions for use not required for certain high-risk AI systems
instructions_for_use_exempt(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).

instructions_for_use_exempt(S) :-
    high_risk_ai_system(S),
    annex_3_point_1(S).

% Provenance
provenance(registration_information_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_item/2, 'celex:32024R1689/oj#anx_8').
provenance(provider_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(submitter_on_behalf_of_provider/1, 'celex:32024R1689/oj#anx_8').
provenance(authorised_representative_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(ai_system_trade_name_and_reference/1, 'celex:32024R1689/oj#anx_8').
provenance(intended_purpose_description/1, 'celex:32024R1689/oj#anx_8').
provenance(components_and_functions_description/1, 'celex:32024R1689/oj#anx_8').
provenance(information_used_description/1, 'celex:32024R1689/oj#anx_8').
provenance(ai_system_status/1, 'celex:32024R1689/oj#anx_8').
provenance(certificate_details/1, 'celex:32024R1689/oj#anx_8').
provenance(scanned_certificate_copy/1, 'celex:32024R1689/oj#anx_8').
provenance(member_states_where_available/1, 'celex:32024R1689/oj#anx_8').
provenance(eu_declaration_of_conformity_copy/1, 'celex:32024R1689/oj#anx_8').
provenance(electronic_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(additional_information_url/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_condition/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_grounds_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(deployer_contact_details/1, 'celex:32024R1689/oj#anx_8').
provenance(submitter_on_behalf_of_deployer/1, 'celex:32024R1689/oj#anx_8').
provenance(eu_database_entry_url/1, 'celex:32024R1689/oj#anx_8').
provenance(fundamental_rights_impact_assessment_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(data_protection_impact_assessment_summary/1, 'celex:32024R1689/oj#anx_8').
provenance(instructions_for_use_exempt/1, 'celex:32024R1689/oj#anx_8').

% References
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
