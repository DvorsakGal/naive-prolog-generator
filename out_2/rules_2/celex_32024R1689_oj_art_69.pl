% unit       : celex:32024R1689/oj#art_69
% context    : CHAPTER VII GOVERNANCE > SECTION 1 Governance at Union level
% slice sha  : 5f610ae4abccd95d899e146a489abbdabb09fc75828e03a4507ef00b69d099e3
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 58b03506b0edd1d0a5c1f9bdfb9ccf96c2e69e3109b94a9a94476a9f7b72646b
% cached     : False
% title      : Access to the pool of experts by the Member States
:- pred permitted_call_upon_experts/1, gloss('Member State may call upon experts of the scientific panel'), source('celex:32024R1689/oj#art_69').
:- pred required_fee_payment/1, gloss('Member State may be required to pay fees for expert advice and support'), source('celex:32024R1689/oj#art_69').
:- pred fee_structure_set_in_implementing_act/0, gloss('Structure and level of fees are set out in the implementing act'), source('celex:32024R1689/oj#art_69').
:- pred must_facilitate/2, gloss('Commission shall facilitate timely access to experts by Member States'), source('celex:32024R1689/oj#art_69').
:- pred must_ensure/2, gloss('Commission shall ensure efficient organisation of support activities'), source('celex:32024R1689/oj#art_69').

permitted_call_upon_experts(MS) :-
    member_state(MS).

required_fee_payment(MS) :-
    member_state(MS),
    fee_structure_set_in_implementing_act.

fee_structure_set_in_implementing_act.

must_facilitate(commission, access_to_experts(MS)) :-
    member_state(MS).

must_ensure(commission, efficient_organisation_of_support_combination).

provenance(permitted_call_upon_experts/1, 'celex:32024R1689/oj#art_69').
provenance(required_fee_payment/1, 'celex:32024R1689/oj#art_69').
provenance(fee_structure_set_in_implementing_act/0, 'celex:32024R1689/oj#art_69').
provenance(must_facilitate/2, 'celex:32024R1689/oj#art_69').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_69').

references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_68/par_1').
references('celex:32024R1689/oj#art_69', 'celex:32024R1689/oj#art_84').
