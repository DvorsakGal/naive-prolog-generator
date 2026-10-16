% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 1a278372260667a5ac645cab3db7ba5507af968d135bab36675ed6be2006cb3a
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred may_call_on_experts/2, gloss('Member State may call upon experts of the scientific panel for enforcement support'), source('celex:32024R1689/oj#art_69').
:- pred may_be_required_to_pay_fees/2, gloss('Member State may be required to pay fees for expert advice and support'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_timely_access/2, gloss('Commission must facilitate timely access to experts for Member States'), source('celex:32024R1689/oj#art_69').
:- pred must_ensure_efficient_organisation/2, gloss('Commission must ensure support activities are efficiently organised'), source('celex:32024R1689/oj#art_69').

may_call_on_experts(MemberState, enforcement_support) :-
    experts_designated_by_member_states(Experts),
    involved_in_application(MemberState).

may_be_required_to_pay_fees(MemberState, advice_and_support) :-
    may_call_on_experts(MemberState, enforcement_support).

must_facilitate_timely_access(Commission, MemberState) :-
    may_call_on_experts(MemberState, enforcement_support).

must_ensure_efficient_organisation(Commission, support_activities) :-
    must_facilitate_timely_access(Commission, _MemberState).

provenance(may_call_on_experts/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
