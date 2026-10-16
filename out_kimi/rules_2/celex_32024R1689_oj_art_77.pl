% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : moonshotai/kimi-k2.6
% signature  : adbed136f38c7482ee6fd87f3986d41e96f24e1417807110948db9f1940b9c05
% call key   : 7ea9a516661a623f3a3e79270f043645d4d7397cfefc05587f88041a0801f114
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred must_inform_market_surveillance_authority/2, gloss('authority must inform market surveillance authority of request for documentation'), source('celex:32024R1689/oj#art_77').
:- pred must_identify_and_publish_authorities/1, gloss('Member State must identify authorities and publish list'), source('celex:32024R1689/oj#art_77').
:- pred must_notify_list_to_commission_and_states/1, gloss('Member State must notify list to Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred must_keep_authority_list_up_to_date/1, gloss('Member State must keep list of authorities up to date'), source('celex:32024R1689/oj#art_77').
:- pred may_request_testing/2, gloss('public authority may request market surveillance authority to organise testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority must organise testing with involvement of requesting authority'), source('celex:32024R1689/oj#art_77').
:- pred documentation_access_necessary_for_mandate/3, gloss('access to documentation is necessary for authority to fulfil its mandate'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient_for_infringement_ascertainment/1, gloss('documentation is insufficient to ascertain whether infringement occurred'), source('celex:32024R1689/oj#art_77').
:- pred request_and_access_documentation/2, gloss('authority requests and accesses documentation'), source('celex:32024R1689/oj#art_77').
:- pred authority_supervises_fundamental_rights/1, gloss('authority supervises or enforces fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system_referred_in_annex_3/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_77').

request_and_access_documentation(Authority, Documentation) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    high_risk_ai_system_referred_in_annex_3(S),
    documentation_created_or_maintained_under_regulation(Documentation),
    accessible_language_and_format(Documentation),
    documentation_access_necessary_for_mandate(Authority, Documentation, Jurisdiction),
    within_limits_of_jurisdiction(Authority, Jurisdiction).

must_inform_market_surveillance_authority(Authority, Request) :-
    request_and_access_documentation(Authority, Documentation),
    request(Request),
    market_surveillance_authority(Msa),
    member_state_concerned(Msa, MemberState),
    jurisdiction_of(Authority, MemberState).

must_identify_and_publish_authorities(MemberState) :-
    member_state(MemberState),
    deadline_passed(days_after(date(2024, 11, 2))),
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    publicly_available(List),
    list_of_authorities(List, MemberState).

must_notify_list_to_commission_and_states(MemberState) :-
    must_identify_and_publish_authorities(MemberState),
    list_of_authorities(List, MemberState),
    commission(C),
    other_member_state(Other),
    notified(List, C),
    notified(List, Other).

must_keep_authority_list_up_to_date(MemberState) :-
    must_identify_and_publish_authorities(MemberState),
    list_of_authorities(List, MemberState).

may_request_testing(Authority, Msa) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    documentation_insufficient_for_infringement_ascertainment(Documentation),
    high_risk_ai_system_referred_in_annex_3(S),
    market_surveillance_authority(Msa),
    reasoned_request(Authority, testing(S)).

must_organise_testing(Msa, Request) :-
    may_request_testing(Authority, Msa),
    reasoned_request(Authority, testing(S)),
    high_risk_ai_system_referred_in_annex_3(S),
    technical_means(TechnicalMeans),
    testing_organised(Msa, S, TechnicalMeans),
    close_involvement_of(Authority, testing_organised(Msa, S, TechnicalMeans)),
    reasonable_time_following_request(Request, testing_organised(Msa, S, TechnicalMeans)).

confidentiality_obligations_apply(Documentation) :-
    national_public_authority_or_body(Authority),
    authority_supervises_fundamental_rights(Authority),
    documentation_created_or_maintained_under_regulation(Documentation),
    obtained_by(Authority, Documentation),
    article_78_confidentiality_applies(Documentation).

provenance(request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_and_publish_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_to_commission_and_states/1, 'celex:32024R1689/oj#art_77').
provenance(must_keep_authority_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
