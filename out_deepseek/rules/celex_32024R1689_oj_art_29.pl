% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8e79d1070c36d5701b90bcd54f36a3dbaab7f37b18b8a6bdd99865d98a0875dc
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application/2, gloss('conformity assessment body must submit application for notification to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by/2, gloss('application for notification must be accompanied by specified documentation'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('body without accreditation certificate must provide documentary evidence'), source('celex:32024R1689/oj#art_29').
:- pred may_use_designation_documents/2, gloss('notified body may use documents from other designations'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/2, gloss('notified body must update documentation on relevant changes'), source('celex:32024R1689/oj#art_29').

must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority).

application_accompanied_by(Application, Documentation) :-
    description_of_conformity_assessment_activities(Documentation),
    conformity_assessment_module(Documentation),
    types_of_ai_systems(Documentation),
    (   accreditation_certificate(Documentation)
    ;   true
    ),
    (   valid_document_existing_designations(Documentation)
    ;   true
    ).

must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ accreditation_certificate_provided(Body).

may_use_designation_documents(Body, Documents) :-
    notified_body(Body),
    designated_under_other_legislation(Body),
    documents_linked_to_designations(Documents).

must_update_documentation(Body, Documentation) :-
    notified_body(Body),
    relevant_changes_occurred(Body),
    documentation_referred_to(Documentation).

provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(may_use_designation_documents/2, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
