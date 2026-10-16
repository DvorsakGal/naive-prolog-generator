% unit       : celex:32024R1689/oj#art_97
% context    : CHAPTER XI DELEGATION OF POWER AND COMMITTEE PROCEDURE
% slice sha  : 01e606e3a022856a024c7fe78badadd7d3f20e1da3561bd01d8fc2f6366e829d
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 380e19c213b6f397bd191784de5b2d4619e41734225f335616962ec588a9ce55
% cached     : False
% title      : Exercise of the delegation
:- pred permitted_adopt_delegated_act/2, gloss('Commission is permitted to adopt a delegated act under specified conditions'), source('celex:32024R1689/oj#art_97').
:- pred permitted_revoke_delegation/2, gloss('An institution is permitted to revoke a delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred must_consult/2, gloss('Commission must consult designated Member State experts before adopting a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred must_notify/2, gloss('Commission must notify a delegated act simultaneously to Parliament and Council'), source('celex:32024R1689/oj#art_97').
:- pred must_draw_up_report/2, gloss('Commission must draw up a report on the delegation of power'), source('celex:32024R1689/oj#art_97').
:- pred enters_into_force/1, gloss('Delegated act enters into force if conditions of non-objection are satisfied'), source('celex:32024R1689/oj#art_97').
:- pred objected_to/1, gloss('European Parliament or Council has expressed an objection to a delegated act'), source('celex:32024R1689/oj#art_97').
:- pred confirmed_no_objection/1, gloss('Both European Parliament and Council have confirmed they will not object'), source('celex:32024R1689/oj#art_97').
:- pred delegated_power_scope/1, gloss('Article provision granting delegated powers'), source('celex:32024R1689/oj#art_97').

% Paragraph 1 & 2: Conferred powers
delegated_power_scope('celex:32024R1689/oj#art_6/par_6').
delegated_power_scope('celex:32024R1689/oj#art_6/par_7').
delegated_power_scope('celex:32024R1689/oj#art_7/par_1').
delegated_power_scope('celex:32024R1689/oj#art_7/par_3').
delegated_power_scope('celex:32024R1689/oj#art_11/par_3').
delegated_power_scope('celex:32024R1689/oj#art_43/par_5').
delegated_power_scope('celex:32024R1689/oj#art_43/par_6').
delegated_power_scope('celex:32024R1689/oj#art_47/par_5').
delegated_power_scope('celex:32024R1689/oj#art_51/par_3').
delegated_power_scope('celex:32024R1689/oj#art_52/par_4').
delegated_power_scope('celex:32024R1689/oj#art_53/par_5').
delegated_power_scope('celex:32024R1689/oj#art_53/par_6').

permitted_adopt_delegated_act(commission, delegated_act(Provision)) :-
    delegated_power_scope(Provision).

% Paragraph 2: Reporting obligation
must_draw_up_report(commission, delegation_of_power(deadline(months_before_end(9)))).

% Paragraph 3: Revocation
permitted_revoke_delegation(european_parliament, delegation_of_power(Provision)) :-
    delegated_power_scope(Provision).
permitted_revoke_delegation(council, delegation_of_power(Provision)) :-
    delegated_power_scope(Provision).

% Paragraph 4: Expert consultation
must_consult(commission, experts(member_state_designated, before_adopting(Act))) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision).

% Paragraph 5: Notification
must_notify(commission, simultaneous(european_parliament, council, Act)) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision).

% Paragraph 6: Entry into force conditions
enters_into_force(Act) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision),
    \+ objected_to(Act).

enters_into_force(Act) :-
    Act = delegated_act(Provision),
    delegated_power_scope(Provision),
    confirmed_no_objection(Act).

provenance(delegated_power_scope/1, 'celex:32024R1689/oj#art_97').
provenance(permitted_adopt_delegated_act/2, 'celex:32024R1689/oj#art_97').
provenance(must_draw_up_report/2, 'celex:32024R1689/oj#art_97').
provenance(permitted_revoke_delegation/2, 'celex:32024R1689/oj#art_97').
provenance(must_consult/2, 'celex:32024R1689/oj#art_97').
provenance(must_notify/2, 'celex:32024R1689/oj#art_97').
provenance(enters_into_force/1, 'celex:32024R1689/oj#art_97').

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
