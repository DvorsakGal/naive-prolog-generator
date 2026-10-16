% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : eb2372a06b11126b9fcb03e289f949682909459a3852571f2a6fb1f467761581
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('provider or deployer must ensure sufficient AI literacy of staff and others dealing with AI systems'), source('celex:32024R1689/oj#art_4').
:- pred ai_literacy_measure/1, gloss('measure taken to ensure sufficient level of AI literacy'), source('celex:32024R1689/oj#art_4').
:- pred sufficient_ai_literacy_level/1, gloss('sufficient level of AI literacy achieved'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Provider, S) :-
    provider(Provider),
    ai_system(S),
    ai_literacy_measure(M),
    sufficient_ai_literacy_level(M).

must_ensure_ai_literacy(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    ai_literacy_measure(M),
    sufficient_ai_literacy_level(M).

ai_literacy_measure(M) :-
    must_ensure_ai_literacy(_, _),
    considers_technical_knowledge(M),
    considers_experience(M),
    considers_education(M),
    considers_training(M),
    considers_context_of_use(M),
    considers_affected_persons(M).

considers_technical_knowledge(M) :-
    ai_literacy_measure(M).

considers_experience(M) :-
    ai_literacy_measure(M).

considers_education(M) :-
    ai_literacy_measure(M).

considers_training(M) :-
    ai_literacy_measure(M).

considers_context_of_use(M) :-
    ai_literacy_measure(M).

considers_affected_persons(M) :-
    ai_literacy_measure(M).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(ai_literacy_measure/1, 'celex:32024R1689/oj#art_4').
provenance(sufficient_ai_literacy_level/1, 'celex:32024R1689/oj#art_4').
