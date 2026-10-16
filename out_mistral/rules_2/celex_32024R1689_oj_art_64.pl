% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : ee2e959cf65aa0104d436cdd3e8bb8c8172a93bbc0d7465c9040aa8406557cda
% cached     : False
% title      : AI Office
:- pred must_facilitate_ai_office_tasks/2, gloss('Member State must facilitate tasks entrusted to the AI Office'), source('celex:32024R1689/oj#art_64').
:- pred must_develop_union_ai_expertise/1, gloss('Commission must develop Union expertise and capabilities in the field of AI through the AI Office'), source('celex:32024R1689/oj#art_64').

must_develop_union_ai_expertise(commission).

must_facilitate_ai_office_tasks(MemberState, ai_office) :-
    member_state(MemberState).

provenance(must_develop_union_ai_expertise/1, 'celex:32024R1689/oj#art_64').
provenance(must_facilitate_ai_office_tasks/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
