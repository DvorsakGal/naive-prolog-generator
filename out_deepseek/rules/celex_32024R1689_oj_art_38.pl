% unit       : celex:32024R1689/oj#art_38
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 739ff5876a8ac4096c4f080766c2fefcabe55c51901f9437fba0209a02550584
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : fb996f0330e50ec9a42fde3d570a04ec8c956f0cea5dc3a583649ac1770b1b44
% cached     : False
% title      : Coordination of notified bodies
:- pred must_ensure_coordination/2, gloss('Commission ensures coordination and cooperation between notified bodies'), source('celex:32024R1689/oj#art_38').
:- pred must_ensure_participation/2, gloss('notifying authority ensures its notified bodies participate in sectoral group'), source('celex:32024R1689/oj#art_38').
:- pred must_provide_exchange/2, gloss('Commission provides exchange of knowledge and best practices between notifying authorities'), source('celex:32024R1689/oj#art_38').

must_ensure_coordination(Commission, coordination(notified_bodies, high_risk_ai_systems)) :-
    ai_office(Commission),
    high_risk_ai_system(_S).

must_ensure_participation(NotifyingAuthority, participation(NotifiedBody, sectoral_group)) :-
    notifying_authority(NotifyingAuthority),
    notified_body(NotifiedBody),
    notified_by(NotifiedBody, NotifyingAuthority).

must_provide_exchange(Commission, exchange(knowledge_and_best_practices, notifying_authorities)) :-
    ai_office(Commission).

provenance(must_ensure_coordination/2, 'celex:32024R1689/oj#art_38').
provenance(must_ensure_participation/2, 'celex:32024R1689/oj#art_38').
provenance(must_provide_exchange/2, 'celex:32024R1689/oj#art_38').

references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_38', 'celex:32024R1689/oj#art_38/par_1').
