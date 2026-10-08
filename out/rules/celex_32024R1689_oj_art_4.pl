% unit       : celex:32024R1689/oj#art_4
% title      : AI literacy
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : gpt-oss:120b-cloud
% prompt sha : e459a46c34d83c5d0bb8d6e7c8a88313c6d0562171fbc8db2981f3adcd4e3910
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_ensure/2, gloss('obligation to ensure'), source('celex:32024R1689/oj#art_4').

must_ensure(Actor, ai_literacy) :-
    provider(Actor).

must_ensure(Actor, ai_literacy) :-
    deployer(Actor).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
