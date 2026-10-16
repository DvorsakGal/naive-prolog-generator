% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 13f1cf44f42f321113849a4130527c0ff5207e0daf3d84eb992e4d4718f8f5c5
% cached     : False
% title      : AI Office
:- pred must_develop_expertise_and_capabilities/2, gloss('entity obliged to develop Union expertise and capabilities in AI'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate_tasks/2, gloss('entity obliged to facilitate tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').

must_develop_expertise_and_capabilities(Commission, ai_office(AI_Office)) :-
    ai_office(AI_Office).

must_facilitate_tasks(Member_State, ai_office(AI_Office)) :-
    ai_office(AI_Office).

provenance(must_develop_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
