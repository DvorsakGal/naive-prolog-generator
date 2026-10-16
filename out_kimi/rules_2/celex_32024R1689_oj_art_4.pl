% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 04010a602a395d9e6612f372b9913718dd4176359a4222e45ff0c7915c233966
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('provider or deployer shall take measures to ensure sufficient AI literacy'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Actor, Staff) :-
    ( provider(Actor) ; deployer(Actor) ),
    staff_or_representative(Actor, Staff),
    deals_with_operation_or_use(Staff, S),
    ai_system(S),
    under_authority(Actor, Staff).

relevant_staff_factors(Staff, S) :-
    technical_knowledge(Staff),
    experience(Staff),
    education(Staff),
    training(Staff),
    context_of_use(S, Context),
    target_persons(S, Target).

taking_into_account(Staff, S) :-
    relevant_staff_factors(Staff, S).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
provenance(relevant_staff_factors/2, 'celex:32024R1689/oj#art_4').
provenance(taking_into_account/2, 'celex:32024R1689/oj#art_4').
