% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 61adba09c21085b021c8757b9b4622a721127340f17b602b735b38b9a4ab79a2
% cached     : False
% title      : Coordination of notified bodies
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('sectoral group of notified bodies for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred notified_by/2, gloss('conformity assessment body notified by a notifying authority'), source('celex:32024R1689/oj#art_38').
:- pred designated_representative/2, gloss('designated representative of a notified body'), source('celex:32024R1689/oj#art_38').
:- pred high_risk_ai_system/1, gloss('high-risk AI system'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure(Actor, Object), gloss('duty of an actor to ensure a state of affairs'), source('celex:32024R1689/oj#art_38').
:- pred must_provide(Actor, Object), gloss('duty of an actor to provide something'), source('celex:32024R1689/oj#art_38').
:- pred participates_in_work_of/2, gloss('participation in the work of a body or group'), source('celex:32024R1689/oj#art_38').

% Paragraph 1: The Commission shall ensure coordination and cooperation between notified bodies in the form of a sectoral group
must_ensure(C, coordination_and_cooperation(sectoral_group_of_notified_bodies)) :-
    commission(C).

% Paragraph 2: Each notifying authority shall ensure that bodies notified by it participate in the sectoral group (directly or via designated representative)
must_ensure(Auth, participation(Body, Group)) :-
    notifying_authority(Auth),
    notified_by(Body, Auth),
    sectoral_group_of_notified_bodies(Group).

participates_in_work_of(Body, Group) :-
    sectoral_group_of_notified_bodies(Group),
    designated_representative(Rep, Body),
    participates_in_work_of(Rep, Group).

% Paragraph 3: The Commission shall provide for exchange of knowledge and best practices between notifying authorities
must_provide(C, exchange_of_knowledge_and_best_practices(notifying_authorities)) :-
    commission(C).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_38').
provenance(participates_in_work_of/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
