% unit       : celex:32024R1689/oj#art_58
% title      : Detailed arrangements for, and functioning of, AI regulatory sandboxes
% context    : CHAPTER VI MEASURES IN SUPPORT OF INNOVATION
% slice sha  : b9069456852406c0dc067ea0d9f9a538470281bfcdd4c53c5979a3141e29d1d3
% model      : gpt-oss:120b-cloud
% prompt sha : aced27e472baa9cd19fe15101683f6c800397337d7cc1b4eda80a3b3e35e5416
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred implementing_act/1, gloss('implementing act specifying detailed arrangements for AI regulatory sandboxes'), source('celex:32024R1689/oj#art_58').
:- pred detailed_arrangements_for/2, gloss('subject and act for which detailed arrangements are specified'), source('celex:32024R1689/oj#art_58').
:- pred common_principle/1, gloss('common principle enumerated in implementing act'), source('celex:32024R1689/oj#art_58').
:- pred condition/1, gloss('condition that implementing act shall ensure'), source('celex:32024R1689/oj#art_58').
:- pred prospective_provider/1, gloss('entity that may become a provider of an AI system'), source('celex:32024R1689/oj#art_58').

implementing_act(_).

detailed_arrangements_for(_, _).

common_principle(_).

condition(_).

prospective_provider(_).

required_adopt_implementing_acts(commission, ImplementingAct) :-
    implementing_act(ImplementingAct),
    detailed_arrangements_for(ai_regulatory_sandbox, ImplementingAct).

required_include_common_principle(ImplementingAct, Principle) :-
    implementing_act(ImplementingAct),
    common_principle(Principle).

required_ensure(ImplementingAct, Condition) :-
    implementing_act(ImplementingAct),
    condition(Condition).

required_direct_to_pre_deployment_services(NCA, Provider) :-
    national_competent_authority(NCA),
    prospective_provider(Provider).

required_agree_testing_terms(NCA, Testing) :-
    national_competent_authority(NCA),
    testing_in_real_world_conditions(Testing).

required_protect_fundamental_rights(NCA, Testing) :-
    national_competent_authority(NCA),
    testing_in_real_world_conditions(Testing).

required_cooperate(NCA, OtherNCA) :-
    national_competent_authority(NCA),
    national_competent_authority(OtherNCA),
    NCA \= OtherNCA.

provenance(implementing_act/1, 'celex:32024R1689/oj#art_58').
provenance(detailed_arrangements_for/2, 'celex:32024R1689/oj#art_58').
provenance(common_principle/1, 'celex:32024R1689/oj#art_58').
provenance(condition/1, 'celex:32024R1689/oj#art_58').
provenance(prospective_provider/1, 'celex:32024R1689/oj#art_58').
provenance(required_adopt_implementing_acts/2, 'celex:32024R1689/oj#art_58').
provenance(required_include_common_principle/2, 'celex:32024R1689/oj#art_58').
provenance(required_ensure/2, 'celex:32024R1689/oj#art_58').
provenance(required_direct_to_pre_deployment_services/2, 'celex:32024R1689/oj#art_58').
provenance(required_agree_testing_terms/2, 'celex:32024R1689/oj#art_58').
provenance(required_protect_fundamental_rights/2, 'celex:32024R1689/oj#art_58').
provenance(required_cooperate/2, 'celex:32024R1689/oj#art_58').

references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_58/par_1').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_58', 'celex:32024R1689/oj#art_95').
