% unit       : celex:32024R1689/oj#art_77
% title      : Powers of authorities protecting fundamental rights
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : gpt-oss:120b-cloud
% prompt sha : c43be0b05e8a2e232791ecc258cd1272da08ad807a871c8b8820118536975cc5
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred public_authority/1, gloss('national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred documentation/1, gloss('documentation created or maintained under the Regulation'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system referred to in annex III'), source('celex:32024R1689/oj#art_77').
:- pred necessary_for_fulfilling_mandate/2, gloss('access to documentation is necessary for effectively fulfilling the authority’s mandate'), source('celex:32024R1689/oj#art_77').
:- pred request_made/2, gloss('a request for documentation has been made by the authority'), source('celex:32024R1689/oj#art_77').
:- pred member_state/1, gloss('Member State of the Union'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient/2, gloss('the documentation is insufficient to ascertain whether an infringement has occurred'), source('celex:32024R1689/oj#art_77').
:- pred within_reasonable_time/2, gloss('testing is organised within a reasonable time following the request'), source('celex:32024R1689/oj#art_77').
:- pred information_obtained/2, gloss('information or documentation obtained by the authority'), source('celex:32024R1689/oj#art_77').
:- pred confidentiality_obligation/1, gloss('confidentiality obligations set out in article 78'), source('celex:32024R1689/oj#art_77').

%--- Provision 77(1) -------------------------------------------------
permitted_request_access_documentation(Authority, Documentation) :-
    public_authority(Authority),
    documentation(Documentation),
    high_risk_ai_system(Documentation),
    necessary_for_fulfilling_mandate(Authority, Documentation).

must_inform_of_request(Authority, MarketSurveillanceAuthority, Documentation) :-
    public_authority(Authority),
    market_surveillance_authority(MarketSurveillanceAuthority),
    request_made(Authority, Documentation),
    permitted_request_access_documentation(Authority, Documentation).

%--- Provision 77(2) -------------------------------------------------
required_identify_public_authorities(MemberState) :-
    member_state(MemberState).

required_make_public_list(MemberState) :-
    member_state(MemberState).

required_notify_list(MemberState) :-
    member_state(MemberState).

required_keep_list_up_to_date(MemberState) :-
    member_state(MemberState).

%--- Provision 77(3) -------------------------------------------------
permitted_reasoned_request_testing(Authority, System) :-
    public_authority(Authority),
    high_risk_ai_system(System),
    documentation_insufficient(Authority, System).

must_organise_testing(MarketSurveillanceAuthority, System, Authority) :-
    market_surveillance_authority(MarketSurveillanceAuthority),
    public_authority(Authority),
    permitted_reasoned_request_testing(Authority, System),
    within_reasonable_time(MarketSurveillanceAuthority, System).

%--- Provision 77(4) -------------------------------------------------
must_treat_confidentially(Authority, Information) :-
    public_authority(Authority),
    information_obtained(Authority, Information),
    confidentiality_obligation(Information).

%--- Provenance -------------------------------------------------------
provenance(permitted_request_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_of_request/3, 'celex:32024R1689/oj#art_77').
provenance(required_identify_public_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(required_make_public_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_notify_list/1, 'celex:32024R1689/oj#art_77').
provenance(required_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(permitted_reasoned_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/3, 'celex:32024R1689/oj#art_77').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77').

%--- References -------------------------------------------------------
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
