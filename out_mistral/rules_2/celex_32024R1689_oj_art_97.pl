% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : 650d12eebe2ff776cdb9b0847d38de7be9c81ed3a6e19a0725d58349d65a0363
% cached     : False
% title      : Exercise of the delegation
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_97').
:- pred european_parliament/1, gloss('the European Parliament'), source('celex:32024R1689/oj#art_97').
:- pred council/1, gloss('the Council of the European Union'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act/1, gloss('act adopted by the Commission under delegated power'), source('celex:32024R1689/oj#art_97').
:- pred power_to_adopt_delegated_acts_conferred/1, gloss('power to adopt delegated acts conferred on the Commission'), source('celex:32024R1689/oj#art_97').
:- pred delegation_period/2, gloss('delegation of power conferred for a period'), source('celex:32024R1689/oj#art_97').
:- pred tacit_extension/1, gloss('delegation of power tacitly extended for periods of identical duration'), source('celex:32024R1689/oj#art_97').
:- pred opposition_to_extension/2, gloss('European Parliament or Council opposes extension of delegation'), source('celex:32024R1689/oj#art_97').
:- pred revocation_of_delegation/2, gloss('delegation of power revoked by European Parliament or Council'), source('celex:32024R1689/oj#art_97').
:- pred revocation_decision/1, gloss('decision of revocation of delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred report_on_delegation/1, gloss('Commission draws up report in respect of delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred consult_experts/1, gloss('Commission consults experts designated by each Member State before adopting delegated act'), source('celex:32024R1689/oj#art_97').
:- pred notify_simultaneously/2, gloss('Commission notifies delegated act simultaneously to European Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred delegated_act_enters_into_force/1, gloss('delegated act enters into force'), source('celex:32024R1689/oj#art_97').
:- pred no_objection_period/2, gloss('period within which no objection expressed by European Parliament or Council'), source('celex:32024R1689/oj#art_97').
:- pred objection_period_extended/2, gloss('objection period extended at initiative of European Parliament or Council'), source('celex:32024R1689/oj#art_97').

commission(commission).
european_parliament(european_parliament).
council(council).

power_to_adopt_delegated_acts_conferred(commission).

delegation_period(commission, years(5)).

report_on_delegation(commission).

must_draw_up_report(commission, delegation_of_power) :-
    commission(commission),
    delegation_period(commission, years(5)).

tacit_extension(commission) :-
    commission(commission),
    delegation_period(commission, years(5)),
    \+ opposition_to_extension(_, commission).

opposition_to_extension(european_parliament, commission).
opposition_to_extension(council, commission).

revocation_of_delegation(european_parliament, commission).
revocation_of_delegation(council, commission).

revocation_decision(D) :-
    revocation_of_delegation(_, commission),
    delegated_act(D).

must_consult_experts(commission, experts_designated_by_member_states) :-
    commission(commission),
    before_adopting_delegated_act(commission).

must_notify_simultaneously(commission, Act) :-
    commission(commission),
    delegated_act(Act),
    as_soon_as_adopted(commission, Act).

delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    no_objection_within(Act, months(3)).

delegated_act_enters_into_force(Act) :-
    delegated_act(Act),
    european_parliament_informed_no_objection(Act),
    council_informed_no_objection(Act).

no_objection_within(Act, months(3)) :-
    delegated_act(Act),
    \+ objection_expressed(european_parliament, Act),
    \+ objection_expressed(council, Act).

objection_period_extended(Act, months(6)) :-
    delegated_act(Act),
    initiative_to_extend(european_parliament, Act).

objection_period_extended(Act, months(6)) :-
    delegated_act(Act),
    initiative_to_extend(council, Act).

provenance(commission/1, 'celex:32024R1689/oj#art_97').
provenance(european_parliament/1, 'celex:32024R1689/oj#art_97').
provenance(council/1, 'celex:32024R1689/oj#art_97').
provenance(delegated_act/1, 'celex:32024R1689/oj#art_97').
provenance(power_to_adopt_delegated_acts_conferred/1, 'celex:32024R1689/oj#art_97').
provenance(delegation_period/2, 'celex:32024R1689/oj#art_97').
provenance(tacit_extension/1, 'celex:32024R1689/oj#art_97').
provenance(opposition_to_extension/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_of_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(revocation_decision/1, 'celex:32024R1689/oj#art_97').
provenance(report_on_delegation/1, 'celex:32024R1689/oj#art_97').
provenance(consult_experts/1, 'celex:32024R1689/oj#art_97').
provenance(notify_simultaneously/2, 'celex:32024R1689/oj#art_97').
provenance(delegated_act_enters_into_force/1, 'celex:32024R1689/oj#art_97').
provenance(no_objection_period/2, 'celex:32024R1689/oj#art_97').
provenance(objection_period_extended/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult_experts/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify_simultaneously/2, 'celex:32024R1689/oj#art_97').

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
