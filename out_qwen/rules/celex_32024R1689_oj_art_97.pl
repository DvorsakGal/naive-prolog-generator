% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 9a6f03b8bbe6d8134cbdde0ca279a31c4cb70d41ce7095d6dc818884f27c5672
% cached     : False
% title      : Exercise of the delegation
:- pred delegated_power_conferred_on_commission/1, gloss('power to adopt delegated acts is conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period_applies/1, gloss('delegation of power has a defined duration and extension mechanism'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_delegation_report/2, gloss('Commission must report on delegation of power before period ends'), source('celex:32024R1689/oj#art_97').
:- pred delegation_revocable_by_body/2, gloss('delegation of power may be revoked by a specified body'), source('celex:32024R1689/oj#art_97').
:- pred must_consult_experts_before_adoption/2, gloss('Commission must consult Member State experts before adopting delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify_delegated_act/2, gloss('Commission must notify adopted delegated act to specified bodies'), source('celex:32024R1689/oj#art_97').
:- pred entry_into_force_condition_applies/1, gloss('conditions for entry into force of delegated act apply'), source('celex:32024R1689/oj#art_97').

delegated_power_conferred_on_commission(delegated_acts).

delegation_period_applies(delegated_acts).

must_draw_up_delegation_report(commission, delegation_of_power) :-
    delegation_period_applies(delegated_acts).

delegation_revocable_by_body(european_parliament, delegation_of_power).
delegation_revocable_by_body(council, delegation_of_power).

must_consult_experts_before_adoption(commission, experts_designated_by_member_states) :-
    delegated_power_conferred_on_commission(delegated_acts).

must_notify_delegated_act(commission, simultaneous_notification(european_parliament, council)) :-
    delegated_power_conferred_on_commission(delegated_acts).

entry_into_force_condition_applies(delegated_act) :-
    delegated_power_conferred_on_commission(delegated_acts).

provenance(delegated_power_conferred_on_commission/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period_applies/1, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_delegation_report/2, 'celex:32024R1689/oj#art_97').
provenance(delegation_revocable_by_body/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts_before_adoption/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(entry_into_force_condition_applies/1, 'celex:32024R1689/oj#art_97').

references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_97').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_6/par_7').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_1').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_7/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_11/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_43/par_6').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_47/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_51/par_3').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_52/par_4').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_5').
references('celex:32024R1689/oj#art_97', 'celex:32024R1689/oj#art_53/par_6').
