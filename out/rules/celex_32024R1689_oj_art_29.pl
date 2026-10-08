% unit       : celex:32024R1689/oj#art_29
% title      : Application of a conformity assessment body for notification
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : gpt-oss:120b-cloud
% prompt sha : ecb506c6cb73426a08740f465e99a60fd7abd22fd8057882e6227a0a4d588bfb
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_submit_application/2, gloss('conformity assessment body must submit notification application to the appropriate authority'), source('celex:32024R1689/oj#art_29').
must_submit_application(Body, Authority) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in_member_state(Body, Authority).

:- pred required_accompanying_documents/1, gloss('application must be accompanied by description of activities, modules, AI system types and accreditation certificate if available'), source('celex:32024R1689/oj#art_29').
required_accompanying_documents(Body) :-
    must_submit_application(Body, _Authority).

:- pred accreditation_certificate_exists/1, gloss('accreditation certificate issued by a national accreditation body exists for the conformity assessment body'), source('celex:32024R1689/oj#art_29').

:- pred must_provide_accreditation_certificate/2, gloss('conformity assessment body must provide accreditation certificate when it exists'), source('celex:32024R1689/oj#art_29').
must_provide_accreditation_certificate(Body, Authority) :-
    must_submit_application(Body, Authority),
    accreditation_certificate_exists(Body).

:- pred must_provide_documentary_evidence/2, gloss('conformity assessment body must provide documentary evidence when accreditation certificate is not available'), source('celex:32024R1689/oj#art_29').
must_provide_documentary_evidence(Body, Authority) :-
    must_submit_application(Body, Authority),
    \+ accreditation_certificate_exists(Body).

:- pred required_designation_documents/1, gloss('application must include any valid documents related to existing designations under other Union legislation'), source('celex:32024R1689/oj#art_29').
required_designation_documents(Body) :-
    must_submit_application(Body, _Authority).

:- pred designated_under_other_legislation/1, gloss('conformity assessment body is designated under other Union harmonisation legislation'), source('celex:32024R1689/oj#art_29').

:- pred permitted_use_designation_documents/1, gloss('designated bodies may use documents and certificates linked to other designations to support their designation procedure'), source('celex:32024R1689/oj#art_29').
permitted_use_designation_documents(Body) :-
    designated_under_other_legislation(Body).

:- pred relevant_changes_occur/1, gloss('relevant changes occur affecting the documentation of the conformity assessment body'), source('celex:32024R1689/oj#art_29').

:- pred must_update_documentation/1, gloss('notified body shall update documentation whenever relevant changes occur'), source('celex:32024R1689/oj#art_29').
must_update_documentation(Body) :-
    must_submit_application(Body, _Authority),
    relevant_changes_occur(Body).

% Provenance for each head predicate
provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(required_accompanying_documents/1, 'celex:32024R1689/oj#art_29').
provenance(accreditation_certificate_exists/1, 'celex:32024R1689/oj#art_29').
provenance(must_provide_accreditation_certificate/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide_documentary_evidence/2, 'celex:32024R1689/oj#art_29').
provenance(required_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(designated_under_other_legislation/1, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(relevant_changes_occur/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/1, 'celex:32024R1689/oj#art_29').

% References
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
