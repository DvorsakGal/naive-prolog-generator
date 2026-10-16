% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 15642b8fbfd39850b9b51430a92ac209c71541d5efba9ad214986b4df9ad4d09
% cached     : False
% title      : Changes to notifications
:- pred must_notify(Actor, Object), gloss('Actor must notify Object to designated entities'), source('celex:32024R1689/oj#art_36').
:- pred must_inform(Actor, Object), gloss('Actor must inform designated entities of an event or decision'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw(Actor, Object), gloss('Actor must withdraw a designation or certificate'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate(Actor, Object), gloss('Actor must investigate a matter'), source('celex:32024R1689/oj#art_36').
:- pred must_restrict(Actor, Object), gloss('Actor must restrict a designation'), source('celex:32024R1689/oj#art_36').
:- pred must_suspend(Actor, Object), gloss('Actor must suspend a designation'), source('celex:32024R1689/oj#art_36').
:- pred must_assess(Actor, Object), gloss('Actor must assess an impact or system'), source('celex:32024R1689/oj#art_36').
:- pred must_require(Actor, Object), gloss('Actor must require specified action'), source('celex:32024R1689/oj#art_36').
:- pred must_provide(Actor, Object), gloss('Actor must provide information or files to designated authority'), source('celex:32024R1689/oj#art_36').
:- pred valid_certificate(Cert), gloss('Certificate remains valid'), source('celex:32024R1689/oj#art_36').
:- pred provisional_validity_extension(Auth, Object), gloss('Authority is permitted to extend provisional validity'), source('celex:32024R1689/oj#art_36').
:- pred unduly_issued(Cert), gloss('Certificate was unduly issued'), source('celex:32024R1689/oj#art_36').
:- pred failure_to_meet_requirements(Body), gloss('Notified body no longer meets requirements or fails obligations'), source('celex:32024R1689/oj#art_36').
:- pred cessation_decided(Body), gloss('Notified body has decided to cease conformity assessment activities'), source('celex:32024R1689/oj#art_36').
:- pred designation_suspended(Body), gloss('Designation of notified body has been suspended'), source('celex:32024R1689/oj#art_36').
:- pred designation_restricted(Body), gloss('Designation of notified body has been restricted'), source('celex:32024R1689/oj#art_36').
:- pred designation_withdrawn(Body), gloss('Designation of notified body has been withdrawn'), source('celex:32024R1689/oj#art_36').
:- pred responsibility_assumed(NewBody, Cert), gloss('Another notified body confirmed assumption of responsibility in writing'), source('celex:32024R1689/oj#art_36').
:- pred confirmation_no_risk(Auth, Cert), gloss('Authority has confirmed there is no risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_36').
:- pred confirmation_no_issuance_and_capability(Auth, Body), gloss('Notifying authority confirmed no new certificates will be issued and stated capability'), source('celex:32024R1689/oj#art_36').
:- pred confirmation_temporary_assumption(Provider, Cert), gloss('Provider confirmed in writing that another qualified body is temporarily assuming functions'), source('celex:32024R1689/oj#art_36').
:- pred certificate_issued_by(Cert, Body), gloss('Certificate was issued by notified body'), source('celex:32024R1689/oj#art_36').

% Paragraph 1: Notifying authority notifies changes via electronic tool
must_notify(Auth, change_to_notification(Body, tool(electronic_notification))) :-
    notifying_authority(Auth),
    notified_body(Body).

% Paragraph 3: Cessation of conformity assessment activities
must_inform(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    cessation_decided(Body),
    notifying_authority(Authority),
    provider(Providers).

must_withdraw(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    cessation_decided(Body).

valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    cessation_decided(Body),
    responsibility_assumed(OtherBody, Cert),
    notified_body(OtherBody),
    Body \= OtherBody.

must_assess(OtherBody, full_assessment(Cert, within(months(9)))) :-
    notified_body(OtherBody),
    responsibility_assumed(OtherBody, Cert),
    certificate_issued_by(Cert, Body),
    cessation_decided(Body).

% Paragraph 4: Failure to meet requirements or obligations
must_investigate(Auth, failure_to_meet_requirements(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).

must_restrict(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).

must_suspend(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).

must_withdraw(Auth, designation(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    failure_to_meet_requirements(Body).

% Paragraph 5: Notified body informs providers within 10 days of change
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_suspended(Body).
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_restricted(Body).
must_inform(Body, providers(change_of_designation, within(days(10)))) :-
    notified_body(Body),
    designation_withdrawn(Body).

% Paragraph 6: Files kept and made available
must_provide(Auth, files(Body, to(market_surveillance_authorities))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).

% Paragraph 7: Impact assessment, reports, suspension/withdrawal of undue certificates
must_assess(Auth, impact_on_certificates(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).

must_report(Auth, findings(Body, within(months(3)))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).

must_require(Auth, withdraw_or_suspend_undue_certificates(Body)) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).

must_provide(Auth, national_competent_authorities(undue_certificates(Body))) :-
    notifying_authority(Auth),
    notified_body(Body),
    ( designation_restricted(Body)
    ; designation_suspended(Body)
    ; designation_withdrawn(Body)
    ).

% Paragraph 8: Validity when suspended or restricted (unless unduly issued)
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    notifying_authority(Auth),
    confirmation_no_risk(Auth, Cert).

valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    notifying_authority(Auth),
    confirmation_no_issuance_and_capability(Auth, Body).

valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    ( designation_suspended(Body) ; designation_restricted(Body) ),
    provider(P),
    confirmation_temporary_assumption(P, Cert).

% Paragraph 9: Validity when withdrawn (9 months, extendable)
valid_certificate(Cert) :-
    certificate_issued_by(Cert, Body),
    \+ unduly_issued(Cert),
    designation_withdrawn(Body),
    national_competent_authority(Auth),
    confirmation_no_risk(Auth, Cert),
    notified_body(OtherBody),
    Body \= OtherBody,
    responsibility_assumed(OtherBody, Cert).

provisional_validity_extension(Auth, extension(Cert, periods(months(3)), max(months(12)))) :-
    national_competent_authority(Auth),
    certificate_issued_by(Cert, Body),
    designation_withdrawn(Body),
    confirmation_no_risk(Auth, Cert),
    responsibility_assumed(_OtherBody, Cert).

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict/2, 'celex:32024R1689/oj#art_36').
provenance(must_suspend/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess/2, 'celex:32024R1689/oj#art_36').
provenance(must_require/2, 'celex:32024R1689/oj#art_36').
provenance(must_provide/2, 'celex:32024R1689/oj#art_36').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_36').
provenance(provisional_validity_extension/2, 'celex:32024R1689/oj#art_36').

% References
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_29').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_30').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_3').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_4').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_5').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_6').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_7').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_8').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_36', 'celex:32024R1689/oj#art_36/par_9/unp_1').
