% unit       : celex:32024R1689/oj#art_49
% title      : Registration
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : gpt-oss:120b-cloud
% prompt sha : 500417c3accdeddd293aa371a04b1d9a4634131d1cd4ea68fc2cb375e53302b1
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_registration/2, gloss('obligation to register actor and system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred not_high_risk_ai_system/1, gloss('system concluded not high‑risk by provider'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3/1, gloss('system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_pnt_2/1, gloss('system listed in point 2 of Annex III'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex_3_point/2, gloss('system listed in a specific point of Annex III'), source('celex:32024R1689/oj#art_49').
:- pred public_authority_actor/1, gloss('deployer that is a public authority or equivalent'), source('celex:32024R1689/oj#art_49').
:- pred using/1, gloss('system is used'), source('celex:32024R1689/oj#art_49').
:- pred law_enforcement_area/1, gloss('system used in law‑enforcement, migration, asylum or border control'), source('celex:32024R1689/oj#art_49').
:- pred registration_in_database/2, gloss('system registered in a given EU database'), source('celex:32024R1689/oj#art_49').
:- pred secure_non_public_section/1, gloss('secure non‑public section of a database'), source('celex:32024R1689/oj#art_49').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_49').
:- pred permitted_access/2, gloss('entity may access a database section'), source('celex:32024R1689/oj#art_49').
:- pred required_secure_registration/2, gloss('obligation to register in secure non‑public section'), source('celex:32024R1689/oj#art_49').
:- pred required_national_registration/1, gloss('obligation to register at national level'), source('celex:32024R1689/oj#art_49').

% Clause 1 – registration for listed high‑risk AI systems (except point 2)
required_registration(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_pnt_2(System),
    (placing_on_market(System) ; putting_into_service(System)).

% Clause 2 – registration for systems concluded not high‑risk
required_registration(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    not_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

% Clause 3 – registration for public‑authority deployers of listed high‑risk systems
required_registration(Actor, System) :-
    deployer(Actor),
    public_authority_actor(Actor),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ listed_in_annex_3_pnt_2(System),
    (putting_into_service(System) ; using(System)).

% Clause 4 – secure non‑public registration for specific points and law‑enforcement areas
required_secure_registration(System, Database) :-
    high_risk_ai_system(System),
    listed_in_annex_3_point(System, Point),
    member(Point, [1,6,7]),
    law_enforcement_area(System),
    registration_in_database(System, Database),
    secure_non_public_section(Database).

% Clause 5 – access to the secure non‑public section is limited to Commission and national authorities
permitted_access(Entity, Database) :-
    (commission(Entity) ; national_competent_authority(Entity)),
    secure_non_public_section(Database).

% Clause 6 – national‑level registration for systems listed in point 2 of Annex III
required_national_registration(System) :-
    high_risk_ai_system(System),
    listed_in_annex_3_pnt_2(System).

% Provenance
provenance(required_registration/2, 'celex:32024R1689/oj#art_49').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3_pnt_2/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex_3_point/2, 'celex:32024R1689/oj#art_49').
provenance(public_authority_actor/1, 'celex:32024R1689/oj#art_49').
provenance(using/1, 'celex:32024R1689/oj#art_49').
provenance(law_enforcement_area/1, 'celex:32024R1689/oj#art_49').
provenance(registration_in_database/2, 'celex:32024R1689/oj#art_49').
provenance(secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(commission/1, 'celex:32024R1689/oj#art_49').
provenance(permitted_access/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_registration/2, 'celex:32024R1689/oj#art_49').
provenance(required_national_registration/1, 'celex:32024R1689/oj#art_49').

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
