% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a375588921847889e8dae11fc114c880ba2c7d782de22c21383d960b2dbcdbf4
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify/2, gloss('obligation of notified bodies to verify conformity of high‑risk AI systems'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('obligation of notified bodies to avoid unnecessary burdens for providers'), source('celex:32024R1689/oj#art_34').
:- pred must_take_due_account/2, gloss('obligation of notified bodies to take due account of provider characteristics'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_rigour_and_protection/2, gloss('obligation of notified bodies to respect required rigour and level of protection'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available/2, gloss('obligation of notified bodies to make relevant documentation available'), source('celex:32024R1689/oj#art_34').
:- pred must_submit/2, gloss('obligation of notified bodies to submit documentation to the notifying authority on request'), source('celex:32024R1689/oj#art_34').

must_verify(NB, conformity_verification(S)) :-
    notified_body(NB),
    high_risk_ai_system(S).

must_avoid_unnecessary_burdens(NB, Provider) :-
    notified_body(NB),
    provider(Provider).

must_take_due_account(NB, Provider) :-
    notified_body(NB),
    provider(Provider).

must_respect_rigour_and_protection(NB, S) :-
    notified_body(NB),
    high_risk_ai_system(S).

must_make_available(NB, all_relevant_documentation) :-
    notified_body(NB).

must_submit(NB, submission(documentation, Authority)) :-
    notified_body(NB),
    notifying_authority(Authority).

provenance(must_verify/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
