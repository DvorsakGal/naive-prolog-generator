% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 83f63ccb211fae9989fce132981a7c57735b561dc38e7ef0d45d14ae803a6beb
% cached     : False
% title      : Registration
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3/1, gloss('high-risk AI system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_2/1, gloss('high-risk AI system referred to in Annex III point 2'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_1/1, gloss('high-risk AI system referred to in Annex III point 1'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_6/1, gloss('high-risk AI system referred to in Annex III point 6'), source('celex:32024R1689/oj#art_49').
:- pred annex_3_point_7/1, gloss('high-risk AI system referred to in Annex III point 7'), source('celex:32024R1689/oj#art_49').
:- pred law_enforcement_area/1, gloss('area of law enforcement'), source('celex:32024R1689/oj#art_49').
:- pred migration_asylum_border_control_area/1, gloss('area of migration, asylum and border control management'), source('celex:32024R1689/oj#art_49').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority, Union institution, body, office or agency'), source('celex:32024R1689/oj#art_49').
:- pred person_acting_on_behalf_of_public_authority/1, gloss('person acting on behalf of a public authority deployer'), source('celex:32024R1689/oj#art_49').
:- pred eu_database/1, gloss('EU database referred to in Article 71'), source('celex:32024R1689/oj#art_49').
:- pred secure_non_public_section/1, gloss('secure non-public section of the EU database'), source('celex:32024R1689/oj#art_49').
:- pred national_level_registration/1, gloss('registration at national level'), source('celex:32024R1689/oj#art_49').
:- pred concluded_not_high_risk/1, gloss('provider has concluded the AI system is not high-risk according to Article 6(3)'), source('celex:32024R1689/oj#art_49').
:- pred commission/1, gloss('the Commission'), source('celex:32024R1689/oj#art_49').
:- pred national_authority_art_74_8/1, gloss('national authority referred to in Article 74(8)'), source('celex:32024R1689/oj#art_49').

% Article 49(1): Provider or authorised representative must register before placing on market or putting into service
% for high-risk AI systems listed in Annex III, except those in Annex III point 2
must_register(Provider, registration(provider, System, eu_database)) :-
    provider(Provider),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(Provider, System).

must_register(AuthorisedRep, registration(authorised_representative, System, eu_database)) :-
    authorised_representative(AuthorisedRep),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(AuthorisedRep, System).

before_placing_on_market_or_putting_into_service(Actor, System) :-
    before_placing_on_market(Actor, System).
before_placing_on_market_or_putting_into_service(Actor, System) :-
    before_putting_into_service(Actor, System).

before_placing_on_market(Actor, System) :-
    placing_on_market(System),
    actor_involved(Actor, System).

before_putting_into_service(Actor, System) :-
    putting_into_service(System),
    actor_involved(Actor, System).

actor_involved(_Actor, _System).

% Article 49(2): Provider or authorised representative must register for AI systems concluded not high-risk under Art 6(3)
must_register(Provider, registration(provider, System, eu_database)) :-
    provider(Provider),
    ai_system(System),
    concluded_not_high_risk(System),
    before_placing_on_market_or_putting_into_service(Provider, System).

must_register(AuthorisedRep, registration(authorised_representative, System, eu_database)) :-
    authorised_representative(AuthorisedRep),
    ai_system(System),
    concluded_not_high_risk(System),
    before_placing_on_market_or_putting_into_service(AuthorisedRep, System).

% Article 49(3): Public authority deployers must register themselves, select the system and register its use
must_register(Deployer, registration(deployer, System, eu_database, use)) :-
    deployer(Deployer),
    public_authority_deployer(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_putting_into_service_or_using(Deployer, System).

must_register(Deployer, registration(deployer, System, eu_database, use)) :-
    deployer(Deployer),
    person_acting_on_behalf_of_public_authority(Deployer),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ annex_3_point_2(System),
    before_putting_into_service_or_using(Deployer, System).

before_putting_into_service_or_using(Deployer, System) :-
    before_putting_into_service(Deployer, System).
before_putting_into_service_or_using(Deployer, System) :-
    before_using(Deployer, System).

before_using(_Deployer, _System).

% Article 49(4): Special registration requirements for law enforcement, migration, asylum, border control
% Annex III points 1, 6, 7 in those areas: secure non-public section, limited information
required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_1(System),
    law_enforcement_area(System).

required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_1(System),
    migration_asylum_border_control_area(System).

required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_6(System),
    law_enforcement_area(System).

required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_6(System),
    migration_asylum_border_control_area(System).

required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_7(System),
    law_enforcement_area(System).

required_registration_section(System, secure_non_public_section) :-
    high_risk_ai_system(System),
    annex_3_point_7(System),
    migration_asylum_border_control_area(System).

% Access restriction: only Commission and national authorities under Art 74(8)
permitted_access_to_restricted_section(Accessor, System) :-
    commission(Accessor),
    required_registration_section(System, secure_non_public_section).

permitted_access_to_restricted_section(Accessor, System) :-
    national_authority_art_74_8(Accessor),
    required_registration_section(System, secure_non_public_section).

% Article 49(5): Annex III point 2 high-risk AI systems registered at national level
required_registration_level(System, national_level) :-
    high_risk_ai_system(System),
    annex_3_point_2(System).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_2/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_1/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_6/1, 'celex:32024R1689/oj#art_49').
provenance(annex_3_point_7/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#art_49').
provenance(migration_asylum_border_control_area/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority_deployer/1, 'celex:32024R1689/oj#art_49').
provenance(person_acting_on_behalf_of_public_authority/1, 'celex:32024R1689/oj#art_49').
provenance(eu_database/1, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(national_level_registration/1, 'celex:32024R1689/oj#art_49').
provenance(concluded_not_high_risk/1, 'celex:32024R1689/oj#art_49').
provenance(commission/1, 'celex:32024R1689/oj#art_49').
provenance(national_authority_art_74_8/1, 'celex:32024R1689/oj#art_49').
provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(before_placing_on_market_or_putting_into_service/2, 'celex:32024R1689/oj#art_49').
provenance(before_placing_on_market/2, 'celex:32024R1689/oj#art_49').
provenance(before_putting_into_service/2, 'celex:32024R1689/oj#art_49').
provenance(actor_involved/2, 'celex:32024R1689/oj#art_49').
provenance(before_putting_into_service_or_using/2, 'celex:32024R1689/oj#art_49').
provenance(before_using/2, 'celex:32024R1689/oj#art_49').
provenance(required_registration_section/2, 'celex:32024R1689/oj#art_49').
provenance(permitted_access_to_restricted_section/2, 'celex:32024R1689/oj#art_49').
provenance(required_registration_level/2, 'celex:32024R1689/oj#art_49').

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
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_6').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_1/pnt_9').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_8/sec_3/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_1').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_2').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_3').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#anx_9/pnt_5').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_49', 'celex:32024R1689/oj#art_49/par_4/unp_1').
