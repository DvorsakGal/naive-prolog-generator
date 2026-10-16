% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 9b9db4c8eef1ba5e467f2660ad05e77e7e3d0905861a1256b31c8f4d356a01ba
% cached     : False
% title      : AI Office
:- pred must_develop_expertise/2, gloss('Commission shall develop Union expertise and capabilities in the field of AI through the AI Office'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate_tasks/2, gloss('Member States shall facilitate the tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').

must_develop_expertise(commission, expertise(ai, through(ai_office))).

must_facilitate_tasks(member_states, tasks(entrusted_to(ai_office))).

provenance(must_develop_expertise/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
