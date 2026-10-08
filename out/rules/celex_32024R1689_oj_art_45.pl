% unit       : celex:32024R1689/oj#art_45
% title      : Information obligations of notified bodies
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 5 Standards, conformity assessment, certificates, registration
% slice sha  : 22a47c346f98c9d9126555f2aedac94f0d669f60bd2ce03d76d9efeb99997c99
% model      : gpt-oss:120b-cloud
% prompt sha : ce577a38065a5189580595639838ba98dda6bf98e4db3d48b322bef359c46819
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred must_inform/3, gloss('obligation of a notified body to inform a recipient about specific information'), source('celex:32024R1689/oj#art_45').
:- pred request_received/3, gloss('request made by a party to another for specific information'), source('celex:32024R1689/oj#art_45').
:- pred same_ai_system_type/2, gloss('two notified bodies carry out conformity assessment for the same types of AI systems'), source('celex:32024R1689/oj#art_45').
:- pred must_safeguard_confidentiality/2, gloss('obligation of a notified body to keep obtained information confidential'), source('celex:32024R1689/oj#art_45').
:- pred obtained_information/2, gloss('information that a notified body has obtained'), source('celex:32024R1689/oj#art_45').

% 1(a) – mandatory information to the notifying authority
must_inform(NB, NA, union_technical_documentation_assessment_certificate) :-
    notified_body(NB),
    notifying_authority(NA).

must_inform(NB, NA, union_technical_documentation_assessment_certificate_supplement) :-
    notified_body(NB),
    notifying_authority(NA).

must_inform(NB, NA, quality_management_system_approval) :-
    notified_body(NB),
    notifying_authority(NA).

% 1(b) – refusals, restrictions, suspensions or withdrawals
must_inform(NB, NA, union_technical_documentation_assessment_certificate_refusal) :-
    notified_body(NB),
    notifying_authority(NA).

must_inform(NB, NA, quality_management_system_approval_refusal) :-
    notified_body(NB),
    notifying_authority(NA).

% 1(c) – circumstances affecting scope or conditions
must_inform(NB, NA, circumstances_affecting_scope_or_conditions) :-
    notified_body(NB),
    notifying_authority(NA).

% 1(d) – requests for information from market surveillance authorities
must_inform(NB, NA, request_from_market_surveillance_authority) :-
    notified_body(NB),
    notifying_authority(NA).

% 1(e) – on request, conformity assessment activities
must_inform(NB, NA, conformity_assessment_activities) :-
    notified_body(NB),
    notifying_authority(NA),
    request_received(NA, NB, conformity_assessment_activities).

% 2(a) – inform other notified bodies about quality‑management‑system approvals (refused, suspended, withdrawn)
must_inform(NB, Other, quality_management_system_approval_refusal) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB.

% 2(a) – on request, inform other notified bodies about quality‑management‑system approvals issued
must_inform(NB, Other, quality_management_system_approval_issued) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    request_received(Other, NB, quality_management_system_approval_issued).

% 2(b) – inform other notified bodies about certificates (refused, withdrawn, suspended, restricted)
must_inform(NB, Other, union_technical_documentation_assessment_certificate_refusal) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB.

% 2(b) – on request, inform other notified bodies about certificates or supplements issued
must_inform(NB, Other, union_technical_documentation_assessment_certificate_issued) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    request_received(Other, NB, union_technical_documentation_assessment_certificate_issued).

% 3 – inform other notified bodies carrying out similar conformity assessment activities
must_inform(NB, Other, negative_conformity_assessment_results) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    same_ai_system_type(NB, Other).

must_inform(NB, Other, positive_conformity_assessment_results) :-
    notified_body(NB),
    notified_body(Other),
    Other \= NB,
    same_ai_system_type(NB, Other),
    request_received(Other, NB, positive_conformity_assessment_results).

% 4 – confidentiality obligation
must_safeguard_confidentiality(NB, Info) :-
    notified_body(NB),
    obtained_information(NB, Info).

% Provenance
provenance(must_inform/3, 'celex:32024R1689/oj#art_45').
provenance(request_received/3, 'celex:32024R1689/oj#art_45').
provenance(same_ai_system_type/2, 'celex:32024R1689/oj#art_45').
provenance(must_safeguard_confidentiality/2, 'celex:32024R1689/oj#art_45').
provenance(obtained_information/2, 'celex:32024R1689/oj#art_45').

% References
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#anx_7').
references('celex:32024R1689/oj#art_45', 'celex:32024R1689/oj#art_78').
