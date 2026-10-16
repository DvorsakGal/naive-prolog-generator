% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 71a6bbdfd417d3008b258117f019192138d2fabf5418d8485da6e023e0221e9b
% cached     : False
% title      : Registration
:- pred must_register_information/2, gloss('provider or deployer must submit and keep up to date specified information upon registration'), source('celex:32024R1689/oj#art_49').

% Paragraph 1: Provider registration for high-risk AI systems listed in Annex III (except point 2)
must_register_information(Provider, registration(System, eu_database)) :-
    provider(Provider),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

must_register_information(Representative, registration(System, eu_database)) :-
    authorised_representative(Representative),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

% Paragraph 2: Provider registration for systems deemed not high-risk under Article 6(3)
must_register_information(Provider, registration(System, eu_database)) :-
    provider(Provider),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    before_placing_on_market_or_putting_into_service(System).

must_register_information(Representative, registration(System, eu_database)) :-
    authorised_representative(Representative),
    ai_system(System),
    not_high_risk_under_art_6_par_3(System),
    before_placing_on_market_or_putting_into_service(System).

% Paragraph 3: Deployer registration for high-risk AI systems listed in Annex III (except point 2)
must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    deployer_public_authority(Deployer),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    union_institution(Deployer),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

must_register_information(Deployer, registration_use(System, eu_database)) :-
    deployer(Deployer),
    acting_on_behalf_of(Deployer, Authority),
    (deployer_public_authority(Authority); union_institution(Authority)),
    high_risk_ai_system(System),
    referred_to_in_annex_3(System),
    \+ high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

% Paragraph 4: Secure non-public registration for specific Annex III points in sensitive areas
must_register_information(Party, registration_restricted(System, eu_database, secure_section)) :-
    (provider(Party); authorised_representative(Party); deployer(Party)),
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System); annex_3_point_6_applies(System); annex_3_point_7_applies(System)),
    law_enforcement_migration_asylum_border_control_area(System),
    (must_register_information(Party, registration(System, eu_database)); must_register_information(Party, registration_use(System, eu_database))).

% Paragraph 4: Access restriction to secure section
only_authorised_persons_access(secure_section(eu_database, System)) :-
    high_risk_ai_system(System),
    (annex_3_point_1_applies(System); annex_3_point_6_applies(System); annex_3_point_7_applies(System)),
    law_enforcement_migration_asylum_border_control_area(System).

% Paragraph 5: National level registration for Annex III point 2 systems
must_register_information(Party, registration(System, national_register)) :-
    (provider(Party); authorised_representative(Party)),
    high_risk_ai_system_referred_in_annex_3_point_2(System),
    before_placing_on_market_or_putting_into_service(System).

% Provenance
provenance(must_register_information/2, 'celex:32024R1689/oj#art_49').
provenance(only_authorised_persons_access/1, 'celex:32024R1689/oj#art_49').

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
