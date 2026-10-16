% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 88f37fef3cc46e237b20b3e3e790dd515d68e8e2a06f58a29d2ed7badcc925fa
% cached     : False
% title      : Registration
:- pred high_risk_ai_system_listed_in_annex_3/1, gloss('high-risk AI system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred high_risk_ai_system_referred_to_in_annex_3_point_2/1, gloss('high-risk AI system referred to in Annex III point 2'), source('celex:32024R1689/oj#art_49').
:- pred ai_system_assessed_as_not_high_risk/1, gloss('AI system for which provider concluded it is not high-risk per Art 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority or Union institution body office agency or person acting on their behalf'), source('celex:32024R1689/oj#art_49').
:- pred sensitive_high_risk_ai_system/1, gloss('high-risk AI system in law enforcement migration asylum or border control referred to in Annex III points 1 6 or 7'), source('celex:32024R1689/oj#art_49').
:- pred must_register_in_eu_database/2, gloss('obligation to register self and system in EU database before placing on market or putting into service'), source('celex:32024R1689/oj#art_49').
:- pred must_register_use_in_eu_database/2, gloss('obligation for public deployer to register self and use of system in EU database before putting into service or using'), source('celex:32024R1689/oj#art_49').
:- pred must_register_in_secure_non_public_section/2, gloss('obligation to register in secure non-public section of EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_at_national_level/2, gloss('obligation to register high-risk AI system at national level'), source('celex:32024R1689/oj#art_49').

high_risk_ai_system_listed_in_annex_3(S) :-
    ai_system(S),
    \+ high_risk_ai_system_referred_to_in_annex_3_point_2(S).

sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    law_enforcement_area_applies(S).

sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    migration_area_applies(S).

sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    asylum_area_applies(S).

sensitive_high_risk_ai_system(S) :-
    high_risk_ai_system_listed_in_annex_3(S),
    border_control_management_area_applies(S).

must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    high_risk_ai_system_listed_in_annex_3(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    high_risk_ai_system_listed_in_annex_3(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    ai_system_assessed_as_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    ai_system_assessed_as_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_use_in_eu_database(Deployer, S) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system_listed_in_annex_3(S),
    before_putting_into_service_or_using(S).

must_register_in_secure_non_public_section(Actor, S) :-
    must_register_in_eu_database(Actor, S),
    sensitive_high_risk_ai_system(S).

must_register_in_secure_non_public_section(Deployer, S) :-
    must_register_use_in_eu_database(Deployer, S),
    sensitive_high_risk_ai_system(S).

must_register_at_national_level(_Actor, S) :-
    high_risk_ai_system_referred_to_in_annex_3_point_2(S).

provenance(high_risk_ai_system_listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_referred_to_in_annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(ai_system_assessed_as_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').
provenance(sensitive_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_in_secure_non_public_section/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/2, 'celex:32024R1689/oj#art_49').

references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_71').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_6/par_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_4').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_5').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_6').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_7').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_9').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_10').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_5').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_4/unp_1').
