% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 6c54fba8dafb23b63979f77914ea4aec02d763bd5bc2664ae2b6954bc8df75c1
% cached     : False
% title      : Changes to notifications
:- pred must_notify_changes/2, gloss('notifying authority must notify Commission and Member States of relevant changes to notification'), source('celex:32024R1689/oj#art_36/par_1').
:- pred extension_of_scope_procedures_apply/1, gloss('procedures of Articles 29 and 30 apply to extension of scope'), source('celex:32024R1689/oj#art_36/par_2').
:- pred other_changes_procedures_apply/1, gloss('procedures of paragraphs 3-9 apply to changes other than extension of scope'), source('celex:32024R1689/oj#art_36/par_2').
:- pred must_inform_cessation/2, gloss('notified body must inform notifying authority and providers of cessation'), source('celex:32024R1689/oj#art_36/par_3').
:- pred certificates_remain_valid_after_cessation/1, gloss('certificates remain valid for nine months after cessation under conditions'), source('celex:32024R1689/oj#art_36/par_3').
:- pred must_withdraw_designation_on_cessation/2, gloss('notifying authority must withdraw designation when notified body ceases activity'), source('celex:32024R1689/oj#art_36/par_3').
:- pred must_investigate_noncompliance/2, gloss('notifying authority must investigate if notified body no longer meets requirements or fails obligations'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_inform_body_of_objections/2, gloss('notifying authority must inform notified body of objections and allow views'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_restrict_suspend_withdraw_designation/2, gloss('notifying authority must restrict, suspend or withdraw designation on conclusion of noncompliance'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_inform_commission_and_member_states_of_designation_change/2, gloss('notifying authority must immediately inform Commission and Member States of designation change'), source('celex:32024R1689/oj#art_36/par_4').
:- pred must_inform_providers_of_designation_change/2, gloss('notified body must inform providers within 10 days of designation suspension, restriction or withdrawal'), source('celex:32024R1689/oj#art_36/par_5').
:- pred must_preserve_and_make_available_files/2, gloss('notifying authority must keep files and make them available on request'), source('celex:32024R1689/oj#art_36/par_6').
:- pred must_assess_impact_on_certificates/2, gloss('notifying authority must assess impact on certificates issued by notified body'), source('celex:32024R1689/oj#art_36/par_7/a').
:- pred must_submit_findings_report/2, gloss('notifying authority must submit report on findings within three months'), source('celex:32024R1689/oj#art_36/par_7/b').
:- pred must_require_suspension_or_withdrawal_of_unduly_issued_certificates/2, gloss('notifying authority must require suspension or withdrawal of unduly issued certificates'), source('celex:32024R1689/oj#art_36/par_7/c').
:- pred must_inform_commission_and_member_states_of_required_suspension_or_withdrawal/2, gloss('notifying authority must inform Commission and Member States of required suspension or withdrawal of certificates'), source('celex:32024R1689/oj#art_36/par_7/d').
:- pred must_provide_relevant_information_to_national_competent_authority/2, gloss('notifying authority must provide relevant information to national competent authority'), source('celex:32024R1689/oj#art_36/par_7/e').
:- pred certificates_remain_valid_during_suspension_or_restriction/1, gloss('certificates remain valid during suspension or restriction under specified circumstances'), source('celex:32024R1689/oj#art_36/par_8').
:- pred certificates_remain_valid_after_withdrawal/1, gloss('certificates remain valid for nine months after withdrawal under specified circumstances'), source('celex:32024R1689/oj#art_36/par_9').
:- pred may_extend_provisional_validity/2, gloss('national competent authority may extend provisional validity of certificates'), source('celex:32024R1689/oj#art_36/par_9/unp_2').
:- pred must_immediately_inform_of_assumption_of_functions/2, gloss('national competent authority or notified body assuming functions must immediately inform'), source('celex:32024R1689/oj#art_36/par_9/unp_3').

% Paragraph 1
must_notify_changes(Authority, change(notification(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    relevant_change(notification(Body)).

relevant_change(notification(Body)) :-
    notified_body(Body).

% Paragraph 2
extension_of_scope_procedures_apply(change(notification(Body))) :-
    notified_body(Body),
    extension_of_scope(notification(Body)).

other_changes_procedures_apply(change(notification(Body))) :-
    notified_body(Body),
    \+ extension_of_scope(notification(Body)).

extension_of_scope(notification(_Body)). % placeholder: defined by context

% Paragraph 3
must_inform_cessation(Body, cessation(Authority, Providers)) :-
    notified_body(Body),
    decides_to_cease(Body),
    notifying_authority(Authority),
    findall(P, provider(P), Providers).

decides_to_cease(Body) :-
    notified_body(Body).

certificates_remain_valid_after_cessation(cessation(Body, AssumingBody)) :-
    notified_body(Body),
    notified_body(AssumingBody),
    Body \= AssumingBody,
    confirmed_in_writing(AssumingBody, assume_responsibilities(Body)).

must_withdraw_designation_on_cessation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activity(Body).

ceased_activity(Body) :-
    notified_body(Body).

% Paragraph 4
must_investigate_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider_noncompliance(Authority, Body).

sufficient_reason_to_consider_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body).

must_inform_body_of_objections(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_investigate_noncompliance(Authority, Body).

must_restrict_suspend_withdraw_designation(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    concludes_noncompliance(Authority, Body).

concludes_noncompliance(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body).

must_inform_commission_and_member_states_of_designation_change(Authority, change(designation(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_restrict_suspend_withdraw_designation(Authority, Body).

% Paragraph 5
must_inform_providers_of_designation_change(Body, change(designation(Body))) :-
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).

designation_suspended_restricted_or_withdrawn(Body) :-
    notified_body(Body).

% Paragraph 6
must_preserve_and_make_available_files(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

designation_restricted_suspended_or_withdrawn(Body) :-
    notified_body(Body).

% Paragraph 7
must_assess_impact_on_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

must_submit_findings_report(Authority, report(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

must_inform_commission_and_member_states_of_required_suspension_or_withdrawal(Authority, certificates(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body).

must_provide_relevant_information_to_national_competent_authority(Authority, information(certificates(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_require_suspension_or_withdrawal_of_unduly_issued_certificates(Authority, Body).

% Paragraph 8
certificates_remain_valid_during_suspension_or_restriction(certificates(Body)) :-
    notified_body(Body),
    designation_suspended_or_restricted(Body),
    \+ unduly_issued(certificates(Body)),
    (   confirmed_no_risk_and_timeline(Body)
    ;   confirmed_no_new_certificates_and_capability(Body)
    ).

designation_suspended_or_restricted(Body) :-
    notified_body(Body).

unduly_issued(certificates(_Body)). % placeholder

confirmed_no_risk_and_timeline(Body) :-
    notified_body(Body).

confirmed_no_new_certificates_and_capability(Body) :-
    notified_body(Body).

% Paragraph 9
certificates_remain_valid_after_withdrawal(certificates(Body)) :-
    notified_body(Body),
    designation_withdrawn(Body),
    \+ unduly_issued(certificates(Body)),
    confirmed_no_risk_by_national_competent_authority(Body),
    another_body_confirmed_immediate_responsibility(Body).

designation_withdrawn(Body) :-
    notified_body(Body).

confirmed_no_risk_by_national_competent_authority(Body) :-
    notified_body(Body).

another_body_confirmed_immediate_responsibility(Body) :-
    notified_body(Body).

may_extend_provisional_validity(Authority, certificates(Body)) :-
    national_competent_authority(Authority),
    notified_body(Body),
    certificates_remain_valid_after_withdrawal(certificates(Body)).

must_immediately_inform_of_assumption_of_functions(Informer, assumption(Body)) :-
    (   national_competent_authority(Informer)
    ;   notified_body(Informer)
    ),
    notified_body(Body),
    assumes_functions(Informer, Body).

assumes_functions(Informer, Body) :-
    (   national_competent_authority(Informer)
    ;   notified_body(Informer)
    ),
    notified_body(Body).

% Provenance
provenance(must_notify_changes/2, 'celex:32024R1689/oj#art_36/par_1').
provenance(extension_of_scope_procedures_apply/1, 'celex:32024R1689/oj#art_36/par_2').
provenance(other_changes_procedures_apply/1, 'celex:32024R1689/oj#art_36/par_2').
provenance(must_inform_cessation/2, 'celex:32024R1689/oj#art_36/par_3').
provenance(certificates_remain_valid_after_cessation/1, 'celex:32024R1689/oj#art_36/par_3').
provenance(must_withdraw_designation_on_cessation/2, 'celex:32024R1689/oj#art_36/par_3').
provenance(must_investigate_noncompliance/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_body_of_objections/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_restrict_suspend_withdraw_designation/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_commission_and_member_states_of_designation_change/2, 'celex:32024R1689/oj#art_36/par_4').
provenance(must_inform_providers_of_designation_change/2, 'celex:32024R1689/oj#art_36/par_5').
provenance(must_preserve_and_make_available_files/2, 'celex:32024R1689/oj#art_36/par_6').
provenance(must_assess_impact_on_certificates/2, 'celex:32024R1689/oj#art_36/par_7/a').
provenance(must_submit_findings_report/2, 'celex:32024R1689/oj#art_36/par_7/b').
provenance(must_require_suspension_or_withdrawal_of_unduly_issued_certificates/2, 'celex:32024R1689/oj#art_36/par_7/c').
provenance(must_inform_commission_and_member_states_of_required_suspension_or_withdrawal/2, 'celex:32024R1689/oj#art_36/par_7/d').
provenance(must_provide_relevant_information_to_national_competent_authority/2, 'celex:32024R1689/oj#art_36/par_7/e').
provenance(certificates_remain_valid_during_suspension_or_restriction/1, 'celex:32024R1689/oj#art_36/par_8').
provenance(certificates_remain_valid_after_withdrawal/1, 'celex:32024R1689/oj#art_36/par_9').
provenance(may_extend_provisional_validity/2, 'celex:32024R1689/oj#art_36/par_9/unp_2').
provenance(must_immediately_inform_of_assumption_of_functions/2, 'celex:32024R1689/oj#art_36/par_9/unp_3').

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
