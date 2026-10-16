% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : b7bf6aaa38adca1578212b2e31a6d92bfc4a6bb9a73a8b57439a4ab3fd5b1492
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application_for_notification/2, gloss('conformity assessment body must submit application for notification to notifying authority of Member State where established'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_description/1, gloss('application for notification accompanied by description of conformity assessment activities, modules and types of AI systems'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_accreditation_certificate/1, gloss('application for notification accompanied by accreditation certificate where one exists'), source('celex:32024R1689/oj#art_29').
:- pred valid_document_related_to_existing_designation/1, gloss('valid document related to existing designations under other Union harmonisation legislation added to application'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('conformity assessment body must provide notifying authority with documentary evidence when no accreditation certificate'), source('celex:32024R1689/oj#art_29').
:- pred may_use_documents_to_support_designation/1, gloss('documents and certificates linked to designations under other Union harmonisation legislation may be used to support designation procedure'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/2, gloss('notified body must update documentation whenever relevant changes occur'), source('celex:32024R1689/oj#art_29').

must_submit_application_for_notification(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    member_state(M),
    established_in(B, M),
    notifying_authority_of(A, M).

application_accompanied_by_description(A) :-
    application_for_notification(A),
    description_of_conformity_assessment_activities(A),
    conformity_assessment_module(A),
    types_of_ai_systems(A).

application_accompanied_by_accreditation_certificate(A) :-
    application_for_notification(A),
    accreditation_certificate(C),
    issued_by_national_accreditation_body(C),
    attests_compliance_with_requirements(C, art_31_requirements).

valid_document_related_to_existing_designation(A) :-
    application_for_notification(A),
    valid_document(D),
    related_to_existing_designation(D),
    other_union_harmonisation_legislation(L),
    designated_under(B, L),
    conformity_assessment_body(B),
    application_for_notification_of(B, A).

must_provide_documentary_evidence(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    \+ accreditation_certificate(C),
    issued_by_national_accreditation_body(C),
    conformity_assessment_body(B),
    application_for_notification_of(B, A),
    documentary_evidence(E),
    necessary_for_verification(E),
    necessary_for_recognition(E),
    necessary_for_regular_monitoring(E),
    compliance_with_requirements(E, art_31_requirements).

may_use_documents_to_support_designation(B) :-
    notified_body(B),
    designated_under(B, L),
    other_union_harmonisation_legislation(L),
    documents_and_certificates(D),
    linked_to_designations(D, B),
    may_be_used_to_support(D, designation_procedure(B)).

must_update_documentation(B, A) :-
    notified_body(B),
    designated_under(B, L),
    other_union_harmonisation_legislation(L),
    authority_responsible_for_notified_bodies(A),
    documentation(D),
    referred_to_in(D, art_29_par_2),
    referred_to_in(D, art_29_par_3),
    relevant_changes_occur(C),
    update_documentation(B, D, C),
    enable_monitoring_and_verification(A, continuous_compliance(B, art_31_requirements)).

provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(valid_document_related_to_existing_designation/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_documents_to_support_designation/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
