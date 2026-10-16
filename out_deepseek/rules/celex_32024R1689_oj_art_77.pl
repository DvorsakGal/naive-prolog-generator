% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 6fec630632498b43782aa7f30b915867f4652469b30b1871f3b10653c263c240
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred must_inform/2, gloss('inform the market surveillance authority of a request'), source('celex:32024R1689/oj#art_77/par_1').
:- pred must_identify/2, gloss('identify the public authorities or bodies'), source('celex:32024R1689/oj#art_77/par_2').
:- pred must_notify/2, gloss('notify the list to the Commission and other Member States'), source('celex:32024R1689/oj#art_77/par_2').
:- pred must_keep_up_to_date/2, gloss('keep the list up to date'), source('celex:32024R1689/oj#art_77/par_2').
:- pred may_request_testing/2, gloss('make a reasoned request to organise testing'), source('celex:32024R1689/oj#art_77/par_3').
:- pred must_organise_testing/2, gloss('organise testing of the high-risk AI system'), source('celex:32024R1689/oj#art_77/par_3').
:- pred must_treat_confidentially/2, gloss('treat information in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_77/par_4').

% Paragraph 1
must_inform(Authority, request(RequestingAuthority)) :-
    national_public_authority_or_body(RequestingAuthority),
    market_surveillance_authority(Authority),
    member_state_of(Authority, MemberState),
    member_state_of(RequestingAuthority, MemberState),
    has_power_to_request_documentation(RequestingAuthority).

has_power_to_request_documentation(Authority) :-
    national_public_authority_or_body(Authority),
    supervises_or_enforces_fundamental_rights(Authority),
    documentation_necessary_for_mandate(Authority).

documentation_necessary_for_mandate(Authority) :-
    documentation_created_or_maintained_under_regulation(Doc),
    access_necessary_for_fulfilling_mandate(Authority, Doc).

% Paragraph 2
must_identify(MemberState, authorities_list) :-
    member_state(MemberState).

must_notify(MemberState, list(Authorities)) :-
    member_state(MemberState),
    identified_authorities(MemberState, Authorities).

must_keep_up_to_date(MemberState, list(Authorities)) :-
    member_state(MemberState),
    identified_authorities(MemberState, Authorities).

% Paragraph 3
may_request_testing(Authority, request(testing(System), Reason)) :-
    national_public_authority_or_body(Authority),
    high_risk_ai_system(System),
    documentation_insufficient_to_ascertain_infringement(Authority, System),
    market_surveillance_authority(MSA),
    member_state_of(Authority, MemberState),
    member_state_of(MSA, MemberState).

must_organise_testing(MSA, testing(System, RequestingAuthority)) :-
    market_surveillance_authority(MSA),
    national_public_authority_or_body(RequestingAuthority),
    high_risk_ai_system(System),
    may_request_testing(RequestingAuthority, request(testing(System), _)),
    within_reasonable_time(MSA, testing(System, RequestingAuthority)).

% Paragraph 4
must_treat_confidentially(Authority, information_obtained_under_art_77) :-
    national_public_authority_or_body(Authority),
    information_obtained_pursuant_to_art_77(Authority).

% Provenance
provenance(must_inform/2, 'celex:32024R1689/oj#art_77/par_1').
provenance(has_power_to_request_documentation/1, 'celex:32024R1689/oj#art_77/par_1').
provenance(documentation_necessary_for_mandate/1, 'celex:32024R1689/oj#art_77/par_1').
provenance(must_identify/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(must_notify/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(must_keep_up_to_date/2, 'celex:32024R1689/oj#art_77/par_2').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77/par_3').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77/par_3').
provenance(must_treat_confidentially/2, 'celex:32024R1689/oj#art_77/par_4').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
