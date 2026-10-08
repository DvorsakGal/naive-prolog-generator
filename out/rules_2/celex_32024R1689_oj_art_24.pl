% unit       : celex:32024R1689/oj#art_24
% title      : Obligations of distributors
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : gpt-oss:120b-cloud
% prompt sha : db218639786bb622761cfbceed17e0fa8f5dc3a43316d2b80706d1cf3dfc101d
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_24').
:- pred eu_declaration_of_conformity/1, gloss('EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred non_conformant/1, gloss('system not in conformity with the requirements'), source('celex:32024R1689/oj#art_24').
:- pred risk_present/1, gloss('system presents a risk as defined in article 79'), source('celex:32024R1689/oj#art_24').
:- pred storage_transport_conditions/1, gloss('storage or transport conditions applicable'), source('celex:32024R1689/oj#art_24').
:- pred request_from_authority/1, gloss('reasoned request from a competent authority'), source('celex:32024R1689/oj#art_24').

required_verify_ce_marking_and_declaration_and_instructions(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    ce_marking(Sys),
    eu_declaration_of_conformity(Sys),
    instructions_for_use(Sys).

provenance(required_verify_ce_marking_and_declaration_and_instructions/2, 'celex:32024R1689/oj#art_24').

prohibited_make_available_until_conformity(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).

provenance(prohibited_make_available_until_conformity/2, 'celex:32024R1689/oj#art_24').

required_inform_provider_or_importer_of_risk(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    risk_present(Sys).

provenance(required_inform_provider_or_importer_of_risk/2, 'celex:32024R1689/oj#art_24').

required_ensure_storage_transport_not_jeopardise(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    storage_transport_conditions(Sys).

provenance(required_ensure_storage_transport_not_jeopardise/2, 'celex:32024R1689/oj#art_24').

required_take_corrective_actions(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).

provenance(required_take_corrective_actions/2, 'celex:32024R1689/oj#art_24').

required_withdraw_or_recall(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys).

provenance(required_withdraw_or_recall/2, 'celex:32024R1689/oj#art_24').

required_inform_authorities_of_non_compliance(Dist, Sys) :-
    distributor(Dist),
    high_risk_ai_system(Sys),
    non_conformant(Sys),
    risk_present(Sys).

provenance(required_inform_authorities_of_non_compliance/2, 'celex:32024R1689/oj#art_24').

required_provide_information_to_authority(Dist, Auth, Sys) :-
    distributor(Dist),
    national_competent_authority(Auth),
    high_risk_ai_system(Sys),
    request_from_authority(Auth).

provenance(required_provide_information_to_authority/3, 'celex:32024R1689/oj#art_24').

required_cooperate_with_authority(Dist, Auth, Sys) :-
    distributor(Dist),
    national_competent_authority(Auth),
    high_risk_ai_system(Sys).

provenance(required_cooperate_with_authority/3, 'celex:32024R1689/oj#art_24').

references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').
