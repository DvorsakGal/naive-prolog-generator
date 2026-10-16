% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 70bc5331ec1386531b867a5e2e31b6e60ee6ebd390dad83df71b0695e7d64ded
% cached     : False
% title      : Registration
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_system/1, gloss('AI system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred concluded_not_high_risk/2, gloss('provider concluded that AI system is not high-risk under Art. 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred public_authority/1, gloss('entity is a public authority'), source('celex:32024R1689/oj#art_49').
:- pred acts_on_behalf_of/2, gloss('person or entity acts on behalf of another entity'), source('celex:32024R1689/oj#art_49').
:- pred sensitive_area_annex_3_registration/1, gloss('high-risk system in Annex III point 1, 6, or 7 in law enforcement, migration, asylum or border control'), source('celex:32024R1689/oj#art_49').
:- pred permitted_access_restricted_section/2, gloss('actor has access to restricted section of EU database'), source('celex:32024R1689/oj#art_49').
:- pred national_level_registration_required/1, gloss('AI system is required to be registered at national level'), source('celex:32024R1689/oj#art_49').
:- pred national_authority_art_74_8/1, gloss('national authority referred to in Article 74(8)'), source('celex:32024R1689/oj#art_49').

% Article 49(1) - Registration by provider/authorised representative for Annex III high-risk systems (excluding point 2)
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    provider(Actor),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System).

must_comply(Actor, register_in_eu_database(Actor, System)) :-
    authorised_representative_of(Actor, Provider),
    provider(Provider),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System).

% Article 49(2) - Registration by provider/authorised representative for systems concluded not high-risk under Art 6(3)
must_comply(Actor, register_in_eu_database(Actor, System)) :-
    provider(Actor),
    concluded_not_high_risk(Actor, System).

must_comply(Actor, register_in_eu_database(Actor, System)) :-
    authorised_representative_of(Actor, Provider),
    provider(Provider),
    concluded_not_high_risk(Provider, System).

% Article 49(3) - Registration by public authority deployers / Union bodies / agents
must_comply(Deployer, register_and_select_use_in_eu_database(Deployer, System)) :-
    deployer(Deployer),
    high_risk_ai_system(System),
    annex_3_system(System),
    \+ annex_3_point_2_system(System),
    ( public_authority(Deployer)
    ; union_institution_body_office_agency(Deployer)
    ; ( acts_on_behalf_of(Deployer, Body),
        ( public_authority(Body) ; union_institution_body_office_agency(Body) ) )
    ).

% Article 49(4) - Restricted access to secure non-public section
permitted_access_restricted_section(Actor, restricted_section(System)) :-
    sensitive_area_annex_3_registration(System),
    commission(Actor).

permitted_access_restricted_section(Actor, restricted_section(System)) :-
    sensitive_area_annex_3_registration(System),
    national_authority_art_74_8(Actor).

% Article 49(5) - Registration at national level for Annex III point 2 systems
national_level_registration_required(System) :-
    high_risk_ai_system(System),
    annex_3_point_2_system(System).

% Provenance
provenance(must_comply/2, 'celex:32024R1689/oj#art_49').
provenance(permitted_access_restricted_section/2, 'celex:32024R1689/oj#art_49').
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
