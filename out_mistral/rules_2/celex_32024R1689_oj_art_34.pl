% unit       : celex:32024R1689/oj#art_34
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 578b1412ed18550c6d83caa0592eed03494eddab06e4ddd45b734b974ea4147c
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 733bfd0648981ef398dc590f9361d1fb1267e1b2b458c9b3d920cd7648d9f68a
% cached     : False
% title      : Operational obligations of notified bodies
:- pred must_verify_conformity/2, gloss('notified body verifies conformity of high-risk AI system'), source('celex:32024R1689/oj#art_34').
:- pred must_avoid_unnecessary_burdens/1, gloss('notified body avoids unnecessary burdens for providers'), source('celex:32024R1689/oj#art_34').
:- pred must_take_due_account_of_provider_characteristics/2, gloss('notified body takes due account of provider size, sector, structure and system complexity'), source('celex:32024R1689/oj#art_34').
:- pred must_respect_degree_of_rigour/1, gloss('notified body respects degree of rigour and level of protection required'), source('celex:32024R1689/oj#art_34').
:- pred must_make_available_documentation/2, gloss('notified body makes available and submits documentation upon request to notifying authority'), source('celex:32024R1689/oj#art_34').

must_verify_conformity(Body, S) :-
    notified_body(Body),
    high_risk_ai_system(S),
    conformity_assessment_procedure(S).

must_avoid_unnecessary_burdens(Body) :-
    notified_body(Body).

must_take_due_account_of_provider_characteristics(Body, P) :-
    notified_body(Body),
    provider(P).

must_respect_degree_of_rigour(Body) :-
    notified_body(Body).

must_make_available_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).

provenance(must_verify_conformity/2, 'celex:32024R1689/oj#art_34').
provenance(must_avoid_unnecessary_burdens/1, 'celex:32024R1689/oj#art_34').
provenance(must_take_due_account_of_provider_characteristics/2, 'celex:32024R1689/oj#art_34').
provenance(must_respect_degree_of_rigour/1, 'celex:32024R1689/oj#art_34').
provenance(must_make_available_documentation/2, 'celex:32024R1689/oj#art_34').

references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_34', 'celex:32003H0361/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#art_28').
references('celex:32024R1689/oj#art_34', 'celex:32024R1689/oj#chp_3/sec_4').
