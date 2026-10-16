% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 3ea607a760b035bdace760f10a4f4176ecf0562155696e7349fbfd06ed08ec2d
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform_notifying_authority/2, gloss('notified body must inform notifying authority of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('notified body must inform other notified bodies of specified matters'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_conformity_information_to_peers/2, gloss('notified body must provide relevant conformity assessment information to peer notified bodies'), source('celex:32024R1689/oj#art_45').

must_inform_notifying_authority(Body, issued_certificate_or_approval(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    union_technical_documentation_assessment_certificate_or_qms_approval(C).

must_inform_notifying_authority(Body, refusal_restriction_suspension_or_withdrawal(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    union_technical_documentation_assessment_certificate_or_qms_approval(C).

must_inform_notifying_authority(Body, circumstances_affecting_notification(C)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    notification_circumstance(C).

must_inform_notifying_authority(Body, market_surveillance_request(R)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    request_from_market_surveillance_authority(R).

must_inform_notifying_authority(Body, conformity_assessment_activities(A)) :-
    notified_body(Body),
    notifying_authority(_Auth),
    requested_information_on_activities(A).

must_inform_other_notified_bodies(Body, qms_approval_refusal_suspension_or_withdrawal(A)) :-
    notified_body(Body),
    quality_management_system_approval_action(A),
    negative_qms_action(A).

must_inform_other_notified_bodies(Body, certificate_refusal_withdrawal_suspension_or_restriction(C)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate_action(C),
    negative_certificate_action(C).

must_provide_conformity_information_to_peers(Body, negative_conformity_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_scope(Body),
    negative_conformity_assessment_result(I).

must_provide_conformity_information_to_peers(Body, positive_conformity_result(I)) :-
    notified_body(Body),
    similar_conformity_assessment_scope(Body),
    positive_conformity_assessment_result(I),
    requested_positive_result_information(I).

must_treat_information_confidentially(Body, obtained_information) :-
    notified_body(Body).

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_conformity_information_to_peers/2, 'celex:32024R1689/oj#art_45').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
