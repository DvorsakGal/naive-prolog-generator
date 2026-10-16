% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : dc6d7a1200d860e1166a5b82e9947f8cbcceb2f40b3d3238baec2b2338c78040
% cached     : False
% title      : AI literacy
:- pred provider_of/2, gloss('entity is a provider of an AI system'), source('celex:32024R1689/oj#art_4').
:- pred deployer_of/2, gloss('entity is a deployer of an AI system'), source('celex:32024R1689/oj#art_4').
:- pred must_ensure/2, gloss('actor must ensure an outcome or measure'), source('celex:32024R1689/oj#art_4').

must_ensure(P, sufficient_ai_literacy(S)) :-
    ai_system(S),
    provider_of(P, S).

must_ensure(D, sufficient_ai_literacy(S)) :-
    ai_system(S),
    deployer_of(D, S).

provenance(must_ensure/2, 'celex:32024R1689/oj#art_4').
provenance(provider_of/2, 'celex:32024R1689/oj#art_4').
provenance(deployer_of/2, 'celex:32024R1689/oj#art_4').
