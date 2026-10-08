% unit       : celex:32024R1689/oj#art_34
% title      : Operational obligations of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : gpt-oss:120b-cloud
% prompt sha : 41d101568419bec82ab0170595d4315cc5b23ac9130c53c5d38de5883f40b6fa
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(NB, S) :-
    notified_body(NB),
    high_risk(S).

must_avoid_unnecessary_burdens(NB, P) :-
    notified_body(NB),
    provider(P).

must_take_due_account(NB, P, S) :-
    notified_body(NB),
    provider(P),
    high_risk(S).

must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk(S).

must_make_available_and_submit_documentation(NB, A, S) :-
    notified_body(NB),
    notifying_authority(A),
    high_risk(S).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/3, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_and_submit_documentation/3, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
