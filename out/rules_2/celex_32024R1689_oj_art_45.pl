% unit       : celex:32024R1689/oj#art_45
% title      : Information obligations of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : gpt-oss:120b-cloud
% prompt sha : 10caf2ab80e98b47a3a53528afb30771acb362ccaf6fad71d6588919d6302502
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_inform_notifying_authority/2, gloss('obligation of notified body to inform the notifying authority'), source('celex:32024R1689/oj#art_45').
:- pred must_inform_other_notified_bodies/2, gloss('obligation of notified body to inform other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_information_to_other_notified_bodies/2, gloss('obligation of notified body to provide information to other notified bodies'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/1, gloss('obligation of notified body to safeguard confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

%--- Obligations to inform the notifying authority (Article 45(1)) ---

must_inform_notifying_authority(Body, union_technical_documentation_assessment_certificate) :-
    notified_body(Body).

must_inform_notifying_authority(Body, union_technical_documentation_assessment_certificate_supplement) :-
    notified_body(Body).

must_inform_notifying_authority(Body, quality_management_system_approval) :-
    notified_body(Body).

must_inform_notifying_authority(Body, refusal_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).

must_inform_notifying_authority(Body, restriction_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).

must_inform_notifying_authority(Body, suspension_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).

must_inform_notifying_authority(Body, withdrawal_union_technical_documentation_assessment_certificate) :-
    notified_body(Body).

must_inform_notifying_authority(Body, refusal_quality_management_system_approval) :-
    notified_body(Body).

must_inform_notifying_authority(Body, suspension_quality_management_system_approval) :-
    notified_body(Body).

must_inform_notifying_authority(Body, withdrawal_quality_management_system_approval) :-
    notified_body(Body).

must_inform_notifying_authority(Body, circumstances_affecting_notification_scope) :-
    notified_body(Body).

must_inform_notifying_authority(Body, request_from_market_surveillance_authority) :-
    notified_body(Body).

must_inform_notifying_authority(Body, conformity_assessment_activities_on_request) :-
    notified_body(Body).

%--- Obligations to inform other notified bodies (Article 45(2)) ---

must_inform_other_notified_bodies(Body, refused_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, suspended_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, withdrawn_quality_management_system_approval) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, issued_quality_management_system_approval_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, refused_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, withdrawn_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, suspended_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, restricted_union_technical_documentation_assessment_certificate) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, issued_union_technical_documentation_assessment_certificate_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_inform_other_notified_bodies(Body, issued_union_technical_documentation_assessment_certificate_supplement_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

%--- Obligations to provide information to other notified bodies (Article 45(3)) ---

must_provide_information_to_other_notified_bodies(Body, negative_conformity_assessment_results) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

must_provide_information_to_other_notified_bodies(Body, positive_conformity_assessment_results_on_request) :-
    notified_body(Body),
    notified_body(Other),
    Body \= Other.

%--- Confidentiality obligation (Article 45(4)) ---

must_safeguard_confidentiality(Body) :-
    notified_body(Body).

%--- Provenance facts ---

provenance(must_inform_notifying_authority/2, 'celex:32024R1689/oj#art_45').
provenance(must_inform_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information_to_other_notified_bodies/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/1, 'celex:32024R1689/oj#art_45').

%--- References ---

references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
