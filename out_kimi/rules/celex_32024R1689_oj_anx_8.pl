% unit       : celex:32024R1689/oj#anx_8
% context    : ANNEXES
% slice sha  : ffc0244377e8c76003ceaf3ce3bb86fe2ebff53f961153b68e64b6780d8fcda9
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b0a2081e44a0db168eb9b01405e4c486f7edd24558ffbc3a7631a0863edef902
% cached     : False
% title      : Information to be submitted upon the registration of high-risk AI systems in accordance with <ref id="celex:32024R1689/oj#art_49"/>
:- pred must_register_information/2, gloss('provider or deployer must submit and keep up to date specified information upon registration'), source('celex:32024R1689/oj#anx_8').
:- pred registration_section_a/1, gloss('information required under Article 49(1) for high-risk AI systems'), source('celex:32024R1689/oj#anx_8/sec_a').
:- pred registration_section_b/1, gloss('information required under Article 49(2) for non-high-risk AI systems'), source('celex:32024R1689/oj#anx_8/sec_b').
:- pred registration_section_c/1, gloss('information required under Article 49(3) for deployers of high-risk AI systems'), source('celex:32024R1689/oj#anx_8/sec_c').

must_register_information(Provider, registration(section_a, high_risk_system(S))) :-
    provider(Provider),
    high_risk_ai_system(S).

must_register_information(Provider, registration(section_b, not_high_risk_system(S))) :-
    provider(Provider),
    ai_system(S),
    not_high_risk_condition(S, _).

must_register_information(Deployer, registration(section_c, deployed_high_risk_system(S))) :-
    deployer(Deployer),
    high_risk_ai_system(S).

registration_section_a(information(provider_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(authorised_representative_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_identification(TradeName, AdditionalReference))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(intended_purpose_and_components(Description))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_description(DataInputs, OperatingLogic))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(system_status(Status))) :-
    must_register_information(_, registration(section_a, _)),
    member(Status, [on_the_market, in_service, no_longer_placed_on_market, no_longer_in_service, recalled]).
registration_section_a(information(certificate_details(Type, Number, ExpiryDate, NotifiedBodyId))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(certificate_copy(ScannedCopy))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(member_states(List))) :-
    must_register_information(_, registration(section_a, _)),
    is_list(List).
registration_section_a(information(declaration_of_conformity_copy(Copy))) :-
    must_register_information(_, registration(section_a, _)).
registration_section_a(information(electronic_instructions_for_use(Instructions))) :-
    must_register_information(_, registration(section_a, _)),
    \+ exempt_from_instructions_for_use(_).
registration_section_a(information(additional_information_url(URL))) :-
    must_register_information(_, registration(section_a, _)).

exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    law_enforcement_area(S).
exempt_from_instructions_for_use(S) :-
    high_risk_ai_system(S),
    migration_asylum_border_control_area(S).

law_enforcement_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_1_applies(S).

migration_asylum_border_control_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_6_applies(S).

migration_asylum_border_control_area(S) :-
    high_risk_ai_system(S),
    annex_3_point_7_applies(S).

registration_section_b(information(provider_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(authorised_representative_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(system_identification(TradeName, AdditionalReference))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(intended_purpose(Description))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(not_high_risk_conditions(Conditions))) :-
    must_register_information(_, registration(section_b, _)),
    is_list(Conditions).
registration_section_b(information(not_high_risk_grounds_summary(Summary))) :-
    must_register_information(_, registration(section_b, _)).
registration_section_b(information(system_status(Status))) :-
    must_register_information(_, registration(section_b, _)),
    member(Status, [on_the_market, in_service, no_longer_placed_on_market, no_longer_in_service, recalled]).
registration_section_b(information(member_states(List))) :-
    must_register_information(_, registration(section_b, _)),
    is_list(List).

registration_section_c(information(deployer_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(submitter_details(Name, Address, Contact))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(provider_database_url(URL))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(fundamental_rights_impact_assessment_summary(Summary))) :-
    must_register_information(_, registration(section_c, _)).
registration_section_c(information(data_protection_impact_assessment_summary(Summary))) :-
    must_register_information(_, registration(section_c, _)).

provenance(must_register_information/2, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_a/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_b/1, 'celex:32024R1689/oj#anx_8').
provenance(registration_section_c/1, 'celex:32024R1689/oj#anx_8').
provenance(exempt_from_instructions_for_use/1, 'celex:32024R1689/oj#anx_8').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#anx_8').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#anx_8').

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
