% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5093430acf4c5a990051ebc350aa25e56a5be2510a4f927821515ea354b1e48a
% cached     : False
% title      : Registration
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_6').
:- pred listed_in_annex_3/1, gloss('system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_point_2/1, gloss('system listed in Annex III point 2'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_point_1/1, gloss('system listed in Annex III point 1'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_point_6/1, gloss('system listed in Annex III point 6'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_point_7/1, gloss('system listed in Annex III point 7'), source('celex:32024R1689/oj#art_49').
:- pred not_high_risk_under_art_6_par_3/1, gloss('provider concluded not high-risk under Article 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority, Union institution, body, office or agency or person acting on their behalf'), source('celex:32024R1689/oj#art_49').
:- pred law_enforcement_migration_asylum_border_control_area/1, gloss('system used in areas of law enforcement, migration, asylum and border control management'), source('celex:32024R1689/oj#art_49').
:- pred secure_non_public_registration_required/1, gloss('registration must be in secure non-public section of EU database'), source('celex:32024R1689/oj#art_49').
:- pred national_level_registration_required/1, gloss('registration must be at national level'), source('celex:32024R1689/oj#art_49').

must_register_in_eu_database(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (placing_on_market(System); putting_into_service(System)).

must_register_in_eu_database(AuthorisedRep, System) :-
    authorised_representative(AuthorisedRep),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (placing_on_market(System); putting_into_service(System)).

must_register_in_eu_database(Provider, System) :-
    provider(Provider),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    (placing_on_market(System); putting_into_service(System)).

must_register_in_eu_database(AuthorisedRep, System) :-
    authorised_representative(AuthorisedRep),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    (placing_on_market(System); putting_into_service(System)).

must_register_use_in_eu_database(Deployer, System) :-
    public_authority_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_point_2(System),
    (putting_into_service(System); using(System)).

secure_non_public_registration_required(System) :-
    high_risk_ai_system(System),
    (listed_in_annex_3_point_1(System); listed_in_annex_3_point_6(System); listed_in_annex_3_point_7(System)),
    law_enforcement_migration_asylum_border_control_area(System).

national_level_registration_required(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point_2(System).

% Provenance
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_registration_required/1, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration_required/1, 'celex:32024R1689/oj#art_49').

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
