% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : d829930dab39aebc5a4205ae7884a075bbc507e022e2edb39c0ded6e0c80a9cb
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred must_submit_application_for_notification/2, gloss('conformity assessment body submits application to notifying authority'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_description/1, gloss('application includes description of activities, modules and AI system types'), source('celex:32024R1689/oj#art_29').
:- pred application_accompanied_by_accreditation_certificate/1, gloss('application includes accreditation certificate attesting compliance with Article 31'), source('celex:32024R1689/oj#art_29').
:- pred has_accreditation_certificate/1, gloss('conformity assessment body possesses an accreditation certificate'), source('celex:32024R1689/oj#art_29').
:- pred must_provide_documentary_evidence/2, gloss('body provides evidence for verification when no accreditation certificate exists'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_union_legislation/1, gloss('notified body designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').
:- pred may_use_existing_documents/1, gloss('documents from other designations may support designation procedure'), source('celex:32024R1689/oj#art_29').
:- pred must_update_documentation/2, gloss('notified body updates documentation when relevant changes occur'), source('celex:32024R1689/oj#art_29').

must_submit_application_for_notification(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).

application_accompanied_by_description(Application) :-
    describes_conformity_assessment_activities(Application),
    describes_conformity_assessment_modules(Application),
    describes_ai_system_types(Application).

application_accompanied_by_accreditation_certificate(Application) :-
    has_accreditation_certificate(Application),
    issued_by_national_accreditation_body(Application),
    attests_compliance_with_article_31(Application).

must_provide_documentary_evidence(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    \+ has_accreditation_certificate(Body),
    evidence_necessary_for_verification(Body, Authority).

may_use_existing_documents(Body) :-
    notified_body(Body),
    designated_under_other_union_legislation(Body).

must_update_documentation(Body, Documentation) :-
    notified_body(Body),
    designated_under_other_union_legislation(Body),
    relevant_changes_occurred(Documentation),
    enables_continuous_compliance_monitoring(Documentation).

provenance(must_submit_application_for_notification/2, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_description/1, 'celex:32024R1689/oj#art_29').
provenance(application_accompanied_by_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(has_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_union_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(may_use_existing_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
