% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : d5e79a93d7f5c91986d6543423feb3e80d38d9eb9613b0d0677944c2f142379d
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('notified body must inform other notified bodies of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_relevant_information/2, gloss('notified body must provide relevant information on conformity assessment results to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred issued_union_technical_documentation_assessment_certificate/1, gloss('Union technical documentation assessment certificate issued'), source('celex:32024R1689/oj#art_45').
:- pred supplement_to_certificate/1, gloss('supplement to a certificate'), source('celex:32024R1689/oj#art_45').
:- pred quality_management_system_approval/1, gloss('quality management system approval issued'), source('celex:32024R1689/oj#art_45').
:- pred refused_certificate_or_approval/1, gloss('certificate or approval refused'), source('celex:32024R1689/oj#art_45').
:- pred restricted_certificate_or_approval/1, gloss('certificate or approval restricted'), source('celex:32024R1689/oj#art_45').
:- pred suspended_certificate_or_approval/1, gloss('certificate or approval suspended'), source('celex:32024R1689/oj#art_45').
:- pred withdrawn_certificate_or_approval/1, gloss('certificate or approval withdrawn'), source('celex:32024R1689/oj#art_45').
:- pred circumstances_affecting_notification/1, gloss('circumstances affecting scope of or conditions for notification'), source('celex:32024R1689/oj#art_45').
:- pred request_for_information_from_market_surveillance_authority/1, gloss('request for information received from market surveillance authorities regarding conformity assessment activities'), source('celex:32024R1689/oj#art_45').
:- pred conformity_assessment_activity_performed/1, gloss('conformity assessment activity performed within scope of notification'), source('celex:32024R1689/oj#art_45').
:- pred other_activity_performed/1, gloss('other activity performed including cross-border activities and subcontracting'), source('celex:32024R1689/oj#art_45').
:- pred similar_conformity_assessment_activities/2, gloss('two notified bodies carry out similar conformity assessment activities'), source('celex:32024R1689/oj#art_45').
:- pred same_types_of_ai_systems/2, gloss('two notified bodies cover same types of AI systems'), source('celex:32024R1689/oj#art_45').
:- pred negative_conformity_assessment_result/1, gloss('negative conformity assessment result'), source('celex:32024R1689/oj#art_45').
:- pred positive_conformity_assessment_result/1, gloss('positive conformity assessment result'), source('celex:32024R1689/oj#art_45').

must_inform_notifying_authority(B, issued_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B),
    certificate(C),
    issued_union_technical_documentation_assessment_certificate(C).

must_inform_notifying_authority(B, supplement_to_certificate(S)) :-
    notified_body(B),
    supplement_to_certificate(S).

must_inform_notifying_authority(B, quality_management_system_approval(A)) :-
    notified_body(B),
    quality_management_system_approval(A).

must_inform_notifying_authority(B, refused_certificate_or_approval(X)) :-
    notified_body(B),
    refused_certificate_or_approval(X).

must_inform_notifying_authority(B, restricted_certificate_or_approval(X)) :-
    notified_body(B),
    restricted_certificate_or_approval(X).

must_inform_notifying_authority(B, suspended_certificate_or_approval(X)) :-
    notified_body(B),
    suspended_certificate_or_approval(X).

must_inform_notifying_authority(B, withdrawn_certificate_or_approval(X)) :-
    notified_body(B),
    withdrawn_certificate_or_approval(X).

must_inform_notifying_authority(B, circumstances_affecting_notification(C)) :-
    notified_body(B),
    circumstances_affecting_notification(C).

must_inform_notifying_authority(B, request_for_information_from_market_surveillance_authority(R)) :-
    notified_body(B),
    request_for_information_from_market_surveillance_authority(R).

must_inform_notifying_authority(B, conformity_assessment_activity_performed(A)) :-
    notified_body(B),
    conformity_assessment_activity_performed(A).

must_inform_notifying_authority(B, other_activity_performed(A)) :-
    notified_body(B),
    other_activity_performed(A).

must_inform_other_notified_bodies(B1, refused_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    refused_certificate_or_approval(A).

must_inform_other_notified_bodies(B1, suspended_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    suspended_certificate_or_approval(A).

must_inform_other_notified_bodies(B1, withdrawn_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    withdrawn_certificate_or_approval(A).

must_inform_other_notified_bodies(B1, issued_quality_management_system_approval(A)) :-
    notified_body(B1),
    quality_management_system_approval(A),
    issued_union_technical_documentation_assessment_certificate(A).

must_inform_other_notified_bodies(B1, refused_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    refused_certificate_or_approval(C).

must_inform_other_notified_bodies(B1, withdrawn_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    withdrawn_certificate_or_approval(C).

must_inform_other_notified_bodies(B1, suspended_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    suspended_certificate_or_approval(C).

must_inform_other_notified_bodies(B1, restricted_union_technical_documentation_assessment_certificate(C)) :-
    notified_body(B1),
    certificate(C),
    restricted_certificate_or_approval(C).

must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    refused_certificate_or_approval(S).

must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    withdrawn_certificate_or_approval(S).

must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    suspended_certificate_or_approval(S).

must_inform_other_notified_bodies(B1, supplement_to_certificate(S)) :-
    notified_body(B1),
    supplement_to_certificate(S),
    restricted_certificate_or_approval(S).

must_inform_other_notified_bodies(B1, issued_certificate_or_supplement(X)) :-
    notified_body(B1),
    certificate(X),
    issued_union_technical_documentation_assessment_certificate(X).

must_inform_other_notified_bodies(B1, issued_certificate_or_supplement(S)) :-
    notified_body(B1),
    supplement_to_certificate(S).

must_provide_relevant_information(B1, negative_conformity_assessment_result(R)) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    similar_conformity_assessment_activities(B1, B2),
    same_types_of_ai_systems(B1, B2),
    negative_conformity_assessment_result(R).

must_provide_relevant_information(B1, positive_conformity_assessment_result(R)) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    similar_conformity_assessment_activities(B1, B2),
    same_types_of_ai_systems(B1, B2),
    positive_conformity_assessment_result(R).

must_treat_information_confidentially(B, information(obtained_by_notified_body)) :-
    notified_body(B).

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information/2, 'celex:32024R1689/oj#art_45').
provenance(issued_union_technical_documentation_assessment_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(quality_management_system_approval/1, 'celex:32024R1689/oj#art_45').
provenance(refused_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(restricted_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(suspended_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(withdrawn_certificate_or_approval/1, 'celex:32024R1689/oj#art_45').
provenance(circumstances_affecting_notification/1, 'celex:32024R1689/oj#art_45').
provenance(request_for_information_from_market_surveillance_authority/1, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity_performed/1, 'celex:32024R1689/oj#art_45').
provenance(other_activity_performed/1, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activities/2, 'celex:32024R1689/oj#art_45').
provenance(same_types_of_ai_systems/2, 'celex:32024R1689/oj#art_45').
provenance(negative_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(positive_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
