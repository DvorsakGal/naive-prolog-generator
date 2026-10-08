% unit       : celex:32024R1689/oj#art_49
% title      : Registration
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : gpt-oss:120b-cloud
% prompt sha : edde8430d823a6bc501a0224fecdb9a2b63d39a5322e61956cffacae6e22735c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_register/2, gloss('obligation to register actor and system in EU database'), source('celex:32024R1689/oj#art_49').
:- pred not_high_risk_ai_system/1, gloss('system not classified as high‑risk under Art 6 par 3'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex3/1, gloss('system listed in Annex III'), source('celex:32024R1689/oj#art_49').
:- pred exception_annex3_pnt2/1, gloss('system listed in Annex III point 2, which is excepted'), source('celex:32024R1689/oj#art_49').
:- pred public_authority/1, gloss('deployer that is a public authority, Union institution, body, office or agency or acting on its behalf'), source('celex:32024R1689/oj#art_49').
:- pred using/1, gloss('system is used'), source('celex:32024R1689/oj#art_49').
:- pred listed_in_annex3_point/2, gloss('system listed in Annex III at the given point'), source('celex:32024R1689/oj#art_49').
:- pred required_secure_section/1, gloss('registration must be in a secure non‑public section of the EU database'), source('celex:32024R1689/oj#art_49').
:- pred required_national_registration/1, gloss('high‑risk AI system listed in Annex III point 2 must be registered at national level'), source('celex:32024R1689/oj#art_49').

must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    high_risk_ai_system(System),
    listed_in_annex3(System),
    \+ exception_annex3_pnt2(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_register(Actor, System) :-
    (provider(Actor) ; authorised_representative(Actor)),
    not_high_risk_ai_system(System),
    (placing_on_market(System) ; putting_into_service(System)).

must_register(Actor, System) :-
    deployer(Actor),
    public_authority(Actor),
    high_risk_ai_system(System),
    listed_in_annex3(System),
    \+ exception_annex3_pnt2(System),
    (putting_into_service(System) ; using(System)).

required_secure_section(System) :-
    high_risk_ai_system(System),
    (listed_in_annex3_point(System, 1) ;
     listed_in_annex3_point(System, 6) ;
     listed_in_annex3_point(System, 7)).

required_national_registration(System) :-
    high_risk_ai_system(System),
    exception_annex3_pnt2(System).

provenance(must_register/2, 'celex:32024R1689/oj#art_49').
provenance(not_high_risk_ai_system/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex3/1, 'celex:32024R1689/oj#art_49').
provenance(exception_annex3_pnt2/1, 'celex:32024R1689/oj#art_49').
provenance(public_authority/1, 'celex:32024R1689/oj#art_49').
provenance(using/1, 'celex:32024R1689/oj#art_49').
provenance(listed_in_annex3_point/2, 'celex:32024R1689/oj#art_49').
provenance(required_secure_section/1, 'celex:32024R1689/oj#art_49').
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
