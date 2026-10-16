% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : c9d35f1b539381c5fc168dc0b411cd4d371b0f5affbb9d9642ddc56e65c1b944
% cached     : False
% title      : Registration
:- pred must_register_in_eu_database/2, gloss('provider or authorised representative must register themselves and their system in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_themselves_and_system/2, gloss('actor must register themselves and the system in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_themselves_select_system_and_register_use/2, gloss('deployer must register themselves, select the system and register its use in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_in_secure_non_public_section/1, gloss('registration is in a secure non-public section of the EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_includes_only_specified_information/1, gloss('registration includes only the specified information as applicable'), source('celex:32024R1689/oj#art_49').
:- pred access_restricted_to_commission_and_national_authorities/1, gloss('access to restricted section is limited to Commission and national authorities referred to in Article 74(8)'), source('celex:32024R1689/oj#art_49').
:- pred registered_at_national_level/1, gloss('high-risk AI system is registered at national level'), source('celex:32024R1689/oj#art_49').
:- pred high_risk_ai_system_annex_3_point_2/1, gloss('high-risk AI system referred to in Annex III point 2'), source('celex:32024R1689/oj#art_49').
:- pred high_risk_ai_system_annex_3_point_1_6_7/1, gloss('high-risk AI system referred to in Annex III points 1, 6 or 7 in law enforcement, migration, asylum and border control management'), source('celex:32024R1689/oj#art_49').
:- pred law_enforcement_migration_asylum_border_control_area/1, gloss('area of law enforcement, migration, asylum and border control management'), source('celex:32024R1689/oj#art_49').

must_register_in_eu_database(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(P, S) :-
    authorised_representative(P),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(P, S) :-
    provider(P),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_in_eu_database(P, S) :-
    authorised_representative(P),
    concluded_not_high_risk(S),
    before_placing_on_market_or_putting_into_service(S).

must_register_themselves_select_system_and_register_use(D, S) :-
    deployer(D),
    used_by_public_authority_or_on_behalf(S),
    high_risk_ai_system(S),
    annex_3_point_1(S),
    \+ high_risk_ai_system_annex_3_point_2(S),
    before_putting_into_service_or_using(S).

before_putting_into_service_or_using(S) :-
    putting_into_service(S).

before_putting_into_service_or_using(S) :-
    deployer_uses(D, S).

deployer_uses(D, S) :-
    deployer(D),
    uses(D, S).

registration_in_secure_non_public_section(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).

registration_includes_only_specified_information(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).

access_restricted_to_commission_and_national_authorities(S) :-
    high_risk_ai_system_annex_3_point_1_6_7(S).

registered_at_national_level(S) :-
    high_risk_ai_system_annex_3_point_2(S).

high_risk_ai_system_annex_3_point_2(S) :-
    high_risk_ai_system(S),
    annex_3_point_2(S).

high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_1(S).

high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_6(S).

high_risk_ai_system_annex_3_point_1_6_7(S) :-
    high_risk_ai_system(S),
    law_enforcement_migration_asylum_border_control_area(S),
    annex_3_point_7(S).

law_enforcement_migration_asylum_border_control_area(S) :-
    law_enforcement_area(S).

law_enforcement_migration_asylum_border_control_area(S) :-
    migration_area(S).

law_enforcement_migration_asylum_border_control_area(S) :-
    asylum_area(S).

law_enforcement_migration_asylum_border_control_area(S) :-
    border_control_management_area(S).

must_register_themselves_and_system(P, S) :-
    must_register_in_eu_database(P, S).

must_register_themselves_and_system(P, S) :-
    must_register_themselves_select_system_and_register_use(P, S).

provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_themselves_and_system/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_themselves_select_system_and_register_use/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_includes_only_specified_information/1, 'celex:32024R1689/oj#art_49').
provenance(access_restricted_to_commission_and_national_authorities/1, 'celex:32024R1689/oj#art_49').
provenance(registered_at_national_level/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(high_risk_ai_system_annex_3_point_1_6_7/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_migration_asylum_border_control_area/1, 'celex:32024R1689/oj#art_49').
provenance(must_register_themselves_and_system/2, 'celex:32024R1689/oj#art_49').

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
