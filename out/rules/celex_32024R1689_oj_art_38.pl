% unit       : celex:32024R1689/oj#art_38
% title      : Coordination of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : gpt-oss:120b-cloud
% prompt sha : 481208b6ef22309e638ddf7078ca1b6b57cb14fdd246c3d3ed5e99550dc7ff5c
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred sectoral_group_of_notified_bodies/1, gloss('group of notified bodies for coordination'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure/2, gloss('obligation to ensure'), source('celex:32024R1689/oj#art_38').
:- pred must_provide/2, gloss('obligation to provide'), source('celex:32024R1689/oj#art_38').
:- pred notified_by/2, gloss('notified body B is notified by authority A'), source('celex:32024R1689/oj#art_38').
:- pred participation_of_notified_bodies_in_group/1, gloss('participation of notified bodies in sectoral group'), source('celex:32024R1689/oj#art_38').

sectoral_group_of_notified_bodies(sectoral_group).

must_ensure(commission, sectoral_group_of_notified_bodies(G)) :-
    sectoral_group_of_notified_bodies(G),
    high_risk_ai_system(_).

must_ensure(A, participation_of_notified_bodies_in_group(G)) :-
    notifying_authority(A),
    sectoral_group_of_notified_bodies(G),
    notified_body(B),
    notified_body(B),
    notified_by(A, B).

must_provide(commission, exchange_of_knowledge_and_best_practices_between_notifying_authorities) :-
    notifying_authority(_).

provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
