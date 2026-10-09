% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c3b2b536e6dbf2565164f9e39efb2168d643c64a15df4c458c5e0613536c3ffa
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_69').
:- pred expert_of_scientific_panel/1, gloss('Expert belonging to the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_69').
:- pred implementing_act/1, gloss('Act implementing the regulation'), source('celex:32024R1689/oj#art_69').
:- pred objective/1, gloss('Objective taken into account'), source('celex:32024R1689/oj#art_69').

% Permission for Member States to call upon experts of the scientific panel
permitted_call_upon_experts(MemberState, Expert) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

% Obligation for Member States to pay fees for expert advice and support
must_pay_fees(MemberState, fees_for_expert_advice(Expert)) :-
    member_state(MemberState),
    expert_of_scientific_panel(Expert).

% Requirement that the implementing act sets out the fee structure, taking into account objectives
required_fee_structure(ImplementingAct) :-
    implementing_act(ImplementingAct),
    objective(adequate_implementation),
    objective(cost_effectiveness),
    objective(effective_access_to_experts).

% Obligation for the Commission to facilitate timely access to experts for Member States
must_facilitate_access(Commission, access_to_experts(MemberState)) :-
    commission(Commission),
    member_state(MemberState).

% Obligation for the Commission to ensure efficient organisation of support activities and added value
must_ensure_efficient_organisation(Commission, support_activities) :-
    commission(Commission).

% Provenance
provenance(permitted_call_upon_experts/2, 'celex:32024R1689/oj#art_69').
provenance(must_pay_fees/2, 'celex:32024R1689/oj#art_69').
provenance(required_fee_structure/1, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate_access/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure_efficient_organisation/2, 'celex:32024R1689/oj#art_69').

% References
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
