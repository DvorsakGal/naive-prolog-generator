% unit       : celex:32024R1689/oj#art_29
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 4 Notifying authorities and notified bodies
% slice sha  : 05b8095b6a39926109010ff49f587d3dca82a99b2201fec183228b30ddb5838d
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : e4f967df1c918b4ac7633507d03ba8157c6540bc219e4f00d621cc6f427a3b75
% cached     : False
% title      : Application of a conformity assessment body for notification
:- pred established_in/2, gloss('conformity assessment body is established in member state'), source('celex:32024R1689/oj#art_29').
:- pred accreditation_certificate/1, gloss('accreditation certificate exists for conformity assessment body'), source('celex:32024R1689/oj#art_29').
:- pred relevant_change_occurs/1, gloss('relevant change occurs for conformity assessment body'), source('celex:32024R1689/oj#art_29').

must_submit_application(Body, application_for_notification(Authority)) :-
    conformity_assessment_body(Body),
    notifying_authority(Authority),
    established_in(Body, MS),
    member_state(MS).

must_provide(Body, description_of_conformity_assessment_activities) :-
    conformity_assessment_body(Body).

must_provide(Body, accreditation_certificate) :-
    conformity_assessment_body(Body),
    accreditation_certificate(Body).

must_provide(Body, documentary_evidence) :-
    conformity_assessment_body(Body),
    \+ accreditation_certificate(Body).

permitted_use_of_existing_designation_documents(Body) :-
    notified_body(Body).

must_update_documentation(Body, documentation_par_2_3) :-
    notified_body(Body),
    relevant_change_occurs(Body).

provenance(must_submit_application/2, 'celex:32024R1689/oj#art_29').
provenance(must_provide/2, 'celex:32024R1689/oj#art_29').
provenance(permitted_use_of_existing_designation_documents/1, 'celex:32024R1689/oj#art_29').
provenance(must_update_documentation/2, 'celex:32024R1689/oj#art_29').

references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_31').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_2').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj#art_29/par_3').
references('celex:32024R1689/oj#art_29', 'celex:32024R1689/oj').
