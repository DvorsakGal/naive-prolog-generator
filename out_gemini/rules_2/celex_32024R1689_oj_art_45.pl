% unit       : celex:32024R1689/oj#art_45
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : 3fc54584b51ed8b8b4b656844912e49567eec81b3c833976555c2740795eb896
% cached     : False
% title      : Information obligations of notified bodies
:- pred must_inform/2, gloss('actor must inform recipient of specified information or decision'), source('celex:32024R1689/oj#art_45').
:- pred notifying_authority_of/2, gloss('notifying authority responsible for a notified body'), source('celex:32024R1689/oj#art_45').
:- pred similar_notified_body/2, gloss('notified body carrying out similar conformity assessment activities covering the same types of AI systems'), source('celex:32024R1689/oj#art_45').
:- pred request_for_information_received/2, gloss('request for information received by an entity from an authority regarding activities'), source('celex:32024R1689/oj#art_45').
:- pred request_received/2, gloss('request received by an entity for specified information'), source('celex:32024R1689/oj#art_45').
:- pred must_provide_information/2, gloss('actor must provide information to a recipient'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('actor must safeguard the confidentiality of obtained information'), source('celex:32024R1689/oj#art_45').

% Article 45(1)(a)
must_inform(B, informing(Auth, certificate_or_approval_issued(Doc))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate,
        quality_management_system_approval
    ]).

% Article 45(1)(b)
must_inform(B, informing(Auth, Decision)) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    member(Action, [refusal, restriction, suspension, withdrawal]),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        quality_management_system_approval
    ]),
    Decision = adverse_decision(Action, Doc).

% Article 45(1)(c)
must_inform(B, informing(Auth, circumstances_affecting_notification_scope_or_conditions)) :-
    notified_body(B),
    notifying_authority_of(Auth, B).

% Article 45(1)(d)
must_inform(B, informing(Auth, request_from_market_surveillance(Req))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    request_for_information_received(B, Req).

% Article 45(1)(e)
must_inform(B, informing(Auth, conformity_activities_performed(Activities))) :-
    notified_body(B),
    notifying_authority_of(Auth, B),
    request_received(B, request_for_activities(Activities)).

% Article 45(2)(a)
must_inform(B, informing(OtherB, adverse_decision(Action, quality_management_system_approval))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Action, [refusal, suspension, withdrawal]).

must_inform(B, informing(OtherB, issued(quality_management_system_approval))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    request_received(B, request_for_issued_quality_management_system_approvals(OtherB)).

% Article 45(2)(b)
must_inform(B, informing(OtherB, adverse_decision(Action, Doc))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Action, [refusal, withdrawal, suspension, restriction]),
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate
    ]).

must_inform(B, informing(OtherB, issued(Doc))) :-
    notified_body(B),
    notified_body(OtherB),
    B \= OtherB,
    member(Doc, [
        union_technical_documentation_assessment_certificate,
        supplement_to_union_technical_documentation_assessment_certificate
    ]),
    request_received(B, request_for_issued_certificates(OtherB)).

% Article 45(3)
must_provide_information(B, recipient(OtherB, negative_conformity_assessment_results)) :-
    notified_body(B),
    similar_notified_body(OtherB, B).

must_provide_information(B, recipient(OtherB, positive_conformity_assessment_results)) :-
    notified_body(B),
    similar_notified_body(OtherB, B),
    request_received(B, request_for_positive_results(OtherB)).

% Article 45(4)
must_safeguard_confidentiality(B, obtained_information) :-
    notified_body(B).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_45').
provenance(must_provide_information/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').

% References
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
