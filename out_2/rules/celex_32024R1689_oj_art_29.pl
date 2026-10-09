% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b4c9d39d0325d37b3a167ae981e2279d57892962e54116122bdd79aaa6f0f2b3
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred required_description_of_conformity_assessment_activities/1, gloss('description of conformity assessment activities required with application'), source('celex:32024R1689/oj#art_29').
:- pred required_accreditation_certificate/1, gloss('accreditation certificate required with application where it exists'), source('celex:32024R1689/oj#art_29').
:- pred required_designation_document/1, gloss('document related to existing designations to be added to application'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate/1, gloss('accreditation certificate held by a conformity assessment body'), source('celex:32024R1689/oj#art_29').
:- pred designated_under_other_legislation/1, gloss('conformity assessment body designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').

must_submit(Body, application_for_notification) :-
    conformity_assessment_body(Body).

required_description_of_conformity_assessment_activities(application_for_notification).

required_accreditation_certificate(application_for_notification).

required_designation_document(application_for_notification).

must_provide(Body, documentary_evidence_for_compliance) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).

permitted_use_of_designation_documents(Body) :-
    notified_body(Body),
    designated_under_other_legislation(Body).

must_update(Body, documentation_par_2_3) :-
    notified_body(Body),
    designated_under_other_legislation(Body).

provenance(must_submit/2, 'celex:32024R1689/oj#art_29').
provenance(required_description_of_conformity_assessment_activities/1, 'celex:32024R1689/oj#art_29').
provenance(required_accreditation_certificate/1, 'celex:32024R1689/oj#art_29').
provenance(required_designation_document/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
