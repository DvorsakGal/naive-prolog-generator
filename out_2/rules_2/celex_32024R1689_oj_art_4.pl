% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 3d61109d3c3f408253e80db64b5ab7a35329b25d9dca5233c0aebc9d57207c0c
% cached     : False
% title      : AI literacy
:- pred ensure_ai_literacy/2, gloss('ensure sufficient AI literacy of staff and other persons dealing with operation and use of AI systems'), source('celex:32024R1689/oj#art_4').

ensure_ai_literacy(Actor, staff_and_others(Actor)) :-
    provider(Actor).

ensure_ai_literacy(Actor, staff_and_others(Actor)) :-
    deployer(Actor).

provenance(ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
