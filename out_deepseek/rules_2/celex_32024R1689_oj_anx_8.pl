% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 1dbf21c694f64a2c3e9ae3a235a6b2af109f638fa6da9ed52cdeb349f6cd6ead
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_submit_registration_information/2, gloss('entity must submit registration information for a high-risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred must_keep_registration_information_up_to_date/2, gloss('entity must keep registration information up to date for a high-risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred registration_information_item/2, gloss('item of information required for registration'), source('celex:32024R1689/oj#anx_8').
:- pred section_a_information/1, gloss('information required under Section A of Annex VIII'), source('celex:32024R1689/oj#anx_8/sec_1').
:- pred section_b_information/1, gloss('information required under Section B of Annex VIII'), source('celex:32024R1689/oj#anx_8/sec_2').
:- pred section_c_information/1, gloss('information required under Section C of Annex VIII'), source('celex:32024R1689/oj#anx_8/sec_3').
:- pred law_enforcement_migration_asylum_border_system/1, gloss('high-risk AI system in areas of law enforcement, migration, asylum and border control management'), source('celex:32024R1689/oj#anx_8').

% Section A: providers under Article 49(1)
must_submit_registration_information(Provider, registration(high_risk_ai_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S),
    section_a_information(Info),
    registration_information_item(registration(high_risk_ai_system(S)), Info).

must_keep_registration_information_up_to_date(Provider, registration(high_risk_ai_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S).

% Section A information items
registration_information_item(registration(high_risk_ai_system(S)), provider_name_address_contact(Provider)) :-
    provider(Provider).

registration_information_item(registration(high_risk_ai_system(S)), submitter_name_address_contact(Person)) :-
    true.  % Person submitting on behalf of provider

registration_information_item(registration(high_risk_ai_system(S)), authorised_representative_name_address_contact(Rep)) :-
    authorised_representative(Rep).

registration_information_item(registration(high_risk_ai_system(S)), trade_name_and_reference(S)).

registration_information_item(registration(high_risk_ai_system(S)), intended_purpose_and_components_description(S)).

registration_information_item(registration(high_risk_ai_system(S)), information_and_operating_logic_description(S)).

registration_information_item(registration(high_risk_ai_system(S)), status(S)).

registration_information_item(registration(high_risk_ai_system(S)), certificate_details(Cert)) :-
    notified_body(Body),
    true.  % certificate issued by notified body

registration_information_item(registration(high_risk_ai_system(S)), scanned_certificate_copy(Cert)).

registration_information_item(registration(high_risk_ai_system(S)), member_states_placed_on_market(S)).

registration_information_item(registration(high_risk_ai_system(S)), eu_declaration_of_conformity_copy(S)).

registration_information_item(registration(high_risk_ai_system(S)), electronic_instructions_for_use(S)) :-
    \+ law_enforcement_migration_asylum_border_system(S).

registration_information_item(registration(high_risk_ai_system(S)), url_additional_information(URL)).

% Section B: providers under Article 49(2)
must_submit_registration_information(Provider, registration(not_high_risk_system(S))) :-
    provider(Provider),
    section_b_information(Info),
    registration_information_item(registration(not_high_risk_system(S)), Info).

must_keep_registration_information_up_to_date(Provider, registration(not_high_risk_system(S))) :-
    provider(Provider).

% Section B information items
registration_information_item(registration(not_high_risk_system(S)), provider_name_address_contact(Provider)) :-
    provider(Provider).

registration_information_item(registration(not_high_risk_system(S)), submitter_name_address_contact(Person)).

registration_information_item(registration(not_high_risk_system(S)), authorised_representative_name_address_contact(Rep)) :-
    authorised_representative(Rep).

registration_information_item(registration(not_high_risk_system(S)), trade_name_and_reference(S)).

registration_information_item(registration(not_high_risk_system(S)), intended_purpose_description(S)).

registration_information_item(registration(not_high_risk_system(S)), conditions_not_high_risk(S)).

registration_information_item(registration(not_high_risk_system(S)), summary_grounds_not_high_risk(S)).

registration_information_item(registration(not_high_risk_system(S)), status(S)).

registration_information_item(registration(not_high_risk_system(S)), member_states_placed_on_market(S)).

% Section C: deployers under Article 49(3)
must_submit_registration_information(Deployer, registration(deployer_high_risk(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S),
    section_c_information(Info),
    registration_information_item(registration(deployer_high_risk(S)), Info).

must_keep_registration_information_up_to_date(Deployer, registration(deployer_high_risk(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S).

% Section C information items
registration_information_item(registration(deployer_high_risk(S)), deployer_name_address_contact(Deployer)) :-
    deployer(Deployer).

registration_information_item(registration(deployer_high_risk(S)), submitter_name_address_contact(Person)).

registration_information_item(registration(deployer_high_risk(S)), url_eu_database_entry(S)).

registration_information_item(registration(deployer_high_risk(S)), summary_fundamental_rights_impact_assessment(S)).

registration_information_item(registration(deployer_high_risk(S)), summary_data_protection_impact_assessment(S)).

% Section predicates
section_a_information(_).
section_b_information(_).
section_c_information(_).

% Law enforcement, migration, asylum and border control systems
law_enforcement_migration_asylum_border_system(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border(S).

% Provenance
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_up_to_date/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_information_item/2, 'celex:32024R1689/oj#anx_8').
provenance(section_a_information/1, 'celex:32024R1689/oj#anx_8/sec_1').
provenance(section_b_information/1, 'celex:32024R1689/oj#anx_8/sec_2').
provenance(section_c_information/1, 'celex:32024R1689/oj#anx_8/sec_3').
provenance(law_enforcement_migration_asylum_border_system/1, 'celex:32024R1689/oj#anx_8').

% References
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
