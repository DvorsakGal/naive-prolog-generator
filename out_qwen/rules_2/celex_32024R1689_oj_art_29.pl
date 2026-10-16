% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 5fee64a03017c35b05da538d2d9920e238c0d5f0f55b63ec9370283789cc2f54
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_notification_application/2, gloss('conformity assessment body must submit application for notification to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred notification_application_accompanied_by/2, gloss('application for notification is accompanied by required documentation'), source('celex:32024R1689/oj#art_29').
:- pred has_accreditation_certificate/1, gloss('conformity assessment body possesses valid accreditation certificate'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('body must provide documentary evidence when accreditation certificate unavailable'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_union_legislation/1, gloss('notified body designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/2, gloss('notified body must update documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29').

must_submit_notification_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).

notification_application_accompanied_by(Application, description(activities)) :-
    notification_application(Application).

notification_application_accompanied_by(Application, description(modules)) :-
    notification_application(Application).

notification_application_accompanied_by(Application, description(ai_system_types)) :-
    notification_application(Application).

notification_application_accompanied_by(Application, accreditation_certificate(Cert)) :-
    notification_application(Application),
    has_accreditation_certificate(Cert).

notification_application_accompanied_by(Application, existing_designation_documents) :-
    notification_application(Application),
    designated_under_other_union_legislation(_Body).

must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ has_accreditation_certificate(_Cert).

must_update_documentation(Body, Authority) :-
    notified_body(Body),
    notifying_authority(Authority),
    designated_under_other_union_legislation(Body),
    relevant_changes_occurred(Body).

provenance(must_submit_notification_application/2, 'celex:32024R1689/oj#art_29').
provenance(notification_application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
