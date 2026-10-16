% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c9368b074356a86fea4c0d6c9cbfc6acce71c087eac4996d8be17d758f5249e5
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application/2, gloss('conformity assessment body shall submit application for notification'), source('celex:32024R1689/oj#art_29/par_1').
:- pred application_for_notification/2, gloss('application for notification submitted by body to authority'), source('celex:32024R1689/oj#art_29/par_1').
:- pred must_accompany_application/2, gloss('application shall be accompanied by specified documentation'), source('celex:32024R1689/oj#art_29/par_2').
:- pred description_of_conformity_assessment_activities/1, gloss('description of conformity assessment activities'), source('celex:32024R1689/oj#art_29/par_2').
:- pred conformity_assessment_module/1, gloss('conformity assessment module or modules'), source('celex:32024R1689/oj#art_29/par_2').
:- pred types_of_ai_systems_for_competence/1, gloss('types of AI systems for which body claims competence'), source('celex:32024R1689/oj#art_29/par_2').
:- pred accreditation_certificate/1, gloss('accreditation certificate issued by national accreditation body'), source('celex:32024R1689/oj#art_29/par_2').
:- pred attests_fulfilment_of_art_31/1, gloss('accreditation certificate attests fulfilment of Article 31 requirements'), source('celex:32024R1689/oj#art_29/par_2').
:- pred valid_document_existing_designation/1, gloss('valid document related to existing designation under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29/par_2').
:- pred must_provide_documentary_evidence/2, gloss('body shall provide documentary evidence for verification of compliance'), source('celex:32024R1689/oj#art_29/par_3').
:- pred documentary_evidence_for_verification/1, gloss('documentary evidence necessary for verification, recognition and regular monitoring'), source('celex:32024R1689/oj#art_29/par_3').
:- pred may_use_designation_documents/2, gloss('documents and certificates from other designations may be used to support designation procedure'), source('celex:32024R1689/oj#art_29/par_4').
:- pred must_update_documentation/2, gloss('notified body shall update documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29/par_4').
:- pred relevant_changes_occurred/1, gloss('relevant changes to the body or its activities have occurred'), source('celex:32024R1689/oj#art_29/par_4').

must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MemberState),
    notifying_authority_of(Authority, MemberState).

application_for_notification(Body, Authority) :-
    must_submit_application(Body, Authority).

must_accompany_application(Body, documentation(Description, Modules, Types, CertificateOrDocuments)) :-
    application_for_notification(Body, _Authority),
    description_of_conformity_assessment_activities(Description),
    conformity_assessment_module(Modules),
    types_of_ai_systems_for_competence(Types),
    ( accreditation_certificate(Certificate), attests_fulfilment_of_art_31(Certificate)
    ; valid_document_existing_designation(Documents)
    ).

must_provide_documentary_evidence(Body, evidence(Verification, Recognition, Monitoring)) :-
    application_for_notification(Body, _Authority),
    \+ accreditation_certificate(_),
    documentary_evidence_for_verification(Verification),
    documentary_evidence_for_verification(Recognition),
    documentary_evidence_for_verification(Monitoring).

may_use_designation_documents(Body, documents(ExistingDesignations)) :-
    notified_body(Body),
    valid_document_existing_designation(ExistingDesignations).

must_update_documentation(Body, documentation(Art29_2, Art29_3)) :-
    notified_body(Body),
    relevant_changes_occurred(Body),
    ( documentation_for_art_29_2(Art29_2)
    ; documentation_for_art_29_3(Art29_3)
    ).

% Helper predicates for paragraph 4 structure
documentation_for_art_29_2(Doc) :-
    description_of_conformity_assessment_activities(Doc).
documentation_for_art_29_2(Doc) :-
    conformity_assessment_module(Doc).
documentation_for_art_29_2(Doc) :-
    types_of_ai_systems_for_competence(Doc).
documentation_for_art_29_2(Doc) :-
    accreditation_certificate(Doc).
documentation_for_art_29_2(Doc) :-
    valid_document_existing_designation(Doc).

documentation_for_art_29_3(Doc) :-
    documentary_evidence_for_verification(Doc).

% Provenance
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(must_accompany_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_designation_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

% References
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
