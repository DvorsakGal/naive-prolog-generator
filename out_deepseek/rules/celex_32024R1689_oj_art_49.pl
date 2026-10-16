% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ea65daee443c5086795cca621beaa85e47f5f80939c8e63f1779b037d2bc6e98
% cached     : False
% title      : Registration
:- pred must_register_self_and_system/2, gloss('provider or authorised representative must register themselves and their system in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_self_and_use/2, gloss('deployer must register themselves and the use of the system in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_in_secure_section/1, gloss('registration must be in a secure non-public section of the EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_at_national_level/1, gloss('system must be registered at national level'), source('celex:32024R1689/oj#art_49').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6').
:- pred annex_3_system/1, gloss('high-risk AI system listed in Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred annex_3_point_2_system/1, gloss('high-risk AI system listed in Annex III point 2'), source('celex:32024R1689/oj#anx_3/pnt_2').
:- pred annex_3_point_1_6_7_system/1, gloss('high-risk AI system listed in Annex III points 1, 6 or 7'), source('celex:32024R1689/oj#anx_3/pnt_1').
:- pred law_enforcement_migration_asylum_border_system/1, gloss('system in areas of law enforcement, migration, asylum and border control management'), source('celex:32024R1689/oj#art_49/par_4').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority, Union institution, body, office, agency or person acting on their behalf'), source('celex:32024R1689/oj#art_49/par_3').
:- pred concluded_not_high_risk/2, gloss('provider concluded system is not high-risk under Article 6(3)'), source('celex:32024R1689/oj#art_6/par_3').

% Paragraph 1
must_register_self_and_system(Actor, System) :-
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    ( provider(Actor) ; authorised_representative(Actor) ),
    ( placing_on_market(System) ; putting_into_service(System) ).

% Paragraph 2
must_register_self_and_system(Actor, System) :-
    concluded_not_high_risk(Actor, System),
    ( provider(Actor) ; authorised_representative(Actor) ),
    ( placing_on_market(System) ; putting_into_service(System) ).

% Paragraph 3
must_register_self_and_use(Deployer, System) :-
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    public_authority_deployer(Deployer),
    deployer(Deployer),
    putting_into_service(System).

% Paragraph 4 – secure section requirement
registration_in_secure_section(System) :-
    annex_3_point_1_6_7_system(System),
    law_enforcement_migration_asylum_border_system(System).

% Paragraph 5 – national registration
registration_at_national_level(System) :-
    annex_3_point_2_system(System).

provenance(must_register_self_and_system/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_self_and_use/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_at_national_level/1, 'celex:32024R1689/oj#art_49').

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
