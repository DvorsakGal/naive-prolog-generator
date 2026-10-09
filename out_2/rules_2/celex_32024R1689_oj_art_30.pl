% unit       : celex:32024R1689/oj#art_30
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : 340c36e692ecef0aa11503f4b41ad3848dd7707284ee67d186723fb0313c1b2d
% cached     : False
% title      : Notification procedure
:- pred based_on_accreditation_certificate/1, gloss('notification based on accreditation certificate'), source('celex:32024R1689/oj#art_30/par_3').
:- pred objection_raised/2, gloss('objection raised by authority concerning conformity assessment body'), source('celex:32024R1689/oj#art_30/par_4').

must_notify(NotifyingAuthority, notification(_Commission, _MemberStates, CAB)) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB),
    meets_requirements_art_31(CAB).

provenance(must_notify/2, 'celex:32024R1689/oj#art_30').

must_include_full_details(NotifyingAuthority, notification(CAB)) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB).

provenance(must_include_full_details/2, 'celex:32024R1689/oj#art_30').

must_provide_documentary_evidence(NotifyingAuthority, CAB) :-
    notifying_authority(NotifyingAuthority),
    conformity_assessment_body(CAB),
    \+ based_on_accreditation_certificate(CAB).

provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_30').

permitted_perform_notified_body_activities(CAB) :-
    conformity_assessment_body(CAB),
    \+ objection_raised(_, CAB).

provenance(permitted_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').

must_consult(Commission, consultation(CAB)) :-
    objection_raised(Commission, CAB).

provenance(must_consult/2, 'celex:32024R1689/oj#art_30').

must_decide_authorisation(Commission, CAB) :-
    objection_raised(Commission, CAB).

provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
