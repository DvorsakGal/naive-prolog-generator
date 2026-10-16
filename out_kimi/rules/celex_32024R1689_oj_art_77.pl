% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : moonshotai/kimi-k2.6
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 58d940f5a755a8db6cdfccb332006eda79395987fe2064385d2b897c01ec3ed8
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred authority_protecting_fundamental_rights/1, gloss('national public authority supervising or enforcing fundamental rights obligations under Union law'), source('celex:32024R1689/oj#art_77/par_1').
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#anx_3').
:- pred documentation_under_regulation/1, gloss('documentation created or maintained under this regulation'), source('celex:32024R1689/oj#art_77/par_1').
:- pred accessible_language_and_format/1, gloss('language and format that are accessible'), source('celex:32024R1689/oj#art_77/par_1').
:- pred necessary_for_mandate/2, gloss('access is necessary for effectively fulfilling mandate'), source('celex:32024R1689/oj#art_77/par_1').
:- pred within_jurisdiction/1, gloss('within the limits of jurisdiction'), source('celex:32024R1689/oj#art_77/par_1').
:- pred identified_authority_list/1, gloss('publicly available list of identified authorities'), source('celex:32024R1689/oj#art_77/par_2').
:- par_2_deadline/1, gloss('deadline for identifying and listing authorities'), source('celex:32024R1689/oj#art_77/par_2').
:- pred insufficient_documentation/1, gloss('documentation is insufficient to ascertain infringement'), source('celex:32024R1689/oj#art_77/par_3').
:- pred reasoned_request_for_testing/2, gloss('reasoned request to organise testing of high-risk AI system'), source('celex:32024R1689/oj#art_77/par_3').
:- pred testing_through_technical_means/1, gloss('testing of AI system through technical means'), source('celex:32024R1689/oj#art_77/par_3').
:- pred close_involvement_in_testing/2, gloss('close involvement of requesting authority in testing'), source('celex:32024R1689/oj#art_77/par_3').
:- pred reasonable_time/1, gloss('reasonable time following the request'), source('celex:32024R1689/oj#art_77/par_3').
:- pred confidentiality_obligations_apply/1, gloss('confidentiality obligations apply to obtained information'), source('celex:32024R1689/oj#art_77/par_4').

par_2_deadline(date(2024, 11, 2)).

authority_protecting_fundamental_rights(A) :-
    national_public_authority_or_body(A),
    supervises_or_enforces_fundamental_rights_obligations(A).

must_request_access(A, documentation(D)) :-
    authority_protecting_fundamental_rights(A),
    high_risk_ai_system(S),
    documentation_under_regulation(D),
    accessible_language_and_format(D),
    necessary_for_mandate(D, A),
    within_jurisdiction(A).

must_inform_market_surveillance_authority(A, MSA, request_access(documentation(D))) :-
    authority_protecting_fundamental_rights(A),
    market_surveillance_authority(MSA),
    member_state_of_authority(A, MS),
    member_state_of_authority(MSA, MS),
    must_request_access(A, documentation(D)).

must_identify_and_list_authorities(MS, List) :-
    member_state(MS),
    par_2_deadline(Deadline),
    before(Deadline),
    findall(A, authority_protecting_fundamental_rights(A), Authorities),
    publicly_available(List),
    contains_list_of(List, Authorities).

must_notify_commission(MS, list(Authorities)) :-
    member_state(MS),
    must_identify_and_list_authorities(MS, _List),
    findall(A, authority_protecting_fundamental_rights(A), Authorities).

must_notify_member_states(MS, list(Authorities)) :-
    member_state(MS),
    must_identify_and_list_authorities(MS, _List),
    findall(A, authority_protecting_fundamental_rights(A), Authorities).

must_keep_list_up_to_date(MS, List) :-
    member_state(MS),
    identified_authority_list(List),
    contains_list_of(List, Authorities),
    forall(authority_protecting_fundamental_rights(A), member(A, Authorities)).

may_request_testing(A, MSA, testing(S, technical_means)) :-
    authority_protecting_fundamental_rights(A),
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    documentation_under_regulation(D),
    insufficient_documentation(D),
    \+ can_ascertain_infringement(D),
    reasoned_request_for_testing(A, MSA).

must_organise_testing(MSA, testing(S, technical_means), A) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    may_request_testing(A, MSA, testing(S, technical_means)),
    close_involvement_in_testing(A, testing(S, technical_means)),
    reasonable_time(Period),
    within(Period, request(A, MSA)).

confidentiality_obligations_apply(information_or_documentation(I)) :-
    authority_protecting_fundamental_rights(A),
    obtained(A, I),
    documentation_under_regulation(I).

% Provenance
provenance(authority_protecting_fundamental_rights/1, 'celex:32024R1689/oj#art_77').
provenance(par_2_deadline/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_access/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/3, 'celex:32024R1689/oj#art_77').
provenance(must_identify_and_list_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify_commission/2, 'celex:32024R1689/oj#art_77').
provenance(must_notify_member_states/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/2, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/3, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/3, 'celex:32024R1689/oj#art_77').
provenance(confidentiality_obligations_apply/1, 'celex:32024R1689/oj#art_77').

% References
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_1', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77/par_1', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77/par_2', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_3', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_77').
references('celex:32024R1689/oj#art_77/par_4', 'celex:32024R1689/oj#art_78').
