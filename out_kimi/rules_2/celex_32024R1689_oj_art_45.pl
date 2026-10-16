% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : d5f02b299009115e375570e42e310f311c384d50d1ff8d84ca13f3a22f79115f
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('notified body must inform other notified bodies of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_conformity_assessment_information/2, gloss('notified body must provide information on conformity assessment results to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('notified body must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

must_inform_notifying_authority(B, issued(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    issued_certificate(B, C).

must_inform_notifying_authority(B, issued(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    approved_quality_management_system(Q).

must_inform_notifying_authority(B, refused(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, refused(C)).

must_inform_notifying_authority(B, restricted(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, restricted(C)).

must_inform_notifying_authority(B, suspended(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, suspended(C)).

must_inform_notifying_authority(B, withdrawn(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, withdrawn(C)).

must_inform_notifying_authority(B, refused(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, refused(Q)).

must_inform_notifying_authority(B, restricted(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, restricted(Q)).

must_inform_notifying_authority(B, suspended(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, suspended(Q)).

must_inform_notifying_authority(B, withdrawn(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, withdrawn(Q)).

must_inform_notifying_authority(B, circumstances_affecting_notification) :-
    notified_body(B),
    circumstances_affecting_notification(B).

must_inform_notifying_authority(B, request_for_information(Authority, conformity_assessment_activity(A))) :-
    notified_body(B),
    market_surveillance_authority(Authority),
    reasoned_request(Authority, B),
    conformity_assessment_activity(A).

must_inform_notifying_authority(B, conformity_assessment_performed(A)) :-
    notified_body(B),
    request(B, notifying_authority),
    conformity_assessment_activity(A),
    within_scope_of_notification(A, B).

must_inform_notifying_authority(B, other_activity_performed(A)) :-
    notified_body(B),
    request(B, notifying_authority),
    activity(A),
    \+ conformity_assessment_activity(A),
    carried_out_by(B, A).

must_inform_other_notified_bodies(B, refused(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, refused(Q)).

must_inform_other_notified_bodies(B, suspended(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, suspended(Q)).

must_inform_other_notified_bodies(B, withdrawn(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    action_taken(B, withdrawn(Q)).

must_inform_other_notified_bodies(B, issued(approved_quality_management_system(Q))) :-
    notified_body(B),
    quality_management_system(Q),
    approved_quality_management_system(Q),
    request(B, other_notified_body).

must_inform_other_notified_bodies(B, refused(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, refused(C)).

must_inform_other_notified_bodies(B, withdrawn(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, withdrawn(C)).

must_inform_other_notified_bodies(B, suspended(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, suspended(C)).

must_inform_other_notified_bodies(B, restricted(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    action_taken(B, restricted(C)).

must_inform_other_notified_bodies(B, issued(certificate_supplement(C))) :-
    notified_body(B),
    certificate_supplement(C),
    issued_certificate(B, C),
    request(B, other_notified_body).

must_provide_conformity_assessment_information(B, negative_result(Issue)) :-
    notified_body(B),
    other_notified_body(Other),
    similar_conformity_assessment(B, Other),
    same_types_of_ai_systems(B, Other),
    issue(Issue),
    negative_conformity_assessment_result(B, Issue).

must_provide_conformity_assessment_information(B, positive_result(Issue)) :-
    notified_body(B),
    other_notified_body(Other),
    similar_conformity_assessment(B, Other),
    same_types_of_ai_systems(B, Other),
    issue(Issue),
    positive_conformity_assessment_result(B, Issue),
    request(Other, B).

must_safeguard_confidentiality(B, Information) :-
    notified_body(B),
    obtained_information(B, Information).

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_conformity_assessment_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
