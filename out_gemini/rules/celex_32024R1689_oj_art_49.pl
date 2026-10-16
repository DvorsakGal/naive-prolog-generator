% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 0fc7ea671524c7d22857308f513eb055c3478f28e5148482e6263eea99169c05
% cached     : False
% title      : Registration
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_iii/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_iii_point_2/1, gloss('AI system listed in point 2 of Annex III (critical infrastructure)'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_iii_sensitive_areas/1, gloss('AI system listed in points 1, 6, or 7 of Annex III in law enforcement, migration, asylum, border control'), source('celex:32024R1689/oj#art_49').
:- pred concluded_not_high_risk_derogation/1, gloss('AI system for which provider concluded not high-risk under Article 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred public_deployer/1, gloss('Deployer that is a public authority, Union institution, body, office, agency or acting on their behalf'), source('celex:32024R1689/oj#art_49').
:- pred national_level_registration/1, gloss('System subject to national level registration'), source('celex:32024R1689/oj#art_49').
:- pred permitted_database_access/2, gloss('Entity permitted access to restricted database section'), source('celex:32024R1689/oj#art_49').
:- pred secure_non_public_section/1, gloss('Database section is secure non-public'), source('celex:32024R1689/oj#art_49').
:- pred national_authority/1, gloss('National authority referred to in Article 74(8)'), source('celex:32024R1689/oj#art_49').
:- pred european_commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_49').

% Paragraph 1: Providers (or authorised representatives) must register themselves and the system in EU database
must_register(Actor, eu_database(Actor, System)) :-
    provider(Actor),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).

must_register(Actor, eu_database(Actor, System)) :-
    authorised_representative(Actor),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).

% Paragraph 2: Providers concluded not high-risk under Art 6(3) must register
must_register(Actor, eu_database(Actor, System)) :-
    provider(Actor),
    ai_system(System),
    concluded_not_high_risk_derogation(System).

must_register(Actor, eu_database(Actor, System)) :-
    authorised_representative(Actor),
    ai_system(System),
    concluded_not_high_risk_derogation(System).

% Paragraph 3: Public deployers must register themselves and system use in EU database
must_register(Deployer, eu_database_use(Deployer, System)) :-
    deployer(Deployer),
    public_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_iii(System),
    \+ listed_in_annex_iii_point_2(System).

% Paragraph 4: Secure non-public section for Annex III points 1, 6, 7 in law enforcement/migration
secure_non_public_section(eu_database(Actor, System)) :-
    listed_in_annex_iii_sensitive_areas(System),
    must_register(Actor, eu_database(Actor, System)).

secure_non_public_section(eu_database_use(Actor, System)) :-
    listed_in_annex_iii_sensitive_areas(System),
    must_register(Actor, eu_database_use(Actor, System)).

permitted_database_access(Actor, restricted_section(System)) :-
    european_commission(Actor),
    listed_in_annex_iii_sensitive_areas(System).

permitted_database_access(Actor, restricted_section(System)) :-
    national_authority(Actor),
    listed_in_annex_iii_sensitive_areas(System).

% Paragraph 5: Annex III point 2 registered at national level
national_level_registration(System) :-
    high_risk_ai_system(System),
    listed_in_annex_iii_point_2(System).

% Provenance
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(permitted_database_access/2, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration/1, 'celex:32024R1689/oj#art_49').

% References
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
