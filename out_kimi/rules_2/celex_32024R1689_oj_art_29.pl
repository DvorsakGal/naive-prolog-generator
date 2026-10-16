% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 44f04b3d779f2235d770128d105829c163c3e45eca2bc6f58a7ae9649c5d59ff
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_notification_application/2, gloss('conformity assessment body must submit application for notification to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by/2, gloss('application accompanied by specified documentation'), source('celex:32024R1689/oj#art_29').
:- pred description_of_conformity_assessment_activities/1, gloss('description of conformity assessment activities, modules, and AI system types'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate_attesting_compliance/2, gloss('accreditation certificate attesting compliance with Article 31 requirements'), source('celex:32024R1689/oj#art_29').
:- pred valid_document_related_to_designation/2, gloss('valid document related to existing designation under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('conformity assessment body must provide documentary evidence for verification of compliance'), source('celex:32024R1689/oj#art_29').
:- pred documentary_evidence_for_verification/2, gloss('documentary evidence necessary for verification, recognition and regular monitoring of compliance'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_union_harmonisation_legislation/1, gloss('notified body designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred may_use_existing_documents/2, gloss('notified body may use existing documents and certificates to support designation procedure'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/2, gloss('notified body must update documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29').
:- pred authority_responsible_for_notified_bodies/1, gloss('authority responsible for notified bodies'), source('celex:32024R1689/oj#art_29').

must_submit_notification_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_under_national_law(Body).

application_accompanied_by(Body, description_of_conformity_assessment_activities) :-
    must_submit_notification_application(Body, _Authority).

application_accompanied_by(Body, accreditation_certificate_attesting_compliance(Body, Certificate)) :-
    must_submit_notification_application(Body, _Authority),
    accreditation_certificate_attesting_compliance(Body, Certificate).

application_accompanied_by(Body, valid_document_related_to_designation(Body, Document)) :-
    must_submit_notification_application(Body, _Authority),
    valid_document_related_to_designation(Body, Document).

must_provide_documentary_evidence(Body, documentary_evidence_for_verification(Body, Evidence)) :-
    must_submit_notification_application(Body, _Authority),
    \+ accreditation_certificate_attesting_compliance(Body, _).

may_use_existing_documents(Body, Documents) :-
    notified_body(Body),
    designated_under_other_union_harmonisation_legislation(Body),
    valid_document_related_to_designation(Body, Documents).

must_update_documentation(Body, documentation_for_monitoring) :-
    notified_body(Body),
    relevant_changes_occur(Body),
    authority_responsible_for_notified_bodies(_Authority).

relevant_changes_occur(_Body). % Placeholder: actual changes are domain facts

provenance(must_submit_notification_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').
provenance(relevant_changes_occur/1, 'celex:32024R1689/oj#art_29').
provenance(authority_responsible_for_notified_bodies/1, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
