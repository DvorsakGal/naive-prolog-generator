% unit       : celex:32024R1689/oj#art_69
% title      : Access to the pool of experts by the Member States
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : gpt-oss:120b-cloud
% prompt sha : 58377fefcd5d8494930fe8b7b121a3b111553ca783ecb97686903fe0d5a120c3
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred member_state/1, gloss('Member State'), source('celex:32024R1689/oj#art_69').
:- pred expert_of_scientific_panel/1, gloss('Expert belonging to the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_69').
:- pred implementing_act/1, gloss('Implementing act referred to in the regulation'), source('celex:32024R1689/oj#art_69').

% Permission to call upon experts
permitted_call_upon_expert(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

% Requirement for Member States to pay fees
required_pay_fees(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

% Requirement that the fee structure be set in the implementing act
required_fee_structure(ImplementingAct) :-
    implementing_act(ImplementingAct),
    takes_into_account(objectives_of_adequate_implementation),
    takes_into_account(cost_effectiveness),
    takes_into_account(ensuring_effective_access).

% Duty of the Commission to facilitate timely access
must_facilitate_access(Commission, MemberState, Expert) :-
    commission(Commission),
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

% Duty of the Commission to ensure efficient organisation of combined support activities
must_ensure_combination_efficient(Commission) :-
    commission(Commission),
    combination_of_support_activities_efficient(Commission).

% Supporting description predicates
takes_into_account(objectives_of_adequate_implementation).
takes_into_account(cost_effectiveness).
takes_into_account(ensuring_effective_access).

combination_of_support_activities_efficient(Commission) :-
    commission(Commission).

% Provenance
provenance(permitted_call_upon_expert/2, 'celex:32024R1689/oj#art_69').
provenance(required_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(required_fee_structure/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/3, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_combination_efficient/1, 'celex:32024R1689/oj#art_69').

% References
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
