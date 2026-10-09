% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8c1bc3c14d366b75e49d41de29a8fbe0e5ecd2101b3c96220bcebdc03c1db1e2
% cached     : False
% title      : AI literacy
:- pred must_ensure/2, gloss('obligation to ensure AI literacy of staff and other persons dealing with operation and use'), source('celex:32024R1689/oj#art_4').

must_ensure(Provider, ai_literacy_of_staff_and_others(Provider)) :-
    provider(Provider).

must_ensure(Deployer, ai_literacy_of_staff_and_others(Deployer)) :-
    deployer(Deployer).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
