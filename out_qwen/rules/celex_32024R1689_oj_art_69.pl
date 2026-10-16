% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b1d66439b2f1395d36bb81275662bbd494d5a48c132663a205dd789a72c93744
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('member state of the European Union'), source('celex:32024R1689/oj#art_69').
:- pred scientific_panel_expert/1, gloss('expert belonging to the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred enforcement_activity/1, gloss('activity carried out for enforcement under this regulation'), source('celex:32024R1689/oj#art_69').
:- pred union_ai_testing_support/1, gloss('AI testing support provided at Union level pursuant to Article 84'), source('celex:32024R1689/oj#art_69').

permitted_call_upon_experts(MS, E) :-
    member_state(MS),
    scientific_panel_expert(E),
    enforcement_activity(A),
    supports_enforcement(E, A).

must_pay_fees(MS, advice_and_support(E)) :-
    member_state(MS),
    scientific_panel_expert(E),
    fees_required_for_advice_and_support(E).

must_facilitate_access(commission, experts_for_member_states(MS)) :-
    member_state(MS),
    access_needed(MS).

must_ensure_efficient_organisation(commission, combined_support_activities) :-
    union_ai_testing_support(T),
    scientific_panel_expert(E),
    combined_support(T, E).

provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
