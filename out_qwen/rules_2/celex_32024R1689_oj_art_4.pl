% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 550eb1b29ad73caa78826d8fcea471155d8a9e1abb217eea3d76bbf78f0206f2
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('provider or deployer must ensure sufficient AI literacy of staff and persons dealing with operation and use'), source('celex:32024R1689/oj#art_4').
:- pred person_dealing_with_operation_and_use/2, gloss('person dealing with the operation and use of an AI system on behalf of a provider or deployer'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Actor, System) :-
    provider(Actor),
    ai_system(System).

must_ensure_ai_literacy(Actor, System) :-
    deployer(Actor),
    ai_system(System).

person_dealing_with_operation_and_use(Person, System) :-
    ai_system(System),
    staff(Person, System).

person_dealing_with_operation_and_use(Person, System) :-
    ai_system(System),
    other_person_on_behalf(Person, System).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(person_dealing_with_operation_and_use/2, 'celex:32024R1689/oj#art_4').
