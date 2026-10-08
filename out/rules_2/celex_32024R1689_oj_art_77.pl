% unit       : celex:32024R1689/oj#art_77
% title      : Powers of authorities protecting fundamental rights
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : gpt-oss:120b-cloud
% prompt sha : 702ac6034d97865b942443ca4abbb2355ffdc5c69eb0752ec4719bb2a92ca320
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred public_authority_fundamental_rights/1, gloss('national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred documentation_created_or_maintained/1, gloss('documentation created or maintained under the Regulation'), source('celex:32024R1689/oj#art_77').
:- pred accessible_language_and_format/1, gloss('documentation provided in accessible language and format'), source('celex:32024R1689/oj#art_77').
:- pred within_jurisdiction/1, gloss('action is within the limits of the authority’s jurisdiction'), source('celex:32024R1689/oj#art_77').
:- pred related_by_state/2, gloss('authority and market surveillance authority belong to the same Member State'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_77').
:- pred commission/1, gloss('European Commission'), source('celex:32024R1689/oj#art_77').
:- pred reasonable_time/1, gloss('reasonable time following the request'), source('celex:32024R1689/oj#art_77').
:- pred confidentiality_obligation/1, gloss('confidentiality obligations set out in Article 78'), source('celex:32024R1689/oj#art_77').

:- pred permitted_request_and_access/2, gloss('authority may request and access documentation'), source('celex:32024R1689/oj#art_77').
:- pred must_inform/2, gloss('authority shall inform the market surveillance authority of any request'), source('celex:32024R1689/oj#art_77').
:- pred required_identify_public_authorities/1, gloss('Member State shall identify the public authorities'), source('celex:32024R1689/oj#art_77').
:- pred required_publish_list/1, gloss('Member State shall make the list publicly available'), source('celex:32024R1689/oj#art_77').
:- pred required_notify_list/2, gloss('Member State shall notify the list to the Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred required_keep_list_up_to_date/1, gloss('Member State shall keep the list up to date'), source('celex:32024R1689/oj#art_77').
:- pred permitted_reasoned_request/2, gloss('authority may make a reasoned request to organise testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority shall organise testing with involvement of requesting authority'), source('celex:32024R1689/oj#art_77').
:- pred must_treat_confidentially/2, gloss('information obtained shall be treated in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_77').

permitted_request_and_access(Authority, Documentation) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    documentation_created_or_maintained(Documentation),
    accessible_language_and_format(Documentation).

must_inform(Authority, MSA) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    market_surveillance_authority(MSA),
    related_by_state(Authority, MSA).

required_identify_public_authorities(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).

required_publish_list(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).

required_notify_list(MemberState, commission) :-
    member_state(MemberState),
    commission(commission),
    member_state(MemberState).

required_notify_list(MemberState, OtherMemberState) :-
    member_state(MemberState),
    member_state(OtherMemberState),
    member_state(OtherMemberState),
    member_state(MemberState).

required_keep_list_up_to_date(MemberState) :-
    member_state(MemberState),
    member_state(MemberState).

permitted_reasoned_request(Authority, MSA) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    market_surveillance_authority(MSA),
    related_by_state(Authority, MSA).

must_organise_testing(MSA, Authority) :-
    market_surveillance_authority(MSA),
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    related_by_state(Authority, MSA),
    reasonable_time(MSA).

must_treat_confidentially(Authority, Documentation) :-
    public_authority_fundamental_rights(Authority),
    within_jurisdiction(Authority),
    documentation_created_or_maintained(Documentation),
    confidentiality_obligation(Documentation).

provenance(permitted_request_and_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform/2, 'celex:32024R1689/oj#art_77').
provenance(required_identify_public_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(required_publish_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_notify_list/2, 'celex:32024R1689/oj#art_77').
provenance(required_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
