% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 06ec892c5ba697e2a7188eccd64390e6a87520b8145483e1bbe62bd59746370b
% cached     : False
% title      : Changes to notifications
:- pred must_notify/2, gloss('notifying authority must notify about changes'), source('celex:32024R1689/oj#art_36').
:- pred must_inform/2, gloss('entity must inform another party'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate/2, gloss('notifying authority must investigate'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact/2, gloss('notifying authority must assess impact on certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report/2, gloss('notifying authority must submit report'), source('celex:32024R1689/oj#art_36').
:- pred must_require_certificate_action/2, gloss('notifying authority must require suspension or withdrawal of certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_keep_files/2, gloss('notifying authority must keep files of notified body'), source('celex:32024R1689/oj#art_36').
:- pred must_make_files_available/2, gloss('notifying authority must make files available to other authorities'), source('celex:32024R1689/oj#art_36').

% 1. Notification of changes
must_notify(Authority, change_notification(commission, other_member_states)) :-
    notifying_authority(Authority).

% 2. Notified body informs authority and providers when it ceases activities
must_inform(NotifiedBody, cessation_notice(Authority, Providers)) :-
    notified_body(NotifiedBody),
    notifying_authority(Authority),
    provider(Providers).

% 3. Notifying authority must investigate without delay
must_investigate(Authority, NotifiedBody) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

% 4. Notifying authority must inform notified body of objections and give it chance to comment
must_inform(Authority, objections_raised(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody).

% 5. When a designation is suspended, restricted or withdrawn, the notified body must inform providers within 10 days
must_inform(NotifiedBody, providers_concerned(within(days(10)))) :-
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).

% 6. Notifying authority must keep the files of the notified body concerned
must_keep_files(Authority, files_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).

% 7. Notifying authority must make those files available to other notifying authorities and market surveillance authorities on request
must_make_files_available(Authority, files_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).

% 8. Notifying authority must assess the impact on certificates issued by the notified body
must_assess_impact(Authority, certificates_of(NotifiedBody)) :-
    notifying_authority(Authority),
    notified_body(NotifiedBody),
    designation_changed(NotifiedBody, suspension;restriction;withdrawal).

% 9. Notifying authority must submit a report on its findings to the Commission and other Member States within three months
must_submit_report(Authority, report(findings, commission_and_member_states, within(months(3)))) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).

% 10. Notifying authority must require the notified body to suspend or withdraw any certificates unduly issued, within a reasonable period
must_require_certificate_action(Authority, suspend_or_withdraw(certificates_unduly_issued, reasonable_period)) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).

% 11. Notifying authority must inform the Commission and Member States about the certificates it has required to be suspended or withdrawn
must_inform(Authority, commission_and_member_states(certificates_suspended_or_withdrawn)) :-
    notifying_authority(Authority),
    designation_changed(_, suspension;restriction;withdrawal).

% 12. Notifying authority must provide the national competent authority of the provider’s Member State with relevant information about the certificates
must_inform(Authority, national_competent_authority(ProviderMemberState, certificate_information)) :-
    notifying_authority(Authority),
    provider(Provider),
    national_competent_authority(ProviderMemberState).

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/2, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/2, 'celex:32024R1689/oj#art_36').
provenance(must_require_certificate_action/2, 'celex:32024R1689/oj#art_36').
provenance(must_keep_files/2, 'celex:32024R1689/oj#art_36').
provenance(must_make_files_available/2, 'celex:32024R1689/oj#art_36').

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
