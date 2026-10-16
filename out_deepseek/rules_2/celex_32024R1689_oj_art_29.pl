% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : 579c4aacb9ee101e34736faa4407dde8c626e4ebd804ecc4294036af75f59912
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application_for_notification/2, gloss('conformity assessment body must submit application for notification to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_description/1, gloss('application accompanied by description of activities, modules and AI system types'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_accreditation_certificate/1, gloss('application accompanied by accreditation certificate where one exists'), source('celex:32024R1689/oj#art_29').
:- pred application_includes_existing_designation_documents/1, gloss('application includes valid documents related to existing designations under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('conformity assessment body must provide documentary evidence for verification, recognition and monitoring'), source('celex:32024R1689/oj#art_29').
:- pred may_use_existing_designation_documents/1, gloss('notified body may use documents and certificates from other Union harmonisation legislation designations'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/1, gloss('notified body must update documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29').

must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).

application_accompanied_by_description(Application) :-
    offers_conformity_assessment_activities(Application).

application_accompanied_by_accreditation_certificate(Application) :-
    accreditation_certificate_exists(Application).

application_includes_existing_designation_documents(Application) :-
    existing_designation_documents_exist(Application).

must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_exists(Body),
    documentary_evidence_provided(Body, Authority).

may_use_existing_designation_documents(Body) :-
    notified_body(Body),
    designated_under_other_union_harmonisation_legislation(Body).

must_update_documentation(Body) :-
    notified_body(Body),
    relevant_changes_occur(Body).

% Supporting predicates
:- pred established_in_member_state/2, gloss('conformity assessment body established in the Member State of the notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate_exists/1, gloss('accreditation certificate issued by national accreditation body exists'), source('celex:32024R1689/oj#art_29').
:- pred existing_designation_documents_exist/1, gloss('valid documents related to existing designations under other Union harmonisation legislation exist'), source('celex:32024R1689/oj#art_29').
:- pred documentary_evidence_provided/2, gloss('documentary evidence necessary for verification, recognition and monitoring is provided'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_union_harmonisation_legislation/1, gloss('notified body designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred relevant_changes_occur/1, gloss('relevant changes occur to documentation'), source('celex:32024R1689/oj#art_29').

% Provenance
provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(application_includes_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').

% References
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
