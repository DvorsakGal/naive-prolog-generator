% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ccac542892fe4791b13882fcc8a90c0615cd4c0b6430aead420e4210be96ddde
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('who is obliged to inform whom about what'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('who must protect confidentiality of what information'), source('celex:32024R1689/oj#art_45').

must_inform(B, notifying_authority(issued_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(issued_certificate(supplement(union_technical_documentation_assessment)))) :-
    notified_body(B).
must_inform(B, notifying_authority(issued_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(refused_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(restricted_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(suspended_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(withdrawn_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, notifying_authority(refused_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(restricted_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(suspended_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(withdrawn_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, notifying_authority(circumstances_affecting(scope_of_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(circumstances_affecting(conditions_for_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(request_for_information(market_surveillance_authority, conformity_assessment_activities))) :-
    notified_body(B).
must_inform(B, notifying_authority(conformity_assessment_activities(within_scope_of_notification))) :-
    notified_body(B).
must_inform(B, notifying_authority(other_activity_performed(including(cross_border_activities)))) :-
    notified_body(B).
must_inform(B, notifying_authority(other_activity_performed(including(subcontracting)))) :-
    notified_body(B).

must_inform(B, other_notified_bodies(refused_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(suspended_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(withdrawn_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_approval(quality_management_system))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(refused_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(withdrawn_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(suspended_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(restricted_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_certificate(union_technical_documentation_assessment))) :-
    notified_body(B).
must_inform(B, other_notified_bodies(issued_certificate(supplement(union_technical_documentation_assessment)))) :-
    notified_body(B).

must_inform(B, other_notified_bodies_carrying_out_similar_activities(negative_conformity_assessment_results)) :-
    notified_body(B),
    notified_body(B2),
    B \= B2,
    similar_conformity_assessment_activities(B, B2),
    covers_same_types_of_ai_systems(B, B2).
must_inform(B, other_notified_bodies_carrying_out_similar_activities(positive_conformity_assessment_results)) :-
    notified_body(B),
    notified_body(B2),
    B \= B2,
    similar_conformity_assessment_activities(B, B2),
    covers_same_types_of_ai_systems(B, B2).

must_safeguard_confidentiality(B, information_obtained) :-
    notified_body(B).

similar_conformity_assessment_activities(B1, B2) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    conformity_assessment_activity(A, B1),
    conformity_assessment_activity(A, B2).

covers_same_types_of_ai_systems(B1, B2) :-
    notified_body(B1),
    notified_body(B2),
    B1 \= B2,
    covers_ai_system_type(T, B1),
    covers_ai_system_type(T, B2).

conformity_assessment_activity(_A, _B).

covers_ai_system_type(_T, _B).

provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activities/2, 'celex:32024R1689/oj#art_45').
provenance(covers_same_types_of_ai_systems/2, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity/2, 'celex:32024R1689/oj#art_45').
provenance(covers_ai_system_type/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
