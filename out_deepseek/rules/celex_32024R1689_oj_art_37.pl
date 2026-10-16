% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 2d560ac8b39b2612c56e7d37bbd685dc099aa6177ed9731466e4ca06e07bf45e
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred must_investigate/2, gloss('Commission investigates doubts about notified body competence'), source('celex:32024R1689/oj#art_37').
:- pred must_provide_information/2, gloss('notifying authority provides information to Commission'), source('celex:32024R1689/oj#art_37').
:- pred must_ensure_confidentiality/2, gloss('Commission ensures confidentiality of investigation information'), source('celex:32024R1689/oj#art_37').
:- pred must_inform/2, gloss('Commission informs Member State of non-compliance'), source('celex:32024R1689/oj#art_37').
:- pred may_suspend_restrict_withdraw/2, gloss('Commission may suspend, restrict or withdraw designation'), source('celex:32024R1689/oj#art_37').

must_investigate(Commission, Body) :-
    notified_body(Body),
    doubt_competence_or_fulfilment(Body).

doubt_competence_or_fulfilment(Body) :-
    notified_body(Body),
    reasons_to_doubt(Body).

reasons_to_doubt(Body) :-
    notified_body(Body),
    \+ meets_requirements(Body).

reasons_to_doubt(Body) :-
    notified_body(Body),
    \+ continued_fulfilment(Body).

must_provide_information(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    commission_requested_information(Body).

must_ensure_confidentiality(Commission, Information) :-
    sensitive_information(Information),
    obtained_during_investigation(Information).

must_inform(Commission, noncompliance(Body)) :-
    notified_body(Body),
    \+ meets_requirements(Body).

must_inform(Commission, noncompliance(Body)) :-
    notified_body(Body),
    \+ continued_fulfilment(Body).

may_suspend_restrict_withdraw(Commission, designation(Body)) :-
    notified_body(Body),
    member_state_failed_corrective_measures(Body).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure_confidentiality/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(may_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
