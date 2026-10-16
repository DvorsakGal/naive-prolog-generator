% unit       : celex:32024R1689/oj#art_37
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 79ad5f88e54cb80f266252cfd922ac584ba23a029763f8ef61989d4d9a90f687
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : cd07913711d75f761ec03fdb763ff115faa404f4a1dc1aa5631bb890baf49c3f
% cached     : False
% title      : Challenge to the competence of notified bodies
:- pred reasons_to_doubt_competence/1, gloss('there are reasons to doubt competence or continued fulfilment of requirements by a notified body'), source('celex:32024R1689/oj#art_37').
:- pred request_information/2, gloss('actor requests information from recipient'), source('celex:32024R1689/oj#art_37').
:- pred confidential_treatment_required/1, gloss('information obtained must be treated confidentially'), source('celex:32024R1689/oj#art_37').
:- pred non_compliant_notified_body/1, gloss('notified body does not meet or no longer meets requirements for notification'), source('celex:32024R1689/oj#art_37').
:- pred member_state_failed_corrective_measures/2, gloss('Member State failed to take necessary corrective measures regarding notified body'), source('celex:32024R1689/oj#art_37').
:- pred permitted_adopt_implementing_act/2, gloss('Commission is permitted to adopt an implementing act regarding designation of a notified body'), source('celex:32024R1689/oj#art_37').

% Paragraph 1: Commission shall investigate where necessary
must_investigate(Comm, Body) :-
    commission(Comm),
    notified_body(Body),
    reasons_to_doubt_competence(Body).

% Paragraph 2: Notifying authority shall provide information on request
must_provide(Auth, information(Body, Comm)) :-
    notifying_authority(Auth),
    notified_body(Body),
    commission(Comm),
    request_information(Comm, Auth).

% Paragraph 3: Commission shall ensure sensitive information is treated confidentially
must_ensure(Comm, confidential_treatment_required(Info)) :-
    commission(Comm),
    sensitive_operational_data(Info).

% Paragraph 4: Commission informs Member State and requests corrective measures
must_inform(Comm, non_compliant(Body, MemberState)) :-
    commission(Comm),
    notified_body(Body),
    non_compliant_notified_body(Body).

must_request(Comm, corrective_measures(MemberState, Body)) :-
    commission(Comm),
    notified_body(Body),
    non_compliant_notified_body(Body).

% Paragraph 4: Implementing act if Member State fails to take corrective measures
permitted_adopt_implementing_act(Comm, action(Action, Body)) :-
    commission(Comm),
    notified_body(Body),
    member_state_failed_corrective_measures(_MemberState, Body),
    member(Action, [suspend, restrict, withdraw]).

provenance(must_investigate/2, 'celex:32024R1689/oj#art_37').
provenance(must_provide/2, 'celex:32024R1689/oj#art_37').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_37').
provenance(must_inform/2, 'celex:32024R1689/oj#art_37').
provenance(must_request/2, 'celex:32024R1689/oj#art_37').
provenance(permitted_adopt_implementing_act/2, 'celex:32024R1689/oj#art_37').

references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_37').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_78').
references('celex:32024R1689/oj#art_37', 'celex:32024R1689/oj#art_98/par_2').
