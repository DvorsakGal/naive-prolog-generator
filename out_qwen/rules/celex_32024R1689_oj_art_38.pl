% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 4a41d36b795b9ec9409708a9e9ff028cbc3a759625372c9470afe47032527560
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination_of_notified_bodies/2, gloss('Commission ensures coordination between notified bodies for high-risk AI systems'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation_in_sectoral_group/2, gloss('Notifying authority ensures its notified bodies participate in the sectoral group'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange_of_knowledge/2, gloss('Commission provides for exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').
:- pred sectoral_group_of_notified_bodies/1, gloss('group for coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination_of_notified_bodies(commission, sectoral_group_of_notified_bodies).
must_ensure_participation_in_sectoral_group(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    notified_by(Body, Authority).
must_provide_exchange_of_knowledge(commission, notifying_authorities).

sectoral_group_of_notified_bodies(sectoral_group).

notified_by(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority).

provenance(must_ensure_coordination_of_notified_bodies/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation_in_sectoral_group/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange_of_knowledge/2, 'celex:32024R1689/oj#art_38').
provenance(sectoral_group_of_notified_bodies/1, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
