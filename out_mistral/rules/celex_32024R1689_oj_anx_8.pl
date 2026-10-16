% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d5137231f27ffbb5ec2368e7b445793acf8e44b1e9ff0ed548c95cae4db518b2
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_submit_registration_info/2, gloss('provider or deployer must submit specified information for registration of high-risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred registration_info_item/2, gloss('specific information item required for registration'), source('celex:32024R1689/oj#anx_8').
:- pred registration_info_section/2, gloss('which section of Annex VIII applies to which registration procedure'), source('celex:32024R1689/oj#anx_8').
:- pred must_keep_registration_info_updated/2, gloss('submitted registration information must be kept up to date'), source('celex:32024R1689/oj#anx_8').
:- pred exempt_from_instructions_for_use/1, gloss('high-risk AI system exempt from providing electronic instructions for use'), source('celex:32024R1689/oj#anx_8').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred law_enforcement_or_migration_area/1, gloss('high-risk AI system in law enforcement or migration, asylum and border control management area'), source('celex:32024R1689/oj#anx_8').

% Section A — providers registering under Article 49(1)
registration_info_section(section_a, art_49_par_1).

must_submit_registration_info(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    registration_info_section(section_a, art_49_par_1).

must_keep_registration_info_updated(Provider, S) :-
    must_submit_registration_info(Provider, S).

% Section A items
registration_info_item(section_a, provider_name_address_contact).
registration_info_item(section_a, submitter_name_address_contact).
registration_info_item(section_a, authorised_representative_name_address_contact).
registration_info_item(section_a, ai_system_trade_name_and_reference).
registration_info_item(section_a, intended_purpose_description).
registration_info_item(section_a, system_information_and_operating_logic).
registration_info_item(section_a, ai_system_status).
registration_info_item(section_a, notified_body_certificate_details).
registration_info_item(section_a, notified_body_certificate_copy).
registration_info_item(section_a, member_states_of_availability).
registration_info_item(section_a, eu_declaration_of_conformity_copy).
registration_info_item(section_a, electronic_instructions_for_use).
registration_info_item(section_a, url_for_additional_information).

% Section B — providers registering under Article 49(2) (not-high-risk under Article 6(3))
registration_info_section(section_b, art_49_par_2).

must_submit_registration_info(Provider, S) :-
    provider(Provider),
    ai_system(S),
    registration_info_section(section_b, art_49_par_2).

must_keep_registration_info_updated(Provider, S) :-
    must_submit_registration_info(Provider, S).

% Section B items
registration_info_item(section_b, provider_name_address_contact).
registration_info_item(section_b, submitter_name_address_contact).
registration_info_item(section_b, authorised_representative_name_address_contact).
registration_info_item(section_b, ai_system_trade_name_and_reference).
registration_info_item(section_b, intended_purpose_description).
registration_info_item(section_b, not_high_risk_condition_art_6_par_3).
registration_info_item(section_b, not_high_risk_grounds_summary).
registration_info_item(section_b, ai_system_status).
registration_info_item(section_b, member_states_of_availability).

% Section C — deployers registering under Article 49(3)
registration_info_section(section_c, art_49_par_3).

must_submit_registration_info(Deployer, S) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    registration_info_section(section_c, art_49_par_3).

must_keep_registration_info_updated(Deployer, S) :-
    must_submit_registration_info(Deployer, S).

% Section C items
registration_info_item(section_c, deployer_name_address_contact).
registration_info_item(section_c, submitter_name_address_contact).
registration_info_item(section_c, provider_database_entry_url).
registration_info_item(section_c, fundamental_rights_impact_assessment_summary).
registration_info_item(section_c, data_protection_impact_assessment_summary).

% Exemption from electronic instructions for use (Section A, item 12)
exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    law_enforcement_or_migration_area(S).

law_enforcement_or_migration_area(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).

law_enforcement_or_migration_area(S) :-
    high_risk_ai_system(S),
    migration_asylum_border_control_area(S).

:- pred law_enforcement_area/1, gloss('high-risk AI system in law enforcement area per Annex III point 1'), source('celex:32024R1689/oj#anx_8').
:- pred migration_asylum_border_control_area/1, gloss('high-risk AI system in migration, asylum and border control management area per Annex III points 6 or 7'), source('celex:32024R1689/oj#anx_8').

% Provenance
provenance(must_submit_registration_info/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_item/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_info_section/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_info_updated/2, 'celex:32024R1689/oj#anx_8').
provenance(exempt_from_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_or_migration_area/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#anx_8').

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
