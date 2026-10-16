% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5cb7371bd48891b1d0ce2fdab69489b858e92f37d9406ec1bc65df27df779b7f
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_37').
:- pred doubts_competence_or_requirements/1, gloss('reasons to doubt the competence or continued fulfilment of requirements of a notified body'), source('celex:32024R1689/oj#art_37').
:- pred request_from_commission/2, gloss('request sent by Commission to an authority'), source('celex:32024R1689/oj#art_37').
:- pred fails_to_meet_notification_requirements/1, gloss('notified body does not meet or no longer meets notification requirements'), source('celex:32024R1689/oj#art_37').
:- pred fails_corrective_measures/1, gloss('Member State fails to take necessary corrective measures'), source('celex:32024R1689/oj#art_37').
:- pred must_investigate(Actor, Object), gloss('duty to investigate a notified body'), source('celex:32024R1689/oj#art_37').
:- pred must_provide(Actor, Object), gloss('duty to provide information to an entity'), source('celex:32024R1689/oj#art_37').
:- pred must_ensure(Actor, Object), gloss('duty to ensure confidential treatment or other outcome'), source('celex:32024R1689/oj#art_37').
:- pred must_inform(Actor, Object), gloss('duty to inform an entity of non-compliance'), source('celex:32024R1689/oj#art_37').
:- pred must_request(Actor, Object), gloss('duty to request corrective measures from an entity'), source('celex:32024R1689/oj#art_37').
:- pred permitted_suspend_restrict_withdraw(Actor, Object), gloss('power to suspend, restrict or withdraw designation by implementing act'), source('celex:32024R1689/oj#art_37').

% Paragraph 1: Commission shall investigate cases where competence or requirements are doubted
must_investigate(C, Body) :-
    commission(C),
    notified_body(Body),
    doubts_competence_or_requirements(Body).

% Paragraph 2: Notifying authority shall provide Commission on request with relevant information
must_provide(Auth, information(Body, C)) :-
    notifying_authority(Auth),
    commission(C),
    notified_body(Body),
    request_from_commission(C, Auth).

% Paragraph 3: Commission shall ensure sensitive information is treated confidentially
must_ensure(C, confidentiality(investigation_info(Body))) :-
    commission(C),
    notified_body(Body).

% Paragraph 4: Where Commission ascertains notified body does not meet requirements,
% inform notifying Member State and request corrective measures
must_inform(C, notifying_member_state(Body, non_compliance)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body).

must_request(C, corrective_measures(notifying_member_state, Body)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body).

% Paragraph 4 (second sentence): If Member State fails to take corrective measures,
% Commission may suspend, restrict or withdraw designation by implementing act
permitted_suspend_restrict_withdraw(C, designation(Body)) :-
    commission(C),
    notified_body(Body),
    fails_to_meet_notification_requirements(Body),
    fails_corrective_measures(notifying_member_state).

% Provenance
provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_suspend_restrict_withdraw/2, 'celex:32024R1689/oj#art_37').

% References
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
