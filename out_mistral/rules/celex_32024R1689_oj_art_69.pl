% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a45cead4193e4bd7a4236dfb50b7a6b7060de38c068ab0f5356f3a656a4a52c5
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_69').
:- pred scientific_panel_expert/1, gloss('expert of the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred enforcement_activity/1, gloss('enforcement activity under this Regulation'), source('celex:32024R1689/oj#art_69').
:- pred expert_advice/1, gloss('advice provided by an expert'), source('celex:32024R1689/oj#art_69').
:- pred expert_support/1, gloss('support provided by an expert'), source('celex:32024R1689/oj#art_69').
:- pred fee/1, gloss('fee for advice and support'), source('celex:32024R1689/oj#art_69').
:- pred union_ai_testing_support/1, gloss('Union AI testing support activities'), source('celex:32024R1689/oj#art_69').

may_call_upon_expert(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    supports_enforcement(Expert, MemberState).

supports_enforcement(Expert, MemberState) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    enforcement_activity(Activity),
    supports(Activity, Expert).

may_be_required_to_pay_fee(MemberState, Fee) :-
    member_state(MemberState),
    fee(Fee),
    advice_or_support(Fee, Advice),
    provided_by(Advice, Expert),
    scientific_panel_expert(Expert),
    requested_by(Advice, MemberState).

must_facilitate_timely_access(Commission, MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    needed_for_enforcement(MemberState, Expert).

must_ensure_efficient_organisation(Commission, Support) :-
    support_combination(Support),
    union_ai_testing_support(Support),
    expert_support(Support),
    provides_added_value(Support).

support_combination(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E).

provides_added_value(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E),
    best_possible_added_value(combination(U, E)).

advice_or_support(fee(Advice), Advice) :-
    expert_advice(Advice).
advice_or_support(fee(Support), Support) :-
    expert_support(Support).

provided_by(Advice, Expert) :-
    scientific_panel_expert(Expert).
requested_by(Advice, MemberState) :-
    member_state(MemberState).

needed_for_enforcement(MemberState, Expert) :-
    member_state(MemberState),
    scientific_panel_expert(Expert),
    enforcement_activity(Activity),
    requires_expert(Activity, Expert).

requires_expert(Activity, Expert) :-
    enforcement_activity(Activity),
    scientific_panel_expert(Expert).

best_possible_added_value(combination(U, E)) :-
    union_ai_testing_support(U),
    expert_support(E).

provenance(may_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(may_be_required_to_pay_fee/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_timely_access/3, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
