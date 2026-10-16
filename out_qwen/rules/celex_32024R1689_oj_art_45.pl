% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : c92687e0b22d73d21983fdfb0bdfe825b9679d6692e8dc665df224034b5c9341
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority of specific matters'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('notified body must inform other notified bodies of specific matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_relevant_information_to_similar_bodies/2, gloss('notified body must provide relevant information to similar notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('notified body must safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

must_inform_notifying_authority(Body, issued_certificate(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C).

must_inform_notifying_authority(Body, issued_supplement(S)) :-
    notified_body(Body),
    supplement_to_certificate(S).

must_inform_notifying_authority(Body, issued_approval(A)) :-
    notified_body(Body),
    quality_management_system_approval(A).

must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(refusal, C).

must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(restriction, C).

must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(suspension, C).

must_inform_notifying_authority(Body, refusal_or_restriction(C)) :-
    notified_body(Body),
    certificate_or_approval_action(withdrawal, C).

must_inform_notifying_authority(Body, circumstances_affecting_notification(C)) :-
    notified_body(Body),
    affects_scope_or_conditions_of_notification(C).

must_inform_notifying_authority(Body, request_from_msa(R)) :-
    notified_body(Body),
    market_surveillance_authority_request(R).

must_inform_notifying_authority(Body, conformity_assessment_activities(A)) :-
    notified_body(Body),
    on_request,
    within_scope_of_notification(A).

must_inform_other_notified_bodies(Body, qms_action(Action, A)) :-
    notified_body(Body),
    quality_management_system_approval(A),
    qms_negative_action(Action, A).

must_inform_other_notified_bodies(Body, issued_qms_approval(A)) :-
    notified_body(Body),
    quality_management_system_approval(A),
    on_request.

must_inform_other_notified_bodies(Body, certificate_action(Action, C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C),
    certificate_negative_action(Action, C).

must_inform_other_notified_bodies(Body, issued_certificate(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(C),
    on_request.

must_provide_relevant_information_to_similar_bodies(Body, negative_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_activity(Body),
    negative_conformity_assessment_result(I).

must_provide_relevant_information_to_similar_bodies(Body, positive_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_activity(Body),
    positive_conformity_assessment_result(I),
    on_request.

must_safeguard_confidentiality(Body, obtained_information(I)) :-
    notified_body(Body),
    information_obtained_by_notified_body(I).

qms_negative_action(refusal, _).
qms_negative_action(suspension, _).
qms_negative_action(withdrawal, _).

certificate_negative_action(refusal, _).
certificate_negative_action(withdrawal, _).
certificate_negative_action(suspension, _).
certificate_negative_action(restriction, _).

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_relevant_information_to_similar_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
