% unit       : celex:32024R1689/oj#art_4
% title      : AI literacy
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : gpt-oss:120b-cloud
% prompt sha : d32acd545ed690d28e312cdb31b8cd9d375536d8ba872c387957e163899d5714
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred required_ai_literacy/1, gloss('ensure sufficient AI literacy of staff and persons dealing with AI systems'), source('celex:32024R1689/oj#art_4').

required_ai_literacy(Actor) :-
    provider(Actor).

required_ai_literacy(Actor) :-
    deployer(Actor).

provenance(required_ai_literacy/1, 'celex:32024R1689/oj#art_4').
