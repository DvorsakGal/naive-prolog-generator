% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 4ca8ab5ff37293582ab0a8942705582a09255b69a7f500c9cd81ef2cd236d374
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body must verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('notified body must avoid unnecessary burdens for providers'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_rigour_and_protection/2, gloss('notified body must respect degree of rigour and level of protection'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_documentation/2, gloss('notified body must make available documentation to notifying authority'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment(assessment(System, celex:32024R1689/oj#art_43)).

must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System),
    must_verify_conformity(Body, System).

must_respect_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    must_verify_conformity(Body, System).

must_make_available_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    must_make_available_documentation(Body, Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
