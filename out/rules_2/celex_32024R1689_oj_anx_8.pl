% unit       : celex:32024R1689/oj#anx_8
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : gpt-oss:120b-cloud
% prompt sha : 37abad448cfc9dbd2efe07461c5c7005b2272e63c287171444131d539a932025
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
% ---------- Declarations ----------
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('annex_8').
:- pred not_high_risk_ai_system/1, gloss('AI system considered not‑high‑risk'), source('annex_8').
:- pred law_enforcement_area/1, gloss('AI system used for law‑enforcement purposes'), source('annex_8').
:- pred migration_asylum_border_control_management/1, gloss('AI system used for migration, asylum or border‑control management'), source('annex_8').

% ---------- Exclusions ----------
excluded_from_electronic_instructions(System) :-
    law_enforcement_area(System) ;
    migration_asylum_border_control_management(System).

% ---------- Provider obligations (Section A & B) ----------
required_provider_name_address_contact(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_provider_submitting_person_details(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_authorised_representative_details(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_ai_system_trade_name_reference(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_intended_purpose_description(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_system_information_and_logic(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

required_ai_system_status(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_certificate_details(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    notified_body(_NB).

required_scanned_certificate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

required_member_states_placement(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_eu_declaration_of_conformity(Provider, System) :-
    provider(Provider),
    (high_risk_ai_system(System) ; not_high_risk_ai_system(System)).

required_electronic_instructions(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    \+ excluded_from_electronic_instructions(System).

required_additional_information_url(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

required_not_high_risk_conditions(Provider, System) :-
    provider(Provider),
    not_high_risk_ai_system(System).

required_not_high_risk_grounds_summary(Provider, System) :-
    provider(Provider),
    not_high_risk_ai_system(System).

% ---------- Deployer obligations (Section C) ----------
required_deployer_name_address_contact(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

required_deployer_submitting_person_details(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

required_eu_database_url(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

required_fundamental_rights_impact_assessment_summary(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

required_data_protection_impact_assessment_summary(Deployer, System) :-
    deployer(Deployer),
    high_risk_ai_system(System).

% ---------- Provenance ----------
provenance(required_provider_name_address_contact/2, 'celex:32024R1689/oj#anx_8').
provenance(required_provider_submitting_person_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_authorised_representative_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_ai_system_trade_name_reference/2, 'celex:32024R1689/oj#anx_8').
provenance(required_intended_purpose_description/2, 'celex:32024R1689/oj#anx_8').
provenance(required_system_information_and_logic/2, 'celex:32024R1689/oj#anx_8').
provenance(required_ai_system_status/2, 'celex:32024R1689/oj#anx_8').
provenance(required_certificate_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_scanned_certificate/2, 'celex:32024R1689/oj#anx_8').
provenance(required_member_states_placement/2, 'celex:32024R1689/oj#anx_8').
provenance(required_eu_declaration_of_conformity/2, 'celex:32024R1689/oj#anx_8').
provenance(required_electronic_instructions/2, 'celex:32024R1689/oj#anx_8').
provenance(required_additional_information_url/2, 'celex:32024R1689/oj#anx_8').
provenance(required_not_high_risk_conditions/2, 'celex:32024R1689/oj#anx_8').
provenance(required_not_high_risk_grounds_summary/2, 'celex:32024R1689/oj#anx_8').
provenance(required_deployer_name_address_contact/2, 'celex:32024R1689/oj#anx_8').
provenance(required_deployer_submitting_person_details/2, 'celex:32024R1689/oj#anx_8').
provenance(required_eu_database_url/2, 'celex:32024R1689/oj#anx_8').
provenance(required_fundamental_rights_impact_assessment_summary/2, 'celex:32024R1689/oj#anx_8').
provenance(required_data_protection_impact_assessment_summary/2, 'celex:32024R1689/oj#anx_8').

% ---------- References ----------
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
