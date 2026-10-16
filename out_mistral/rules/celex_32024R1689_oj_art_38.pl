% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dc66b1c115dbc730d22c17176d0510cc23e1c1b53da7ef74cb9573f69125076c
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination(Body, Group), gloss('body ensures coordination and cooperation in a sectoral group of notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation(Authority, Group), gloss('notifying authority ensures notified bodies participate in a group'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange(Commission, Topic), gloss('Commission provides for exchange of knowledge and best practices'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('sectoral group of notified bodies for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred coordination_and_cooperation/1, gloss('appropriate coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred exchange_of_knowledge_and_best_practices/1, gloss('exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination(ai_office, sectoral_group_of_notified_bodies(G)) :-
    coordination_and_cooperation(G),
    high_risk_ai_system_context(G).

must_ensure_participation(Authority, sectoral_group_of_notified_bodies(G)) :-
    notifying_authority(Authority),
    notified_body_participates_in(Authority, G).

must_provide_exchange(ai_office, exchange_of_knowledge_and_best_practices) :-
    notifying_authority(_).

notified_body_participates_in(Authority, G) :-
    notifying_authority(Authority),
    notified_body(B),
    notified_by(B, Authority),
    participates_in(B, G).

notified_by(B, Authority) :-
    notifying_authority(Authority),
    notified_body(B).

participates_in(B, G) :-
    notified_body(B),
    sectoral_group_of_notified_bodies(G).

high_risk_ai_system_context(G) :-
    sectoral_group_of_notified_bodies(G).

provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(coordination_and_cooperation/1, 'celex:32024R1689/oj#art_38').
provenance(exchange_of_knowledge_and_best_practices/1, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
