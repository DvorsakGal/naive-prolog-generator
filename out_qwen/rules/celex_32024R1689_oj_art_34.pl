% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ce36c88dcdaa216b266e39f98fd5dfdfb1a890a0cfca65d8e97e10b980a9e2b8
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body verifies conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burden/2, gloss('notified body avoids unnecessary burden for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_submit_documentation/2, gloss('notified body submits documentation to notifying authority'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    conformity_assessment(System).

must_avoid_unnecessary_burden(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_submit_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burden/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
