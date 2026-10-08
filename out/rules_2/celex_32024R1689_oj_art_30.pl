% unit       : celex:32024R1689/oj#art_30
% title      : Notification procedure
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : gpt-oss:120b-cloud
% prompt sha : f5d5410a6b232daabbb22d4ffd76a04bb8ba8a36122a1bbd903f3b9ec1d01bf1
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred permitted_notify/2, gloss('notifying authority may notify conformity assessment body that satisfies requirements'), source('celex:32024R1689/oj#art_30').
:- pred must_notify/2, gloss('notifying authority shall notify the Commission and other Member States of a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred required_notification_content/2, gloss('notification shall include full details of conformity assessment activities, modules, AI system types and competence attestation'), source('celex:32024R1689/oj#art_30').
:- pred required_provide_evidence/2, gloss('when no accreditation certificate, notifying authority shall provide documentary evidence of competence and monitoring'), source('celex:32024R1689/oj#art_30').
:- pred permitted_notified_body_activity/1, gloss('conformity assessment body may perform activities of a notified body where no objections are raised'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/2, gloss('Commission shall consult with Member States and conformity assessment body when objections are raised'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation/2, gloss('Commission shall decide whether authorisation is justified after objections'), source('celex:32024R1689/oj#art_30').

permitted_notify(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).

must_notify(Authority, commission_notification(Body)) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body).

required_notification_content(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body).

required_provide_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).

permitted_notified_body_activity(Body) :-
    conformity_assessment_body(Body),
    \+ objection_raised(Body).

must_consult(commission, Body) :-
    objection_raised(Body).

must_decide_authorisation(commission, Body) :-
    objection_raised(Body).

provenance(permitted_notify/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify/2, 'celex:32024R1689/oj#art_30').
provenance(required_notification_content/2, 'celex:32024R1689/oj#art_30').
provenance(required_provide_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_notified_body_activity/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/2, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
