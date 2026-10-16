% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : ea1cdb7e96e28f2b516fd9facf8fcfb867ecfe7875cd467440126061d75daf68
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('actor must inform another of something'), source('celex:32024R1689/oj#art_45').
:- pred must_provide/2, gloss('actor must provide another with something'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard/2, gloss('actor must safeguard something'), source('celex:32024R1689/oj#art_45').
:- pred certificate_issued/1, gloss('certificate has been issued'), source('celex:32024R1689/oj#art_45').
:- pred supplement_to_certificate/1, gloss('supplement to a certificate'), source('celex:32024R1689/oj#art_45').
:- pred quality_management_system_approval/1, gloss('approval of a quality management system'), source('celex:32024R1689/oj#art_45').
:- pred refusal_of_certificate/1, gloss('refusal of a certificate or approval'), source('celex:32024R1689/oj#art_45').
:- pred restriction_of_certificate/1, gloss('restriction of a certificate or approval'), source('celex:32024R1689/oj#art_45').
:- pred suspension_of_certificate/1, gloss('suspension of a certificate or approval'), source('celex:32024R1689/oj#art_45').
:- pred withdrawal_of_certificate/1, gloss('withdrawal of a certificate or approval'), source('celex:32024R1689/oj#art_45').
:- pred circumstances_affecting_notification/1, gloss('circumstances affecting scope or conditions for notification'), source('celex:32024R1689/oj#art_45').
:- pred request_for_information_from_market_surveillance/1, gloss('request for information received from market surveillance authority'), source('celex:32024R1689/oj#art_45').
:- pred conformity_assessment_activity/1, gloss('activity performed under conformity assessment'), source('celex:32024R1689/oj#art_45').
:- pred cross_border_activity/1, gloss('activity performed across borders'), source('celex:32024R1689/oj#art_45').
:- pred subcontracting_activity/1, gloss('activity subcontracted to another body'), source('celex:32024R1689/oj#art_45').
:- pred negative_conformity_assessment_result/1, gloss('negative result of conformity assessment'), source('celex:32024R1689/oj#art_45').
:- pred positive_conformity_assessment_result/1, gloss('positive result of conformity assessment'), source('celex:32024R1689/oj#art_45').
:- pred similar_conformity_assessment_activity/1, gloss('conformity assessment activity of similar type'), source('celex:32024R1689/oj#art_45').
:- pred same_type_ai_system/1, gloss('AI system of the same type'), source('celex:32024R1689/oj#art_45').
:- pred confidential_information/1, gloss('information obtained that is confidential'), source('celex:32024R1689/oj#art_45').

must_inform(Body, certificate_issued(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate).

must_inform(Body, supplement_to_certificate(Supplement)) :-
    notified_body(Body),
    supplement(Supplement),
    to_certificate(Certificate, Supplement),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate).

must_inform(Body, quality_management_system_approval(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval).

must_inform(Body, refusal_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    refused(Certificate).

must_inform(Body, refusal_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    refused(Approval).

must_inform(Body, restriction_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    restricted(Certificate).

must_inform(Body, restriction_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    restricted(Approval).

must_inform(Body, suspension_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    suspended(Certificate).

must_inform(Body, suspension_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    suspended(Approval).

must_inform(Body, withdrawal_of_certificate(Certificate)) :-
    notified_body(Body),
    union_technical_documentation_assessment_certificate(Certificate),
    issued_in_accordance_with_annex_7(Certificate),
    withdrawn(Certificate).

must_inform(Body, withdrawal_of_certificate(Approval)) :-
    notified_body(Body),
    quality_management_system_approval(Approval),
    issued_in_accordance_with_annex_7(Approval),
    withdrawn(Approval).

must_inform(Body, circumstances_affecting_notification(Circumstances)) :-
    notified_body(Body),
    circumstances_affecting_notification(Circumstances).

must_inform(Body, request_for_information_from_market_surveillance(Request)) :-
    notified_body(Body),
    request_for_information(Request),
    received_from(Request, Authority),
    market_surveillance_authority(Authority),
    regarding_conformity_assessment_activities(Request).

must_inform(Body, conformity_assessment_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    conformity_assessment_activity(Activity),
    within_scope_of_notification(Activity, Body).

must_inform(Body, cross_border_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    cross_border_activity(Activity),
    performed_by(Body, Activity).

must_inform(Body, subcontracting_activity(Activity)) :-
    notified_body(Body),
    requested(Body),
    subcontracting_activity(Activity),
    performed_by(Body, Activity).

must_inform(Body, refusal_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    refused(OtherBody, Approval).

must_inform(Body, suspension_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    suspended(OtherBody, Approval).

must_inform(Body, withdrawal_of_approval(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    quality_management_system_approval(Approval),
    withdrawn(OtherBody, Approval).

must_inform(Body, approval_issued(Approval)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    quality_management_system_approval(Approval),
    issued(OtherBody, Approval).

must_inform(Body, refusal_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    refused(OtherBody, Certificate).

must_inform(Body, withdrawal_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    withdrawn(OtherBody, Certificate).

must_inform(Body, suspension_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    suspended(OtherBody, Certificate).

must_inform(Body, restriction_of_certificate(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    restricted(OtherBody, Certificate).

must_inform(Body, certificate_issued(Certificate)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    union_technical_documentation_assessment_certificate(Certificate),
    issued(OtherBody, Certificate).

must_inform(Body, supplement_issued(Supplement)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    requested(Body, OtherBody),
    supplement_to_certificate(Supplement),
    issued(OtherBody, Supplement).

must_provide(Body, negative_conformity_assessment_result(Result)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    carrying_out_similar_conformity_assessment_activities(OtherBody, Body),
    covering_same_types_of_ai_systems(OtherBody, Body),
    negative_conformity_assessment_result(Result),
    relevant_to(Result, OtherBody).

must_provide(Body, positive_conformity_assessment_result(Result)) :-
    notified_body(Body),
    other_notified_body(OtherBody),
    carrying_out_similar_conformity_assessment_activities(OtherBody, Body),
    covering_same_types_of_ai_systems(OtherBody, Body),
    requested(Body, OtherBody),
    positive_conformity_assessment_result(Result),
    relevant_to(Result, OtherBody).

must_safeguard(Body, confidential_information(Info)) :-
    notified_body(Body),
    obtained(Body, Info),
    confidential(Info).

provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard/2, 'celex:32024R1689/oj#art_45').
provenance(certificate_issued/1, 'celex:32024R1689/oj#art_45').
provenance(supplement_to_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(quality_management_system_approval/1, 'celex:32024R1689/oj#art_45').
provenance(refusal_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(restriction_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(suspension_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(withdrawal_of_certificate/1, 'celex:32024R1689/oj#art_45').
provenance(circumstances_affecting_notification/1, 'celex:32024R1689/oj#art_45').
provenance(request_for_information_from_market_surveillance/1, 'celex:32024R1689/oj#art_45').
provenance(conformity_assessment_activity/1, 'celex:32024R1689/oj#art_45').
provenance(cross_border_activity/1, 'celex:32024R1689/oj#art_45').
provenance(subcontracting_activity/1, 'celex:32024R1689/oj#art_45').
provenance(negative_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(positive_conformity_assessment_result/1, 'celex:32024R1689/oj#art_45').
provenance(similar_conformity_assessment_activity/1, 'celex:32024R1689/oj#art_45').
provenance(same_type_ai_system/1, 'celex:32024R1689/oj#art_45').
provenance(confidential_information/1, 'celex:32024R1689/oj#art_45').

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
