% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a3eb778ccbf89c0fcafacc5937abff929f57ec6d08f4a4c082d54cb76491f4f6
% cached     : False
% title      : Changes to notifications
:- pred must_notify(any, any), gloss('Actor must notify an entity or authority of an event or change'), source('celex:32024R1689/oj#art_36').
:- pred extension_of_scope(any), gloss('Change to notification that extends its scope'), source('celex:32024R1689/oj#art_36').
:- pred procedure_applies(any, any), gloss('Applicable procedure or rules for a circumstance'), source('celex:32024R1689/oj#art_36').
:- pred decides_cessation(any), gloss('Notified body decides to cease conformity assessment activities'), source('celex:32024R1689/oj#art_36').
:- pred planned_cessation(any), gloss('Planned cessation of conformity assessment activities'), source('celex:32024R1689/oj#art_36').
:- pred must_inform(any, any), gloss('Actor must inform another party about an event or status'), source('celex:32024R1689/oj#art_36').
:- pred valid_certificate(any), gloss('Certificate issued by a notified body remains valid'), source('celex:32024R1689/oj#art_36').
:- pred confirmed_assumption_of_responsibility(any, any), gloss('Another notified body has confirmed assuming responsibility for AI systems covered by certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_complete_assessment(any, any), gloss('Notified body must complete full assessment of systems within a timeframe'), source('celex:32024R1689/oj#art_36').
:- pred has_ceased_activity(any), gloss('Notified body has ceased activity'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw(any, any), gloss('Authority must withdraw designation or certificate'), source('celex:32024R1689/oj#art_36').
:- pred reason_no_longer_meets_requirements(any, any), gloss('Notifying authority considers a notified body no longer meets requirements or obligations'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate(any, any), gloss('Authority must investigate a notified body'), source('celex:32024R1689/oj#art_36').
:- pred failure_established(any, any), gloss('Failure to meet requirements or fulfil obligations is established'), source('celex:32024R1689/oj#art_36').
:- pred must_restrict_suspend_or_withdraw(any, any), gloss('Authority must restrict, suspend, or withdraw designation'), source('celex:32024R1689/oj#art_36').
:- pred designation_suspended(any), gloss('Designation of notified body has been suspended'), source('celex:32024R1689/oj#art_36').
:- pred designation_restricted(any), gloss('Designation of notified body has been restricted'), source('celex:32024R1689/oj#art_36').
:- pred designation_withdrawn(any), gloss('Designation of notified body has been withdrawn fully or partially'), source('celex:32024R1689/oj#art_36').
:- pred designation_affected(any), gloss('Designation has been restricted, suspended, or withdrawn'), source('celex:32024R1689/oj#art_36').
:- pred must_preserve_and_share_files(any, any), gloss('Authority must keep and make available files of notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact(any, any), gloss('Authority must assess impact on certificates issued'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report(any, any), gloss('Authority must submit report on findings'), source('celex:32024R1689/oj#art_36').
:- pred must_require_action(any, any), gloss('Authority must require notified body to suspend or withdraw undue certificates'), source('celex:32024R1689/oj#art_36').
:- pred unduly_issued(any), gloss('Certificate was unduly issued'), source('celex:32024R1689/oj#art_36').
:- pred confirmed_no_risk(any, any), gloss('Authority confirmed there is no risk to health, safety or fundamental rights'), source('celex:32024R1689/oj#art_36').
:- pred outlined_remedy_timeline(any, any), gloss('Authority outlined a timeline for actions to remedy suspension or restriction'), source('celex:32024R1689/oj#art_36').
:- pred confirmed_no_new_certificates(any, any), gloss('Authority confirmed no certificates will be issued during suspension'), source('celex:32024R1689/oj#art_36').
:- pred capable_of_monitoring(any), gloss('Notified body capable of monitoring existing certificates'), source('celex:32024R1689/oj#art_36').
:- pred confirmed_temporary_assumption(any, any), gloss('Provider confirmed another notified body assumes functions temporarily'), source('celex:32024R1689/oj#art_36').
:- pred permitted_extension(any, any), gloss('Authority may extend provisional validity of certificates'), source('celex:32024R1689/oj#art_36').

% Paragraph 1: Notification of relevant changes
must_notify(Authority, changes(Body)) :-
    notifying_authority(Authority),
    notified_body(Body).

% Paragraph 2: Extension of scope vs other changes
procedure_applies(articles_29_and_30, Change) :-
    extension_of_scope(Change).

procedure_applies(article_36_paragraphs_3_to_9, Change) :-
    \+ extension_of_scope(Change).

% Paragraph 3: Cessation of activities
must_inform(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    decides_cessation(Body),
    notifying_authority(Authority),
    provider(Providers).

must_inform(Body, planned_cessation(Authority, Providers, at_least(years(1)))) :-
    notified_body(Body),
    decides_cessation(Body),
    planned_cessation(Body),
    notifying_authority(Authority),
    provider(Providers).

valid_certificate(Cert) :-
    decides_cessation(Body),
    confirmed_assumption_of_responsibility(OtherBody, Cert),
    notified_body(OtherBody),
    OtherBody \= Body.

must_complete_assessment(OtherBody, assessment(Systems, within(months(9)))) :-
    notified_body(OtherBody),
    confirmed_assumption_of_responsibility(OtherBody, certificates_for(Systems)).

must_withdraw(Authority, designation(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    has_ceased_activity(Body).

% Paragraph 4: Investigation and measures upon non-fulfilment
must_investigate(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    reason_no_longer_meets_requirements(Authority, Body).

must_inform(Authority, objections_and_hearing(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    reason_no_longer_meets_requirements(Authority, Body).

must_restrict_suspend_or_withdraw(Authority, designation(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    failure_established(Authority, Body).

must_inform(Authority, designation_change(Body, commission_and_member_states)) :-
    notifying_authority(Authority),
    notified_body(Body),
    failure_established(Authority, Body).

% Paragraph 5: Notified body informing providers within 10 days
must_inform(Body, designation_change(Providers, within(days(10)))) :-
    notified_body(Body),
    provider(Providers),
    designation_affected(Body).

designation_affected(Body) :- designation_suspended(Body).
designation_affected(Body) :- designation_restricted(Body).
designation_affected(Body) :- designation_withdrawn(Body).

% Paragraph 6: Record keeping and access
must_preserve_and_share_files(Authority, files(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).

% Paragraph 7: Obligations of notifying authority upon restriction/suspension/withdrawal
must_assess_impact(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).

must_submit_report(Authority, findings(Body, within(months(3)))) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).

must_require_action(Authority, suspend_or_withdraw(Cert)) :-
    notifying_authority(Authority),
    unduly_issued(Cert).

must_inform(Authority, required_certificate_actions(commission_and_member_states)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_affected(Body).

must_inform(Authority, required_certificate_actions(national_competent_authority(ProviderState))) :-
    notifying_authority(Authority),
    national_competent_authority(ProviderState),
    notified_body(Body),
    designation_affected(Body).

% Paragraph 8: Validity of certificates during suspension or restriction
valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_risk(Authority, Cert),
    outlined_remedy_timeline(Authority, Body),
    notifying_authority(Authority).

valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_new_certificates(Authority, Body),
    capable_of_monitoring(Body),
    notifying_authority(Authority).

valid_certificate(Cert) :-
    (designation_suspended(Body) ; designation_restricted(Body)),
    \+ unduly_issued(Cert),
    confirmed_no_new_certificates(Authority, Body),
    \+ capable_of_monitoring(Body),
    confirmed_temporary_assumption(Provider, Cert),
    provider(Provider),
    notifying_authority(Authority).

% Paragraph 9: Validity of certificates upon withdrawal
valid_certificate(Cert) :-
    designation_withdrawn(Body),
    \+ unduly_issued(Cert),
    confirmed_no_risk(NationalAuthority, Cert),
    national_competent_authority(NationalAuthority),
    confirmed_assumption_of_responsibility(OtherBody, Cert),
    notified_body(OtherBody),
    OtherBody \= Body.

permitted_extension(NationalAuthority, extension(Cert, additional_periods(months(3)), max(months(12)))) :-
    national_competent_authority(NationalAuthority),
    designation_withdrawn(Body),
    \+ unduly_issued(Cert),
    confirmed_no_risk(NationalAuthority, Cert).

must_inform(Actor, assumption_of_functions(commission_member_states_and_notified_bodies)) :-
    (national_competent_authority(Actor) ; notified_body(Actor)).

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(procedure_applies/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(valid_certificate/1, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_suspend_or_withdraw/2, 'celex:32024R1689/oj#art_36').
provenance(designation_affected/1, 'celex:32024R1689/oj#art_36').
provenance(must_preserve_and_share_files/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_action/2, 'celex:32024R1689/oj#art_36').
provenance(permitted_extension/2, 'celex:32024R1689/oj#art_36').

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
