% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 5a713b55b5da55c76113ef9c2821f327be62ed812bf9380dec5ca268835cc024
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('obligation of a notified body to inform a party about specific information'), source('celex:32024R1689/oj#art_45').
:- pred must_provide/2, gloss('obligation of a notified body to provide information to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('obligation of a notified body to safeguard the confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

% 1(a) certificates
must_inform(NB, notifying_authority_info(union_technical_documentation_assessment_certificate)) :-
    notified_body(NB).

% 1(a) supplements to certificates
must_inform(NB, notifying_authority_info(certificate_supplement)) :-
    notified_body(NB).

% 1(a) quality management system approvals
must_inform(NB, notifying_authority_info(quality_management_system_approval)) :-
    notified_body(NB).

% 1(b) refusals, restrictions, suspensions or withdrawals of certificates
must_inform(NB, notifying_authority_info(action(refusal_or_restriction_or_suspension_or_withdrawal, union_technical_documentation_assessment_certificate))) :-
    notified_body(NB).

% 1(b) refusals, restrictions, suspensions or withdrawals of QMS approvals
must_inform(NB, notifying_authority_info(action(refusal_or_restriction_or_suspension_or_withdrawal, quality_management_system_approval))) :-
    notified_body(NB).

% 1(c) circumstances affecting scope or conditions for notification
must_inform(NB, notifying_authority_info(circumstances_affecting_notification_scope)) :-
    notified_body(NB).

% 1(d) requests for information received from market surveillance authorities
must_inform(NB, notifying_authority_info(request_for_information_from_market_surveillance_authority)) :-
    notified_body(NB),
    market_surveillance_authority(_).

% 1(e) on request, conformity assessment activities performed within the scope of their notification and any other activity
must_inform(NB, notifying_authority_info(conformity_assessment_activities_on_request)) :-
    notified_body(NB).

% 2(a) quality management system approvals refused, suspended or withdrawn
must_inform(NB, other_notified_body_info(action(refusal_or_suspension_or_withdrawal, quality_management_system_approval))) :-
    notified_body(NB).

% 2(a) upon request, quality management system approvals issued
must_inform(NB, other_notified_body_info(quality_management_system_approval_issued_on_request)) :-
    notified_body(NB).

% 2(b) certificates or supplements refused, withdrawn, suspended or restricted
must_inform(NB, other_notified_body_info(action(refusal_or_withdrawal_or_suspension_or_restriction, union_technical_documentation_assessment_certificate))) :-
    notified_body(NB).

% 2(b) upon request, certificates and/or supplements issued
must_inform(NB, other_notified_body_info(certificates_and_supplements_issued_on_request)) :-
    notified_body(NB).

% 3 negative conformity assessment results
must_provide(NB, other_notified_body_info(conformity_assessment_results(negative))) :-
    notified_body(NB).

% 3 positive conformity assessment results on request
must_provide(NB, other_notified_body_info(conformity_assessment_results(positive_on_request))) :-
    notified_body(NB).

% 4 safeguard confidentiality
must_safeguard_confidentiality(NB, information) :-
    notified_body(NB).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').

% References
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
