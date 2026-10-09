% unit       : celex:32024R1689/oj#art_49
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : abbd5cf06f59b0667c7217d6d993d11f01749c3b4647661d10c65e541eb555cc
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 099b024b758a6a5bb6d32bc17e064f862ae7940f7b6313a0418247402c0a17da
% cached     : False
% title      : Registration
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('art_49').
:- pred listed_in_annex_3/1, gloss('AI system listed in annex 3'), source('art_49').
:- pred exception_high_risk_ai_system/1, gloss('high‑risk AI system listed in annex 3 point 2 (exception)'), source('art_49').
:- pred not_high_risk_ai_system/1, gloss('AI system concluded not high‑risk according to art 6 paragraph 3'), source('art_49').
:- pred public_authority_deployer/1, gloss('deployer that is a public authority, Union institution, body, office, agency or acting on its behalf'), source('art_49').
:- pred law_enforcement_related_system/1, gloss('high‑risk AI system listed in annex 3 points 1, 6 or 7, i.e. law‑enforcement related'), source('art_49').
:- pred using/1, gloss('use of an AI system'), source('art_49').

must_register(Actor, registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ exception_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).

must_register(Actor, registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    not_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).

must_register(Actor, use_registration(System)) :-
    public_authority_deployer(Actor),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    \+ exception_high_risk_ai_system(System),
    ( putting_into_service(System) ; using(System) ).

must_register(Actor, secure_section_registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    high_risk_ai_system(System),
    listed_in_annex_3(System),
    law_enforcement_related_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).

must_register(Actor, national_registration(System)) :-
    ( provider(Actor) ; authorised_representative(Actor) ),
    exception_high_risk_ai_system(System),
    ( placing_on_market(System) ; putting_into_service(System) ).

provenance(must_register/2, 'celex:32024R1689/oj#art_49').

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
