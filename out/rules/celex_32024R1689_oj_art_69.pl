% unit       : celex:32024R1689/oj#art_69
% title      : Access to the pool of experts by the Member States
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : gpt-oss:120b-cloud
% prompt sha : 43a57198cc3c8d9e78bf301dd54c2d4e7c2e6e49121c11098b2574008ae08857
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_69').
:- pred expert_of_scientific_panel/1, gloss('Expert belonging to the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_69').

permitted_call_upon_experts(MS, E) :-
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).

must_pay_fees(MS, E) :-
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).

must_facilitate_access(C, MS, E) :-
    commission(C),
    commission(C),
    member_state(MS),
    member_state(MS),
    expert_of_scientific_panel(E),
    expert_of_scientific_panel(E).

provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/3, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
