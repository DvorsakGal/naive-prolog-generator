% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 709569ff572d90416f5473c659c895e53f61b74eedac5632e663b32ff9409ec6
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred must_pay_fees/2, gloss('Member State may be required to pay fees for expert advice and support'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_access/2, gloss('Commission shall facilitate timely access to experts'), source('celex:32024R1689/oj#art_69').

% Article 69(1)
may_call_upon_experts(MemberState) :-
    member_state(MemberState).

% Article 69(2)
must_pay_fees(MemberState, expert_advice_and_support) :-
    member_state(MemberState).

% Article 69(3)
must_facilitate_access(Commission, MemberState) :-
    member_state(MemberState).

provenance(may_call_upon_experts/1, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
