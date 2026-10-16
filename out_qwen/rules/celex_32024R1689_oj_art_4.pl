% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9b1aa977abe9a56e7ab1469bf0e42379829f1b6b316d2172e586c44c0b5a115d
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('obligation to ensure sufficient AI literacy for relevant persons'), source('celex:32024R1689/oj#art_4').
:- pred relevant_person_for_ai_system/2, gloss('staff or other person dealing with operation or use of an AI system on behalf of an operator'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Provider, S) :-
    provider(Provider),
    ai_system(S),
    relevant_person_for_ai_system(S, _Person).

must_ensure_ai_literacy(Deployer, S) :-
    deployer(Deployer),
    ai_system(S),
    relevant_person_for_ai_system(S, _Person).

relevant_person_for_ai_system(S, Person) :-
    ai_system(S),
    staff_dealing_with_operation_or_use(S, Person).

relevant_person_for_ai_system(S, Person) :-
    ai_system(S),
    other_person_dealing_with_operation_or_use_on_behalf(S, Person).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(relevant_person_for_ai_system/2, 'celex:32024R1689/oj#art_4').
