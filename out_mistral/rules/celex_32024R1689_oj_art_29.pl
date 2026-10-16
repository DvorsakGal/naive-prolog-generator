% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : bdb529e2b714c4acebe9b653873a9079c28d0c432bef8572a21ee6db21cce79e
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application_for_notification/2, gloss('conformity assessment body must submit application for notification to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred application_for_notification_accompanied_by/2, gloss('application for notification is accompanied by required documents'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate_exists/1, gloss('accreditation certificate exists for conformity assessment body'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('conformity assessment body must provide documentary evidence when no accreditation certificate'), source('celex:32024R1689/oj#art_29').
:- pred may_use_existing_designations/1, gloss('notified body may use documents from other Union harmonisation legislation designations'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/1, gloss('notified body must update documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29').

must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).

application_for_notification_accompanied_by(Body, description(conformity_assessment_activities, Modules, Types)) :-
    conformity_assessment_body(Body),
    conformity_assessment_module(Modules),
    ai_system(Types).

application_for_notification_accompanied_by(Body, accreditation_certificate(Certificate)) :-
    conformity_assessment_body(Body),
    accreditation_certificate_exists(Body),
    issued_by(Certificate, national_accreditation_body),
    attests(Certificate, fulfils_requirements(Body, 'celex:32024R1689/oj#art_31')).

application_for_notification_accompanied_by(Body, valid_document(Designation)) :-
    conformity_assessment_body(Body),
    notified_body(Body),
    designation(Designation, Body, other_union_harmonisation_legislation).

must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_exists(Body),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).

may_use_existing_designations(Body) :-
    notified_body(Body),
    designation(Designation, Body, other_union_harmonisation_legislation).

must_update_documentation(Body) :-
    notified_body(Body),
    designated_under(Body, other_union_harmonisation_legislation).

established_in(Body, MemberState) :-
    conformity_assessment_body(Body),
    member_state(MemberState).

notifying_authority_of(Authority, MemberState) :-
    notifying_authority(Authority),
    member_state(MemberState).

conformity_assessment_module(Modules) :-
    list(Modules).

designation(Designation, Body, Legislation) :-
    notified_body(Body),
    union_harmonisation_legislation(Legislation).

designated_under(Body, Legislation) :-
    notified_body(Body),
    designation(_, Body, Legislation).

member_state(_).

list([]).
list([_|T]) :- list(T).

provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_for_notification_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_designations/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
