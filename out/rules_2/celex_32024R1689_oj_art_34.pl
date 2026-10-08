% unit       : celex:32024R1689/oj#art_34
% title      : Operational obligations of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : gpt-oss:120b-cloud
% prompt sha : d5ef87f120bc22f61204e9978b553245956d69ace6dd320070f62c2c40046e0f
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_verify_conformity/2, gloss('obligation of notified body to verify conformity of high‑risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/2, gloss('obligation of notified body to avoid unnecessary burdens for provider'), source('celex:32024R1689/oj#art_34').
:- pred must_take_due_account/3, gloss('obligation of notified body to take due account of provider and system characteristics'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_rigour_and_protection/2, gloss('obligation of notified body to respect required rigour and level of protection'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_and_submit_documentation/2, gloss('obligation of notified body to make available and submit documentation to notifying authority'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).

must_avoid_unnecessary_burdens(Body, Provider) :-
    notified_body(Body),
    provider(Provider).

must_take_due_account(Body, Provider, System) :-
    notified_body(Body),
    provider(Provider),
    high_risk_ai_system(System).

must_respect_rigour_and_protection(Body, System) :-
    notified_body(Body),
    high_risk_ai_system(System).

must_make_available_and_submit_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/2, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account/3, 'celex:32024R1689/oj#art_34').
provenance(must_respect_rigour_and_protection/2, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_and_submit_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
