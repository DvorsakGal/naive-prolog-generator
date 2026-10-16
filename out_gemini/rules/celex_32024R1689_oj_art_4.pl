% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : abe619655a8585e6e0d17498d8ee7137baf75e4dc9b9bfc83cd500d512d3ce46
% cached     : False
% title      : AI literacy
:- pred must_ensure(Actor, Target), gloss('party is required to ensure something regarding a target'), source('celex:32024R1689/oj#art_4').
:- pred ai_literacy_measures_target/1, gloss('target subject to AI literacy measures'), source('celex:32024R1689/oj#art_4').

must_ensure(Provider, ai_literacy_level(staff_and_operators(Provider))) :-
    provider(Provider).

must_ensure(Deployer, ai_literacy_level(staff_and_operators(Deployer))) :-
    deployer(Deployer).

ai_literacy_measures_target(ai_literacy_level(staff_and_operators(Actor))) :-
    provider(Actor).
ai_literacy_measures_target(ai_literacy_level(staff_and_operators(Actor))) :-
    deployer(Actor).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measures_target/1, 'celex:32024R1689/oj#art_4').
