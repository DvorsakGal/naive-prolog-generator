% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 68b0220ee9ff2980bc52fce2c1fe7638be1544987af88d9dcd73d3258e89059d
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_submit_registration_info_section_a(Provider, System), gloss('provider must submit section a registration information for high-risk ai system'), source('celex:32024R1689/oj#anx_8').
:- pred must_submit_registration_info_section_b(Provider, System), gloss('provider must submit section b registration information for ai system considered not high-risk'), source('celex:32024R1689/oj#anx_8').
:- pred must_submit_registration_info_section_c(Deployer, System), gloss('deployer must submit section c registration information for high-risk ai system'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_field_section_a(Field), gloss('field required for section a registration'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_field_section_b(Field), gloss('field required for section b registration'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_field_section_c(Field), gloss('field required for section c registration'), source('celex:32024R1689/oj#anx_8').
:- pred exempt_instructions_for_use(System), gloss('system exempt from providing electronic instructions for use in registration'), source('celex:32024R1689/oj#anx_8').

must_submit_registration_info_section_a(Provider, System) :-
    provider(Provider),
    intended_purpose(System),
    required_registration_field_section_a(provider_details),
    required_registration_field_section_a(system_identification),
    required_registration_field_section_a(intended_purpose_description),
    required_registration_field_section_a(operating_logic_description),
    required_registration_field_section_a(system_status),
    required_registration_field_section_a(market_presence).

must_submit_registration_info_section_b(Provider, System) :-
    provider(Provider),
    intended_purpose(System),
    required_registration_field_section_b(provider_details),
    required_registration_field_section_b(system_identification),
    required_registration_field_section_b(intended_purpose_description),
    required_registration_field_section_b(not_high_risk_condition),
    required_registration_field_section_b(not_high_risk_grounds),
    required_registration_field_section_b(system_status),
    required_registration_field_section_b(market_presence).

must_submit_registration_info_section_c(Deployer, System) :-
    deployer(Deployer),
    required_registration_field_section_c(deployer_details),
    required_registration_field_section_c(submitter_details),
    required_registration_field_section_c(database_entry_url),
    required_registration_field_section_c(fundamental_rights_impact_assessment_summary).

required_registration_field_section_a(authorised_representative_details).
required_registration_field_section_a(notified_body_certificate).
required_registration_field_section_a(eu_declaration_of_conformity).
required_registration_field_section_a(additional_information_url).

required_registration_field_section_a(electronic_instructions_for_use) :-
    \+ exempt_instructions_for_use(_System).

required_registration_field_section_b(authorised_representative_details).

required_registration_field_section_c(data_protection_impact_assessment_summary).

exempt_instructions_for_use(System) :-
    law_enforcement(System).

provenance(must_submit_registration_info_section_a/2, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_info_section_b/2, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_info_section_c/2, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_field_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(exempt_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').

references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32016R0679/oj#art_35').
references('celex:32024R1689/oj#anx_8', 'celex:32016L0680/oj#art_27').
references('celex:32024R1689/oj#anx_8', 'celex:32024R1689/oj#art_26/par_8').
