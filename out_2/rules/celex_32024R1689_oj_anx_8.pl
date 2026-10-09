% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 1b44de004a60c05558c7d2f09bf836c913938f9ef6a9117ec6fe49cd2f163508
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('annex_8').
:- pred not_high_risk_ai_system/1, gloss('AI system considered not‑high‑risk'), source('annex_8').
:- pred provides/2, gloss('provider supplies AI system'), source('annex_8').
:- pred deploys/2, gloss('deployer uses AI system'), source('annex_8').
:- pred law_enforcement_area_applies/1, gloss('AI system is used for law‑enforcement purposes'), source('annex_8').
:- pred migration_asylum_border_control_area_applies/1, gloss('AI system is used for migration, asylum or border‑control management'), source('annex_8').
:- pred must_provide/2, gloss('obligation to provide information'), source('annex_8').
:- pred must_maintain/2, gloss('obligation to keep information up to date'), source('annex_8').
:- pred prohibited_electronic_instructions_for_use/1, gloss('electronic instructions must not be provided'), source('annex_8').

%--- Section A: providers of high‑risk AI systems ---------------------------------

must_provide(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, intended_purpose_and_components_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, intended_purpose_and_components_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, data_and_logic_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, data_and_logic_description)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, status)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, status)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, certificate_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, certificate_details)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, certificate_copy)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, certificate_copy)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, eu_declaration_of_conformity)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, eu_declaration_of_conformity)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, electronic_instructions_for_use)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System),
    \+ (law_enforcement_area_applies(System) ; migration_asylum_border_control_area_applies(System)).

must_maintain(Provider, registration_information(System, electronic_instructions_for_use)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System),
    \+ (law_enforcement_area_applies(System) ; migration_asylum_border_control_area_applies(System)).

must_provide(Provider, registration_information(System, url_additional_information)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, url_additional_information)) :-
    provider(Provider),
    high_risk_ai_system(System),
    provides(Provider, System).

% Prohibition for electronic instructions in specified areas
prohibited_electronic_instructions_for_use(System) :-
    high_risk_ai_system(System),
    ( law_enforcement_area_applies(System)
    ; migration_asylum_border_control_area_applies(System) ).

%--- Section B: providers of AI systems considered not‑high‑risk ------------------

must_provide(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, provider_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, other_person_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, authorised_representative_contact_details)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, ai_system_trade_name)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, intended_purpose_description)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, intended_purpose_description)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, condition_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, condition_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, summary_of_grounds_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, summary_of_grounds_not_high_risk)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, status)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, status)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_provide(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

must_maintain(Provider, registration_information(System, member_states_placement)) :-
    provider(Provider),
    not_high_risk_ai_system(System),
    provides(Provider, System).

%--- Section C: deployers of high‑risk AI systems --------------------------------

must_provide(Deployer, registration_information(System, deployer_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_maintain(Deployer, registration_information(System, deployer_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_provide(Deployer, registration_information(System, person_submitting_on_behalf_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_maintain(Deployer, registration_information(System, person_submitting_on_behalf_contact_details)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_provide(Deployer, registration_information(System, url_of_entry_in_eu_database)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_maintain(Deployer, registration_information(System, url_of_entry_in_eu_database)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_provide(Deployer, registration_information(System, summary_fundamental_rights_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_maintain(Deployer, registration_information(System, summary_fundamental_rights_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_provide(Deployer, registration_information(System, summary_data_protection_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

must_maintain(Deployer, registration_information(System, summary_data_protection_impact_assessment)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    deploys(Deployer, System).

%--- Provenance ------------------------------------------------------------------

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#anx_8').
provenance(provides/2, 'celex:32024R1689/oj#anx_8').
provenance(deploys/2, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area_applies/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area_applies/1, 'celex:32024R1689/oj#anx_8').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_8').
provenance(must_maintain/2, 'celex:32024R1689/oj#anx_8').
provenance(prohibited_electronic_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').

%--- References ------------------------------------------------------------------

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
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
