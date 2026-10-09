% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 563b3f4b2923b7a4e5f76d0ac6382f79e00ef2a9c8efad74d8106064e15ed68d
% cached     : False
% title      : AI Office
:- pred must_develop/2, gloss('Commission shall develop Union expertise and capabilities in AI through the AI Office'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate/2, gloss('Member State shall facilitate the tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').

must_develop(commission, expertise_and_capabilities(ai_office)).

must_facilitate(MS, tasks_of(ai_office)) :-
    member_state(MS).

provenance(must_develop/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
