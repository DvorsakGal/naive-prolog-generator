% unit       : celex:32024R1689/oj#art_29
% title      : Application of a conformity assessment body for notification
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : gpt-oss:120b-cloud
% prompt sha : cb19e0ea111efc9111c8225d4cf9b6b2e6ca252a8ce275728ee5f1b6f40c78cb
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_submit_application/2, gloss('conformity assessment body must submit an application for notification to the notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_application_description/2, gloss('application must be accompanied by a description of conformity assessment activities, modules and AI system types'), source('celex:32024R1689/oj#art_29').
:- pred must_include_accreditation_certificate_when_available/2, gloss('application must include an accreditation certificate when one exists'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence_without_accreditation/2, gloss('when no accreditation certificate exists, the body must provide documentary evidence for verification and monitoring'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate_exists/1, gloss('accreditation certificate is available for the conformity assessment body'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate/1, gloss('accreditation certificate issued by a national accreditation body'), source('celex:32024R1689/oj#art_29').
:- pred permitted_use_of_existing_designation_documents/1, gloss('notified bodies designated under other Union legislation may use existing designation documents'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/1, gloss('designated notified bodies must update documentation whenever relevant changes occur'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_legislation/1, gloss('conformity assessment body is designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred changes_occur/1, gloss('relevant changes affecting the conformity assessment body have occurred'), source('celex:32024R1689/oj#art_29').

must_submit_application(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A).

must_provide_application_description(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A).

must_include_accreditation_certificate_when_available(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    accreditation_certificate_exists(B).

must_provide_documentary_evidence_without_accreditation(B, A) :-
    conformity_assessment_body(B),
    notifying_authority(A),
    \+ accreditation_certificate_exists(B).

accreditation_certificate_exists(B) :-
    accreditation_certificate(B).

permitted_use_of_existing_designation_documents(B) :-
    notified_body(B),
    designated_under_other_legislation(B).

must_update_documentation(B) :-
    notified_body(B),
    designated_under_other_legislation(B),
    changes_occur(B).

provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_application_description/2, 'celex:32024R1689/oj#art_29').
provenance(must_include_accreditation_certificate_when_available/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence_without_accreditation/2, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
