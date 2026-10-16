% unit       : celex:32024R1689/oj#art_36
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : a45c39f5a67bdbfd929ceca8f085e31c28bfb513877bcb04e2cf2064bc1c7144
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ac9cb3bb01ca7934443f3e89dfeb5416d972be4fc85d1a8db555f02fe32fd55e
% cached     : False
% title      : Changes to notifications
:- pred must_notify/2, gloss('entity must notify another entity of something'), source('celex:32024R1689/oj#art_36').
:- pred must_inform/2, gloss('entity must inform another entity of something'), source('celex:32024R1689/oj#art_36').
:- pred must_cease/1, gloss('entity must cease its activities'), source('celex:32024R1689/oj#art_36').
:- pred must_investigate/1, gloss('entity must investigate a matter'), source('celex:32024R1689/oj#art_36').
:- pred must_restrict_designation/1, gloss('entity must restrict a designation'), source('celex:32024R1689/oj#art_36').
:- pred must_suspend_designation/1, gloss('entity must suspend a designation'), source('celex:32024R1689/oj#art_36').
:- pred must_withdraw_designation/1, gloss('entity must withdraw a designation'), source('celex:32024R1689/oj#art_36').
:- pred must_take_steps/1, gloss('entity must take appropriate steps'), source('celex:32024R1689/oj#art_36').
:- pred must_assess_impact/1, gloss('entity must assess the impact on certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_submit_report/1, gloss('entity must submit a report'), source('celex:32024R1689/oj#art_36').
:- pred must_require_suspension_or_withdrawal/2, gloss('entity must require another to suspend or withdraw certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_inform_of_required_suspension_or_withdrawal/1, gloss('entity must inform about required suspension or withdrawal'), source('celex:32024R1689/oj#art_36').
:- pred must_provide_information/2, gloss('entity must provide information to another'), source('celex:32024R1689/oj#art_36').
:- pred must_take_appropriate_measures/1, gloss('entity must take appropriate measures'), source('celex:32024R1689/oj#art_36').
:- pred must_confirm/2, gloss('entity must confirm something'), source('celex:32024R1689/oj#art_36').
:- pred must_outline_timeline/1, gloss('entity must outline a timeline for actions'), source('celex:32024R1689/oj#art_36').
:- pred must_state_capability/2, gloss('entity must state capability of another'), source('celex:32024R1689/oj#art_36').
:- pred must_assume_responsibility/2, gloss('entity must assume responsibility for certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_complete_assessment/2, gloss('entity must complete assessment of systems'), source('celex:32024R1689/oj#art_36').
:- pred may_remain_valid/2, gloss('certificates may remain valid under conditions'), source('celex:32024R1689/oj#art_36').
:- pred may_extend_validity/2, gloss('authority may extend validity of certificates'), source('celex:32024R1689/oj#art_36').
:- pred must_immediately_inform/2, gloss('entity must immediately inform others'), source('celex:32024R1689/oj#art_36').

% Paragraph 1
must_notify(Authority, relevant_change(notification(Body))) :-
    notifying_authority(Authority),
    notified_body(Body).

% Paragraph 2
extension_of_scope_applies(Change) :-
    extension_of_scope(Change).

other_change_applies(Change) :-
    \+ extension_of_scope(Change).

% Paragraph 3
must_inform(Body, cessation(planned)) :-
    notified_body(Body),
    planned_cessation(Body).

must_inform(Body, cessation(unplanned)) :-
    notified_body(Body),
    \+ planned_cessation(Body).

must_inform(Body, providers_concerned) :-
    notified_body(Body),
    must_cease(Body).

must_cease(Body) :-
    notified_body(Body),
    decides_to_cease(Body).

may_remain_valid(Certificate, period(months(9), after(cessation(Body)))) :-
    certificate_of(Certificate, Body),
    notified_body(Body),
    must_cease(Body),
    another_body_assumes_responsibility(OtherBody, Certificate),
    confirmed_in_writing(OtherBody, assume_responsibility(Certificate)).

must_complete_assessment(OtherBody, systems_affected(Body)) :-
    another_body_assumes_responsibility(OtherBody, _),
    notified_body(Body),
    must_cease(Body).

must_withdraw_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    ceased_activity(Body).

% Paragraph 4
must_investigate(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    sufficient_reason_to_consider(Authority, Body, no_longer_meets_requirements_or_failing_obligations).

must_inform(Authority, objections_raised(Body)) :-
    notifying_authority(Authority),
    notified_body(Body),
    must_investigate(Authority).

must_restrict_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    restriction_appropriate(Authority, Body).

must_suspend_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    suspension_appropriate(Authority, Body).

must_withdraw_designation(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    concluded_no_longer_meets_or_failing(Authority, Body),
    withdrawal_appropriate(Authority, Body).

must_immediately_inform(Authority, commission_and_member_states(designation_change(Body))) :-
    notifying_authority(Authority),
    notified_body(Body),
    ( must_restrict_designation(Authority)
    ; must_suspend_designation(Authority)
    ; must_withdraw_designation(Authority) ).

% Paragraph 5
must_inform(Body, providers_concerned(designation_change)) :-
    notified_body(Body),
    designation_suspended_restricted_or_withdrawn(Body).

% Paragraph 6
must_take_steps(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

% Paragraph 7
must_assess_impact(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

must_submit_report(Authority) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body).

must_require_suspension_or_withdrawal(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    designation_restricted_suspended_or_withdrawn(Body),
    unduly_issued_certificates_exist(Body).

must_inform_of_required_suspension_or_withdrawal(Authority) :-
    notifying_authority(Authority),
    must_require_suspension_or_withdrawal(Authority, _).

must_provide_information(Authority, national_competent_authorities(ProviderState)) :-
    notifying_authority(Authority),
    must_require_suspension_or_withdrawal(Authority, _),
    provider_registered_in(Provider, ProviderState),
    provider(Provider).

must_take_appropriate_measures(NationalAuthority) :-
    national_competent_authority(NationalAuthority),
    must_provide_information(_, national_competent_authorities(NationalAuthority)).

% Paragraph 8
certificates_remain_valid_under_suspension_or_restriction(Certificate) :-
    designation_suspended_or_restricted(_),
    \+ unduly_issued(Certificate),
    ( confirmed_no_risk_and_timeline_outlined(_)
    ; confirmed_no_new_certificates_and_capability_stated(_) ).

must_confirm(Authority, no_risk_to_health_safety_or_fundamental_rights) :-
    notifying_authority(Authority),
    designation_suspended_or_restricted(Authority),
    confirmed_no_risk_and_timeline_outlined(Authority).

must_outline_timeline(Authority) :-
    notifying_authority(Authority),
    confirmed_no_risk_and_timeline_outlined(Authority).

must_confirm(Authority, no_certificates_relevant_to_suspension) :-
    notifying_authority(Authority),
    designation_suspended_or_restricted(Authority),
    confirmed_no_new_certificates_and_capability_stated(Authority).

must_state_capability(Authority, Body) :-
    notifying_authority(Authority),
    notified_body(Body),
    confirmed_no_new_certificates_and_capability_stated(Authority).

must_confirm(Provider, another_qualified_body_assumes_functions(Body)) :-
    provider(Provider),
    notified_body(Body),
    notifying_authority_determines_no_capability(_, Body).

% Paragraph 9
certificates_remain_valid_under_withdrawal(Certificate) :-
    designation_withdrawn(_),
    \+ unduly_issued(Certificate),
    confirmed_no_risk_by_national_authority(_),
    another_body_confirms_immediate_responsibility(_).

must_confirm(NationalAuthority, no_risk_to_health_safety_or_fundamental_rights) :-
    national_competent_authority(NationalAuthority),
    designation_withdrawn(_),
    provider_registered_in(_, NationalAuthority).

must_assume_responsibility(OtherBody, immediate(ai_systems_affected(Body))) :-
    notified_body(OtherBody),
    notified_body(Body),
    designation_withdrawn(Body).

must_complete_assessment(OtherBody, ai_systems_affected(Body)) :-
    notified_body(OtherBody),
    notified_body(Body),
    designation_withdrawn(Body),
    must_assume_responsibility(OtherBody, immediate(ai_systems_affected(Body))).

may_extend_validity(NationalAuthority, period(months(3), additional)) :-
    national_competent_authority(NationalAuthority),
    certificates_remain_valid_under_withdrawal(_).

must_immediately_inform(Entity, commission_member_states_and_other_bodies(change_of_designation)) :-
    ( national_competent_authority(Entity)
    ; notified_body(Entity) ),
    designation_change_affected(Entity).

% Provenance
provenance(must_notify/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform/2, 'celex:32024R1689/oj#art_36').
provenance(must_cease/1, 'celex:32024R1689/oj#art_36').
provenance(must_investigate/1, 'celex:32024R1689/oj#art_36').
provenance(must_restrict_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_suspend_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_withdraw_designation/1, 'celex:32024R1689/oj#art_36').
provenance(must_take_steps/1, 'celex:32024R1689/oj#art_36').
provenance(must_assess_impact/1, 'celex:32024R1689/oj#art_36').
provenance(must_submit_report/1, 'celex:32024R1689/oj#art_36').
provenance(must_require_suspension_or_withdrawal/2, 'celex:32024R1689/oj#art_36').
provenance(must_inform_of_required_suspension_or_withdrawal/1, 'celex:32024R1689/oj#art_36').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_36').
provenance(must_take_appropriate_measures/1, 'celex:32024R1689/oj#art_36').
provenance(must_confirm/2, 'celex:32024R1689/oj#art_36').
provenance(must_outline_timeline/1, 'celex:32024R1689/oj#art_36').
provenance(must_state_capability/2, 'celex:32024R1689/oj#art_36').
provenance(must_assume_responsibility/2, 'celex:32024R1689/oj#art_36').
provenance(must_complete_assessment/2, 'celex:32024R1689/oj#art_36').
provenance(may_remain_valid/2, 'celex:32024R1689/oj#art_36').
provenance(may_extend_validity/2, 'celex:32024R1689/oj#art_36').
provenance(must_immediately_inform/2, 'celex:32024R1689/oj#art_36').

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
