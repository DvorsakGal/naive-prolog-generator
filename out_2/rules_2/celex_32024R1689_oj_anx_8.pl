% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : c8a516fbbb470650e17c90e64a4dcf1dcf2dac15a8111dee126262e974137662
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred provider_of_high_risk_ai_system/2, gloss('provider provides a high‑risk AI system'), source('celex:32024R1689/oj#anx_8').
:- pred deployer_of_high_risk_ai_system/2, gloss('deployer uses a high‑risk AI system'), source('celex:32024R1689/oj#anx_8').

must_provide(Provider, provider_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, submission_agent_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, authorised_representative_contact_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, ai_system_trade_name) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, intended_purpose_description) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, system_information_description) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, ai_system_status) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, certificate_details) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, certificate_copy) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, member_state_placements) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, eu_declaration_of_conformity) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, electronic_instructions_for_use) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, additional_information_url) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, not_high_risk_conditions) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Provider, not_high_risk_summary) :-
    provider_of_high_risk_ai_system(Provider, System),
    high_risk_ai_system(System).

must_provide(Deployer, deployer_contact_details) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).

must_provide(Deployer, person_submitting_information) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).

must_provide(Deployer, eu_database_url) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).

must_provide(Deployer, fundamental_rights_impact_assessment_summary) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).

must_provide(Deployer, data_protection_impact_assessment_summary) :-
    deployer_of_high_risk_ai_system(Deployer, System),
    high_risk_ai_system(System).

provenance(provider_of_high_risk_ai_system/2, 'celex:32024R1689/oj#anx_8').
provenance(deployer_of_high_risk_ai_system/2, 'celex:32024R1689/oj#anx_8').
provenance(must_provide/2, 'celex:32024R1689/oj#anx_8').

references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32024L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
