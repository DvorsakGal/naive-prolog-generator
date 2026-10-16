% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 42aa8fcf361fcc727a7ccff56eebf46cb3124c655cbade29a51c0fb0df05788d
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred may_call_upon_experts/2, gloss('Member State may call upon experts of the scientific panel to support enforcement activities'), source('celex:32024R1689/oj#art_69').
:- pred may_be_required_to_pay_fees/2, gloss('Member State may be required to pay fees for advice and support provided by experts'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate_timely_access/2, gloss('Commission must facilitate timely access to experts by Member States as needed'), source('celex:32024R1689/oj#art_69').
:- pred must_ensure_efficient_organisation/1, gloss('Commission must ensure combination of support activities by Union AI testing support and experts is efficiently organised and provides best possible added value'), source('celex:32024R1689/oj#art_69').

may_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert).

may_be_required_to_pay_fees(MemberState, fees(advice_and_support)) :-
    member_state(MemberState).

must_facilitate_timely_access(commission, MemberState) :-
    member_state(MemberState).

must_ensure_efficient_organisation(commission).

provenance(may_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/1, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
