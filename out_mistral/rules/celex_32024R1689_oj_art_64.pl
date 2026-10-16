% unit       : celex:32024R1689/oj#art_64
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : b5d7019bbe20e1b7245bff3db4ab80b8d1ee17876c741dbf4e5f768a0c1ebf04
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cfa857f6b25ed78a6cbbcccb861bfa454787e34a808641f30b29836c0dbc1818
% cached     : False
% title      : AI Office
:- pred must_facilitate_tasks/2, gloss('Member State obliged to facilitate AI Office tasks'), source('celex:32024R1689/oj#art_64').
:- pred develop_union_expertise_and_capabilities/2, gloss('Commission obliged to develop Union expertise and capabilities in AI through the AI Office'), source('celex:32024R1689/oj#art_64').

must_facilitate_tasks(MemberState, ai_office) :-
    member_state(MemberState).

develop_union_expertise_and_capabilities(commission, ai) :-
    ai_office(Office),
    develop_through(commission, Office, ai).

provenance(must_facilitate_tasks/2, 'celex:32024R1689/oj#art_64').
provenance(develop_union_expertise_and_capabilities/2, 'celex:32024R1689/oj#art_64').

references('celex:32024R1689/oj#art_64', 'celex:32024R1689/oj').
