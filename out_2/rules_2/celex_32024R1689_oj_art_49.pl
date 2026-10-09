% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : aa83936a1f2cf2c9e8de21acba3a807d05c93bf9a365e003ec9b9e538443905b
% cached     : False
% title      : Registration
:- pred exempt_high_risk_ai_system/1, gloss('high‑risk AI system referred to in annex 3 point 2'), source('celex:32024R1689/oj#anx_3/pnt_2').
:- pred law_enforcement_related/1, gloss('high‑risk AI system used in law‑enforcement, migration, asylum or border‑control management'), source('celex:32024R1689/oj#art_49/par_4').
:- pred required_secure_non_public_section/1, gloss('registration must be in a secure non‑public section of the EU database'), source('celex:32024R1689/oj#art_49/par_4').
:- pred required_registration_information/2, gloss('registration must include the specified information'), source('celex:32024R1689/oj#art_49/par_4').
:- pred required_national_registration/1, gloss('high‑risk AI system must be registered at national level'), source('celex:32024R1689/oj#art_49/par_5').

must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ exempt_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    \+ high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_register(Actor, System) :-
    deployer(Actor),
    high_risk_ai_system(System),
    annex_3_ai_system(System),
    \+ exempt_high_risk_ai_system(System),
    (putting_into_service(System) ; using_system(Actor, System)).

required_secure_non_public_section(System) :-
    high_risk_ai_system(System),
    (annex_3_pnt_1_a(System) ; annex_3_pnt_6(System) ; annex_3_pnt_7(System)),
    law_enforcement_related(System).

required_registration_information(System, a) :-
    required_secure_non_public_section(System).

required_registration_information(System, b) :-
    required_secure_non_public_section(System).

required_registration_information(System, c) :-
    required_secure_non_public_section(System).

required_registration_information(System, d) :-
    required_secure_non_public_section(System).

required_national_registration(System) :-
    exempt_high_risk_ai_system(System).

provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_non_public_section/1, 'celex:32024R1689/oj#art_49').
provenance(required_registration_information/2, 'celex:32024R1689/oj#art_49').
provenance(required_national_registration/1, 'celex:32024R1689/oj#art_49').

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
