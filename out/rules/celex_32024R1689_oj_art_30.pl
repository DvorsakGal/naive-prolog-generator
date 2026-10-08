% unit       : celex:32024R1689/oj#art_30
% title      : Notification procedure
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 06bf1d0290588a34c6f7aeaed2499763b98dcf9bc4dc60542b8d5b12b3eedb34
% model      : gpt-oss:120b-cloud
% prompt sha : cdbf93893f5b990d5b246af84086501b7dc6a174148ec84d46c45ff603f6f36a
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred permitted_notify_conformity_assessment_body/2, gloss('permission for a notifying authority to notify a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify_commission/2, gloss('obligation of a notifying authority to notify the Commission about a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_notify_member_state/3, gloss('obligation of a notifying authority to notify a Member State about a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_provide_evidence/2, gloss('obligation of a notifying authority to provide documentary evidence when no accreditation certificate is present'), source('celex:32024R1689/oj#art_30').
:- pred accreditation_certificate/1, gloss('accreditation certificate confirming competence of a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred no_objection_within_two_weeks/1, gloss('no objection raised by the Commission or Member States within two weeks'), source('celex:32024R1689/oj#art_30').
:- pred no_objection_within_two_months/1, gloss('no objection raised by the Commission or Member States within two months'), source('celex:32024R1689/oj#art_30').
:- pred permitted_perform_notified_body_activities/1, gloss('permission for a conformity assessment body to perform the activities of a notified body'), source('celex:32024R1689/oj#art_30').
:- pred objection_raised/2, gloss('objection raised by the Commission or a Member State concerning a conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred must_consult/3, gloss('obligation of the Commission to consult with Member States and the conformity assessment body when an objection is raised'), source('celex:32024R1689/oj#art_30').
:- pred must_decide_authorisation/2, gloss('obligation of the Commission to decide whether authorisation is justified'), source('celex:32024R1689/oj#art_30').
:- pred must_address_decision/3, gloss('obligation of the Commission to address its decision to the concerned Member State and conformity assessment body'), source('celex:32024R1689/oj#art_30').
:- pred member_state/1, gloss('a Member State of the Union'), source('celex:32024R1689/oj#art_30').
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_30').

permitted_notify_conformity_assessment_body(Authority, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).

must_notify_commission(Authority, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).

must_notify_member_state(Authority, MemberState, Body) :-
    notifying_authority(Authority),
    notifying_authority(Authority),
    member_state(MemberState),
    member_state(MemberState),
    conformity_assessment_body(Body),
    requirements_satisfied(Body).

must_provide_evidence(Authority, Body) :-
    notifying_authority(Authority),
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).

permitted_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    accreditation_certificate(Body),
    no_objection_within_two_weeks(Body).

permitted_perform_notified_body_activities(Body) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body),
    no_objection_within_two_months(Body).

must_consult(Commission, MemberState, Body) :-
    objection_raised(Commission, Body),
    commission(Commission),
    member_state(MemberState),
    member_state(MemberState).

must_decide_authorisation(Commission, Body) :-
    objection_raised(Commission, Body),
    commission(Commission).

must_address_decision(Commission, MemberState, Body) :-
    objection_raised(Commission, Body),
    commission(Commission),
    member_state(MemberState),
    member_state(MemberState).

provenance(permitted_notify_conformity_assessment_body/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_30').
provenance(must_notify_member_state/3, 'celex:32024R1689/oj#art_30').
provenance(must_provide_evidence/2, 'celex:32024R1689/oj#art_30').
provenance(permitted_perform_notified_body_activities/1, 'celex:32024R1689/oj#art_30').
provenance(must_consult/3, 'celex:32024R1689/oj#art_30').
provenance(must_decide_authorisation/2, 'celex:32024R1689/oj#art_30').
provenance(must_address_decision/3, 'celex:32024R1689/oj#art_30').

references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_1').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_30/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_30', 'celex:32024R1689/oj#art_29/par_3').
