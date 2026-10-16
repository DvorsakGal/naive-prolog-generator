% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 558884d633b97886119784d62b852c72fc1e13203543fc7de90028a1ed0c557d
% cached     : False
% title      : Registration
:- pred must_register_in_eu_database/2, gloss('entity must register themselves and system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred must_register_use_in_eu_database/2, gloss('deployer must register use of system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_in_secure_non_public_section/1, gloss('registration must be in secure non-public section of EU database'), source('celex:32024R1689/oj#art_49').
:- pred registration_includes_only_annex_info/1, gloss('registration includes only specified Annex VIII and IX information'), source('celex:32024R1689/oj#art_49').
:- pred access_restricted_to_commission_and_national_authorities/1, gloss('access to restricted sections limited to Commission and national authorities'), source('celex:32024R1689/oj#art_49').
:- pred must_register_at_national_level/1, gloss('system must be registered at national level'), source('celex:32024R1689/oj#art_49').

% Paragraph 1
must_register_in_eu_database(Entity, System) :-
    ( provider(Entity) ; authorised_representative(Entity) ),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).

% Paragraph 2
must_register_in_eu_database(Entity, System) :-
    ( provider(Entity) ; authorised_representative(Entity) ),
    ai_system(System),
    \+ high_risk_ai_system(System),
    evaluation_finds_high_risk(_, System),
    ( placing_on_market(System) ; putting_into_service(System) ).

% Paragraph 3
must_register_use_in_eu_database(Deployer, System) :-
    deployer(Deployer),
    ( public_authority(Deployer) ; union_institution_body_office_or_agency(Deployer) ; acting_on_behalf_of(Deployer, _) ),
    high_risk_ai_system(System),
    \+ annex_3_point_2_system(System),
    putting_into_service(System).

% Paragraph 4 – secure non-public section for specific Annex III points in LE/M/A/B areas
registration_in_secure_non_public_section(Registration) :-
    registration(Registration),
    ( annex_3_point_1_a_system(Registration) ; annex_3_point_6_system(Registration) ; annex_3_point_7_system(Registration) ),
    law_enforcement_migration_asylum_border(Registration).

registration_includes_only_annex_info(Registration) :-
    registration_in_secure_non_public_section(Registration).

access_restricted_to_commission_and_national_authorities(Section) :-
    restricted_section_of_eu_database(Section),
    registration_in_secure_non_public_section(Section).

% Paragraph 5
must_register_at_national_level(System) :-
    annex_3_point_2_system(System).

% Supporting predicates
:- pred public_authority/1, gloss('entity that is a public authority'), source('celex:32024R1689/oj#art_49').
:- pred union_institution_body_office_or_agency/1, gloss('Union institution, body, office or agency'), source('celex:32024R1689/oj#art_49').
:- pred acting_on_behalf_of/2, gloss('person acting on behalf of another entity'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_6_system/1, gloss('high-risk AI system referred to in Annex III point 6'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_7_system/1, gloss('high-risk AI system referred to in Annex III point 7'), source('celex:32024R1689/oj#art_49').
:- pred registration/1, gloss('registration in the EU database'), source('celex:32024R1689/oj#art_49').
:- pred restricted_section_of_eu_database/1, gloss('restricted section of the EU database'), source('celex:32024R1689/oj#art_49').

% Provenance
provenance(must_register_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(must_register_use_in_eu_database/2, 'celex:32024R1689/oj#art_49').
provenance(registration_in_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(registration_includes_only_annex_info/1, 'celex:32024R1689/oj#art_49').
provenance(access_restricted_to_commission_and_national_authorities/1, 'celex:32024R1689/oj#art_49').
provenance(must_register_at_national_level/1, 'celex:32024R1689/oj#art_49').

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
