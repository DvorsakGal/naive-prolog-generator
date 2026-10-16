% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : a602fc7a403f51d0073906365a405897b38494748525844eec5f3db6d8851503
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority or body supervising or enforcing fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under Annex III'), source('celex:32024R1689/oj#anx_3').
:- pred documentation_created_or_maintained/1, gloss('documentation created or maintained under the Regulation'), source('celex:32024R1689/oj#art_77').
:- pred accessible_language_and_format/1, gloss('language and format accessible to the requesting authority'), source('celex:32024R1689/oj#art_77').
:- pred necessary_for_mandate/1, gloss('access necessary for effectively fulfilling the authority mandate'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_77').
:- pred identified_by_member_state/1, gloss('authority identified by a Member State under Article 77(2)'), source('celex:32024R1689/oj#art_77').
:- pred list_publicly_available/1, gloss('list of fundamental rights authorities made publicly available'), source('celex:32024R1689/oj#art_77').
:- pred list_notified_to_commission/1, gloss('list notified to the Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred list_kept_up_to_date/1, gloss('list maintained current by the Member State'), source('celex:32024R1689/oj#art_77').
:- pred insufficient_documentation/1, gloss('documentation insufficient to ascertain infringement of fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred reasoned_request_for_testing/2, gloss('reasoned request by fundamental rights authority to market surveillance authority for testing'), source('celex:32024R1689/oj#art_77').
:- pred testing_organised_by_market_surveillance/1, gloss('testing organised by market surveillance authority with close involvement of requesting authority'), source('celex:32024R1689/oj#art_77').
:- pred confidentiality_obligation_applies/1, gloss('information or documentation treated in accordance with Article 78 confidentiality obligations'), source('celex:32024R1689/oj#art_77').

% Article 77(1): Power to request and access documentation
must_request_and_access_documentation(A, D) :-
    fundamental_rights_authority(A),
    documentation_created_or_maintained(D),
    high_risk_ai_system(S),
    relates_to(D, S),
    accessible_language_and_format(D),
    necessary_for_mandate(access(D), A).

must_inform_market_surveillance_authority(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    member_state(MS),
    same_member_state(A, MS),
    same_member_state(MSA, MS),
    must_request_and_access_documentation(A, _D).

% Article 77(2): Member State obligations to identify, publish, notify, and update list
must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).

must_make_list_publicly_available(MS) :-
    member_state(MS),
    must_identify_fundamental_rights_authorities(MS),
    list_publicly_available(MS).

must_notify_list_to_commission_and_member_states(MS) :-
    member_state(MS),
    must_identify_fundamental_rights_authorities(MS),
    list_notified_to_commission(MS).

must_keep_list_up_to_date(MS) :-
    member_state(MS),
    list_kept_up_to_date(MS).

% Article 77(3): Reasoned request for testing when documentation insufficient
may_make_reasoned_request_for_testing(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    member_state(MS),
    same_member_state(A, MS),
    same_member_state(MSA, MS),
    insufficient_documentation(D),
    relates_to(D, S),
    high_risk_ai_system(S).

must_organise_testing(MSA, A) :-
    market_surveillance_authority(MSA),
    fundamental_rights_authority(A),
    reasoned_request_for_testing(A, MSA),
    testing_organised_by_market_surveillance(MSA, A).

% Article 77(4): Confidentiality obligation
must_treat_as_confidential(A, Info) :-
    fundamental_rights_authority(A),
    obtained_pursuant_to(A, Info, art_77),
    confidentiality_obligation_applies(Info).

% Helper predicates
relates_to(D, S) :-
    documentation_created_or_maintained(D),
    high_risk_ai_system(S).

same_member_state(A, MS) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS).

same_member_state(MSA, MS) :-
    market_surveillance_authority(MSA),
    member_state(MS),
    jurisdiction_of(MSA, MS).

obtained_pursuant_to(A, Info, Article) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS),
    must_request_and_access_documentation(A, D),
    part_of(Info, D),
    Article = art_77.

part_of(Info, D) :-
    documentation_created_or_maintained(D).

% Facts for identified authorities
identified_by_member_state(A) :-
    fundamental_rights_authority(A),
    member_state(MS),
    jurisdiction_of(A, MS),
    must_identify_fundamental_rights_authorities(MS).

% Provenance
provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#anx_3').
provenance(documentation_created_or_maintained/1, 'celex:32024R1689/oj#art_77').
provenance(accessible_language_and_format/1, 'celex:32024R1689/oj#art_77').
provenance(necessary_for_mandate/1, 'celex:32024R1689/oj#art_77').
provenance(member_state/1, 'celex:32024R1689/oj#art_77').
provenance(identified_by_member_state/1, 'celex:32024R1689/oj#art_77').
provenance(list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(list_notified_to_commission/1, 'celex:32024R1689/oj#art_77').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(insufficient_documentation/1, 'celex:32024R1689/oj#art_77').
provenance(reasoned_request_for_testing/2, 'celex:32024R1689/oj#art_77').
provenance(testing_organised_by_market_surveillance/1, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligation_applies/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_make_list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_to_commission_and_member_states/1, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_make_reasoned_request_for_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_as_confidential/2, 'celex:32024R1689/oj#art_77').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
