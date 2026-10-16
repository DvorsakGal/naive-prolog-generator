% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : a8a10d0b5682647a2b1c342d3a2d8b43b635c8f69b5e06b35eecb61a3f5d30e2
% cached     : False
% title      : AI Office
:- pred must_develop_union_expertise_through_ai_office/2, gloss('Commission shall develop Union expertise and capabilities in AI through the AI Office'), source('celex:32024R1689/oj#art_64').
:- pred must_facilitate_ai_office_tasks/2, gloss('Member State shall facilitate tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').

must_develop_union_expertise_through_ai_office(commission, ai_office).

must_facilitate_ai_office_tasks(MemberState, ai_office) :-
    member_state(MemberState).

provenance(must_develop_union_expertise_through_ai_office/2, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_ai_office_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
