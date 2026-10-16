% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 86597edc294bcd9b312532fed8887fd0ba39cde11b6c5dd0ec764ec709a9a9c8
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body must verify conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('notified body must avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_submit_documentation_to_notifying_authority/2, gloss('notified body must submit relevant documentation to notifying authority upon request'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System),
    conformity_assessment_carried_out(System).

must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_submit_documentation_to_notifying_authority(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    reasoned_request(Authority, Body).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_submit_documentation_to_notifying_authority/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
