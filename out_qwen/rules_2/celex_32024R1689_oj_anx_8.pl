% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : f7dede4334506d3269e520fcf06953e18d9a534f6b97840bdb6bb17f3b2e1942
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred required_registration_information_section_a/1, gloss('information items required for registration under Annex VIII Section A'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_information_section_b/1, gloss('information items required for registration under Annex VIII Section B'), source('celex:32024R1689/oj#anx_8').
:- pred required_registration_information_section_c/1, gloss('information items required for registration under Annex VIII Section C'), source('celex:32024R1689/oj#anx_8').
:- pred must_submit_registration_information/2, gloss('actor must submit specified registration information for an AI system'), source('celex:32024R1689/oj#anx_8').
:- pred must_keep_registration_information_updated/2, gloss('actor must keep registration information up to date'), source('celex:32024R1689/oj#anx_8').
:- pred exempt_instructions_for_use_in_registration/1, gloss('high-risk AI system exempt from providing electronic instructions for use in registration'), source('celex:32024R1689/oj#anx_8').

required_registration_information_section_a(provider_details).
required_registration_information_section_a(submitter_details).
required_registration_information_section_a(authorised_representative_details).
required_registration_information_section_a(system_identification).
required_registration_information_section_a(intended_purpose_description).
required_registration_information_section_a(system_logic_description).
required_registration_information_section_a(system_status).
required_registration_information_section_a(certificate_details).
required_registration_information_section_a(certificate_copy).
required_registration_information_section_a(member_states_availability).
required_registration_information_section_a(eu_declaration_of_conformity).
required_registration_information_section_a(electronic_instructions_for_use).
required_registration_information_section_a(additional_information_url).

required_registration_information_section_b(provider_details).
required_registration_information_section_b(submitter_details).
required_registration_information_section_b(authorised_representative_details).
required_registration_information_section_b(system_identification).
required_registration_information_section_b(intended_purpose_description).
required_registration_information_section_b(not_high_risk_condition).
required_registration_information_section_b(not_high_risk_grounds_summary).
required_registration_information_section_b(system_status).
required_registration_information_section_b(member_states_availability).

required_registration_information_section_c(deployer_details).
required_registration_information_section_c(submitter_details).
required_registration_information_section_c(database_entry_url).
required_registration_information_section_c(fundamental_rights_impact_assessment_summary).
required_registration_information_section_c(data_protection_impact_assessment_summary).

must_submit_registration_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    required_registration_information_section_a(_Item).

must_submit_registration_information(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    required_registration_information_section_b(_Item).

must_submit_registration_information(D, S) :-
    deployer(D),
    high_risk_ai_system(S),
    required_registration_information_section_c(_Item).

must_keep_registration_information_updated(Actor, S) :-
    must_submit_registration_information(Actor, S).

exempt_instructions_for_use_in_registration(S) :-
    high_risk_ai_system_annex_3_point_1(S).

provenance(required_registration_information_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_information_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(required_registration_information_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(must_submit_registration_information/2, 'celex:32024R1689/oj#anx_8').
provenance(must_keep_registration_information_updated/2, 'celex:32024R1689/oj#anx_8').
provenance(exempt_instructions_for_use_in_registration/1, 'celex:32024R1689/oj#anx_8').

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
