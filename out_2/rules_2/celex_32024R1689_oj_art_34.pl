% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 41dfe290e735ae42a2d50fa44b8203370070c56167c3858b678f0b61db26159d
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body must verify conformity of high‑risk AI system'), source('celex:32024R1689/oj#art_34').
must_verify_conformity(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).

:- pred must_avoid_unnecessary_burdens/2, gloss('notified body must avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
must_avoid_unnecessary_burdens(NB, P) :-
    notified_body(NB),
    provider(P).

:- pred must_respect_rigour_and_protection/2, gloss('notified body must respect required rigour and level of protection for high‑risk AI system'), source('celex:32024R1689/oj#art_34').
must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).

:- pred must_provide_documentation/2, gloss('notified body must make available and submit documentation to notifying authority'), source('celex:32024R1689/oj#art_34').
must_provide_documentation(NB, A) :-
    notified_body(NB),
    notifying_authority(A).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
