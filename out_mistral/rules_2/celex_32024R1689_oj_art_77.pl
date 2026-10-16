% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : mistralai/mistral-large-4-0
% signature  : 362e543ab06d6c5e207c636642da9d28a7b251c0100c44d0999d418152e71069
% call key   : a1d50128c3a4fed6db1019156b6d07fb9eaa51679cf7317cda59a9d7066a55cc
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority or body supervising or enforcing obligations under Union law protecting fundamental rights'), source('celex:32024R1689/oj#art_77').
:- pred documentation_created_or_maintained_under_regulation/1, gloss('documentation created or maintained under this regulation'), source('celex:32024R1689/oj#art_77').
:- pred accessible_language_and_format/1, gloss('documentation in accessible language and format'), source('celex:32024R1689/oj#art_77').
:- pred access_necessary_for_mandate/2, gloss('access to documentation is necessary for effectively fulfilling mandate of authority'), source('celex:32024R1689/oj#art_77').
:- pred request_and_access_documentation/2, gloss('fundamental rights authority requests and accesses documentation'), source('celex:32024R1689/oj#art_77').
:- pred inform_market_surveillance_authority_of_request/2, gloss('fundamental rights authority informs market surveillance authority of request'), source('celex:32024R1689/oj#art_77').
:- pred identified_by_member_state/2, gloss('member state identifies fundamental rights authority'), source('celex:32024R1689/oj#art_77').
:- pred list_publicly_available/1, gloss('list of fundamental rights authorities made publicly available'), source('celex:32024R1689/oj#art_77').
:- pred notified_to_commission_and_member_states/2, gloss('member state notifies list to Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred list_kept_up_to_date/1, gloss('member state keeps list of fundamental rights authorities up to date'), source('celex:32024R1689/oj#art_77').
:- pred documentation_insufficient_to_ascertain_infringement/1, gloss('documentation insufficient to ascertain whether infringement of fundamental rights obligations has occurred'), source('celex:32024R1689/oj#art_77').
:- pred reasoned_request_to_market_surveillance_authority/2, gloss('fundamental rights authority makes reasoned request to market surveillance authority'), source('celex:32024R1689/oj#art_77').
:- pred organise_testing_of_high_risk_ai_system/2, gloss('market surveillance authority organises testing of high-risk AI system'), source('celex:32024R1689/oj#art_77').
:- pred close_involvement_of_requesting_authority/2, gloss('testing organised with close involvement of requesting fundamental rights authority'), source('celex:32024R1689/oj#art_77').
:- pred testing_within_reasonable_time/1, gloss('testing organised within reasonable time following request'), source('celex:32024R1689/oj#art_77').
:- pred information_treated_confidentially/2, gloss('information or documentation obtained treated in accordance with confidentiality obligations'), source('celex:32024R1689/oj#art_77').

fundamental_rights_authority(A) :-
    national_public_authority_or_body(A),
    supervises_or_enforces_fundamental_rights_obligations(A).

request_and_access_documentation(A, D) :-
    fundamental_rights_authority(A),
    documentation_created_or_maintained_under_regulation(D),
    high_risk_ai_system(S),
    related_to_use(D, S),
    accessible_language_and_format(D),
    access_necessary_for_mandate(A, D).

must_inform_market_surveillance_authority(A, request(D)) :-
    fundamental_rights_authority(A),
    request_and_access_documentation(A, D),
    member_state(M),
    market_surveillance_authority(MSA),
    concerned_member_state(A, M),
    market_surveillance_authority_of_member_state(MSA, M).

identified_by_member_state(M, A) :-
    member_state(M),
    fundamental_rights_authority(A).

list_publicly_available(L) :-
    member_state(M),
    identified_by_member_state(M, A),
    list_contains(L, A).

notified_to_commission_and_member_states(M, L) :-
    member_state(M),
    list_publicly_available(L),
    commission(C),
    other_member_states(OMS),
    notify(M, C, L),
    notify(M, OMS, L).

list_kept_up_to_date(M) :-
    member_state(M),
    list_publicly_available(L),
    member_state_maintains_list(M, L).

reasoned_request_to_market_surveillance_authority(A, MSA) :-
    fundamental_rights_authority(A),
    documentation_insufficient_to_ascertain_infringement(D),
    market_surveillance_authority(MSA),
    from_competent_authority(reasoned_request, A).

organise_testing_of_high_risk_ai_system(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    reasoned_request_to_market_surveillance_authority(A, MSA),
    close_involvement_of_requesting_authority(A, MSA),
    testing_within_reasonable_time(request(A, S)).

must_treat_information_confidentially(A, info(D)) :-
    fundamental_rights_authority(A),
    information_or_documentation_obtained(A, D),
    pursuant_to(D, 'celex:32024R1689/oj#art_77'),
    confidentiality_obligations_set_out_in('celex:32024R1689/oj#art_78').

provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(documentation_created_or_maintained_under_regulation/1, 'celex:32024R1689/oj#art_77').
provenance(accessible_language_and_format/1, 'celex:32024R1689/oj#art_77').
provenance(access_necessary_for_mandate/2, 'celex:32024R1689/oj#art_77').
provenance(request_and_access_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(inform_market_surveillance_authority_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(identified_by_member_state/2, 'celex:32024R1689/oj#art_77').
provenance(list_publicly_available/1, 'celex:32024R1689/oj#art_77').
provenance(notified_to_commission_and_member_states/2, 'celex:32024R1689/oj#art_77').
provenance(list_kept_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(documentation_insufficient_to_ascertain_infringement/1, 'celex:32024R1689/oj#art_77').
provenance(reasoned_request_to_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(organise_testing_of_high_risk_ai_system/2, 'celex:32024R1689/oj#art_77').
provenance(close_involvement_of_requesting_authority/2, 'celex:32024R1689/oj#art_77').
provenance(testing_within_reasonable_time/1, 'celex:32024R1689/oj#art_77').
provenance(information_treated_confidentially/2, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
