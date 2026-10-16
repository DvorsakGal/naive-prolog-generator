% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : dc9124a417c8fdded06e1ed9ae3d89c159c2edef5f70c3b043bc11a315d69cde
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_information/2, gloss('information required to be submitted for registration of an AI system'), source('celex:32024R1689/oj#anx_8').
:- pred has_authorised_representative/1, gloss('AI system or provider has an authorised representative'), source('celex:32024R1689/oj#anx_8').
:- pred certified_by_notified_body/1, gloss('AI system has been certified by a notified body'), source('celex:32024R1689/oj#anx_8').
:- pred area_law_enforcement/1, gloss('AI system is in the area of law enforcement'), source('celex:32024R1689/oj#anx_8').
:- pred area_migration_asylum_border/1, gloss('AI system is in the area of migration, asylum and border control management'), source('celex:32024R1689/oj#anx_8').
:- pred considered_not_high_risk_under_art_6_3/1, gloss('AI system considered not high-risk pursuant to Article 6(3)'), source('celex:32024R1689/oj#anx_8').
:- pred required_data_protection_impact_assessment/1, gloss('data protection impact assessment required for the deployment'), source('celex:32024R1689/oj#anx_8').

% Section A: Information to be submitted by providers under Article 49(1)
required_registration_information(S, section_a(provider_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(submitter_on_behalf_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(authorised_representative_contact_details)) :-
    high_risk_ai_system(S),
    has_authorised_representative(S).
required_registration_information(S, section_a(system_trade_name_and_traceability_reference)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(intended_purpose_and_components_functions)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(used_information_and_operating_logic)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(system_status)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(certificate_details)) :-
    high_risk_ai_system(S),
    certified_by_notified_body(S).
required_registration_information(S, section_a(certificate_copy)) :-
    high_risk_ai_system(S),
    certified_by_notified_body(S).
required_registration_information(S, section_a(member_states_placed_or_serviced)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(eu_declaration_of_conformity)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_a(electronic_instructions_for_use)) :-
    high_risk_ai_system(S),
    \+ area_law_enforcement(S),
    \+ area_migration_asylum_border(S).

% Section B: Information to be submitted by providers under Article 49(2)
required_registration_information(S, section_b(provider_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(submitter_on_behalf_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(authorised_representative_contact_details)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S),
    has_authorised_representative(S).
required_registration_information(S, section_b(system_trade_name_and_traceability_reference)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(intended_purpose)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(art_6_3_conditions)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(summary_grounds_not_high_risk)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(system_status)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).
required_registration_information(S, section_b(member_states_placed_or_serviced)) :-
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).

% Section C: Information to be submitted by deployers under Article 49(3)
required_registration_information(S, section_c(deployer_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(submitter_on_behalf_contact_details)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(eu_database_system_url)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(fundamental_rights_impact_assessment_summary)) :-
    high_risk_ai_system(S).
required_registration_information(S, section_c(data_protection_impact_assessment_summary)) :-
    high_risk_ai_system(S),
    required_data_protection_impact_assessment(S).

% Obligations on actors to register the required information
must_comply(Provider, registration(high_risk_ai_system(S), section_a)) :-
    provider(Provider),
    high_risk_ai_system(S).

must_comply(Provider, registration(not_high_risk_ai_system(S), section_b)) :-
    provider(Provider),
    ai_system(S),
    considered_not_high_risk_under_art_6_3(S).

must_comply(Deployer, registration(high_risk_ai_system(S), section_c)) :-
    deployer(Deployer),
    high_risk_ai_system(S).

% Provenance
provenance(required_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_comply/2, 'celex:32024R1689/oj#anx_8').

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
references('celex:32016R0679/oj#art_35', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
