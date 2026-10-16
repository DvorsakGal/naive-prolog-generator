% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 3d271bb9ca1ef6ba16b9882bdb2b249d58f8dbd3644cbb3bf54e7115dbb2a774
% cached     : False
% title      : Registration
:- pred must_register_in_eu_database/2, gloss('obligation to register self and system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_use_in_eu_database/2, gloss('obligation for deployer to register use of system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_at_national_level/2, gloss('obligation to register high-risk AI system at national level'), source('celex:32024R1689/oj#art_49').
:- pred registration_in_secure_non_public_section/1, gloss('registration must be in secure non-public section of EU database'), source('celex:32024R1689/oj#art_49').
:- pred sensitive_law_enforcement_migration_system/1, gloss('high-risk AI system in law enforcement, migration, asylum or border control listed in specific annex points'), source('celex:32024R1689/oj#art_49').
:- pred determined_not_high_risk/1, gloss('AI system for which provider concluded it is not high-risk per Article 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority, Union body or person acting on their behalf'), source('celex:32024R1689/oj#art_49').

% --- Provider / Authorised Representative Registration (Art 49.1) ---
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).

must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).

% --- Non-High-Risk System Registration (Art 49.2) ---
must_register_in_eu_database(Actor, S) :-
    provider(Actor),
    determined_not_high_risk(S),
    before_placing_on_market_or_service(S).

must_register_in_eu_database(Actor, S) :-
    authorised_representative(Actor),
    determined_not_high_risk(S),
    before_placing_on_market_or_service(S).

% --- Deployer Registration of Use (Art 49.3) ---
must_register_use_in_eu_database(Deployer, S) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system_annex_iii(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_service(S).

% --- Secure Non-Public Section Requirement (Art 49.4) ---
registration_in_secure_non_public_section(S) :-
    sensitive_law_enforcement_migration_system(S).

sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_1(S).
sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_6(S).
sensitive_law_enforcement_migration_system(S) :-
    high_risk_ai_system_annex_3_point_7(S).

% --- National Level Registration Exception (Art 49.5) ---
must_register_at_national_level(_Actor, S) :-
    high_risk_ai_system_annex_3_point_2(S).

% --- Provenance ---
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(sensitive_law_enforcement_migration_system/1, 'celex:32024R1689/oj#art_49').
provenance(determined_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').

% --- References ---
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
