% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : dad464b4fdf8a0ebdf8e84df9b47d738af64af9589147ad8423290ea68857be2
% cached     : False
% title      : Notification procedure
:- pred must_notify_authority/2, gloss('notifying authority is obliged to notify object'), source('celex:32024R1689/oj#art_30').
:- pred notification_includes/2, gloss('notification contains required details'), source('celex:32024R1689/oj#art_30').
:- pred based_on_accreditation_certificate/1, gloss('notification relies on accreditation certificate'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/1, gloss('objection raised against notification'), source('celex:32024R1689/oj#art_30').
:- pred permitted_to_perform_notified_body_activities/1, gloss('conformity assessment body may act as notified body'), source('celex:32024R1689/oj#art_30').
:- pred must_provide_documentary_evidence/2, gloss('authority must provide evidence when no accreditation'), source('celex:32024R1689/oj#art_30').
:- pred must_enter_consultations/2, gloss('commission must consult regarding objections'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation_justified/2, gloss('commission must decide on authorisation'), source('celex:32024R1689/oj#art_30').

% Article 30(1): Notifying authorities may notify only bodies satisfying Art 31 requirements
must_notify_authority(A, conformity_assessment_body(B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    satisfies_article_31_requirements(B).

% Helper predicate for Art 31 compliance (defined here to support negation/scope)
satisfies_article_31_requirements(B) :-
    conformity_assessment_body(B).

% Article 30(2): Obligation to notify Commission and Member States via electronic tool
must_notify_authority(A, notification(commission_and_member_states, B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    satisfies_article_31_requirements(B).

% Article 30(3): Content requirements for notification
notification_includes(N, full_details(conformity_assessment_activities)) :-
    notification(N).
notification_includes(N, conformity_assessment_modules) :-
    notification(N).
notification_includes(N, types_of_ai_systems_concerned) :-
    notification(N).
notification_includes(N, attestation_of_competence) :-
    notification(N).

% Article 30(3): Documentary evidence requirement when no accreditation certificate
must_provide_documentary_evidence(A, competence_and_monitoring_arrangements(B)) :-
    notifying_authority(A),
    conformity_assessment_body(B),
    notification(N),
    \+ based_on_accreditation_certificate(N).

% Article 30(4): Permission to perform activities conditional on no objections within deadline
permitted_to_perform_notified_body_activities(B) :-
    conformity_assessment_body(B),
    notification(N),
    \+ objection_raised(N),
    notification_period_expired(N).

% Deadline logic for notification periods
notification_period_expired(N) :-
    based_on_accreditation_certificate(N),
    weeks_elapsed_since_notification(N, 2).

notification_period_expired(N) :-
    \+ based_on_accreditation_certificate(N),
    months_elapsed_since_notification(N, 2).

% Placeholder predicates for temporal checks (would be defined elsewhere or as facts)
weeks_elapsed_since_notification(_, _).
months_elapsed_since_notification(_, _).
notification(_).

% Article 30(5): Commission obligations when objections are raised
must_enter_consultations(commission, member_state_and_body(MS, B)) :-
    objection_raised(N),
    notification(N),
    member_state(MS),
    conformity_assessment_body(B).

must_decide_authorisation_justified(commission, authorisation(B)) :-
    objection_raised(N),
    notification(N),
    conformity_assessment_body(B).

% Provenance
provenance(must_notify_authority/2, 'celex:32024R1689/oj#art_30').
provenance(notification_includes/2, 'celex:32024R1689/oj#art_30').
provenance(based_on_accreditation_certificate/1, 'celex:32024R1689/oj#art_30').
provenance(objection_raised/1, 'celex:32024R1689/oj#art_30').
provenance(permitted_to_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(must_enter_consultations/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation_justified/2, 'celex:32024R1689/oj#art_30').

% References
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
