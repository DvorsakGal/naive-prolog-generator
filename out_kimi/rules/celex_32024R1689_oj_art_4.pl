% unit       : celex:32024R1689/oj#art_4
% context    : CHAPTER I GENERAL PROVISIONS
% slice sha  : 779cd113d9fa69a313cee47f2ac32a9b7af0b355a5dfde977a46c48ef618b446
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e7f00c8c55f39935060496072c1eaf5a5bce56c711bd586cc1d08a0f9a6104ed
% cached     : False
% title      : AI literacy
:- pred must_ensure_ai_literacy/2, gloss('providers and deployers shall ensure sufficient AI literacy of staff and persons operating on their behalf'), source('celex:32024R1689/oj#art_4').

must_ensure_ai_literacy(Party, ai_literacy_of(Person, S)) :-
    (provider(Party); deployer(Party)),
    ai_system(S),
    (staff(Person, Party); operates_on_behalf(Person, Party, S)),
    deals_with_operation_or_use(Person, S).

provenance(must_ensure_ai_literacy/2, 'celex:32024R1689/oj#art_4').
