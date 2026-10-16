% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : deepseek/deepseek-v4-pro
% signature  : 57b2a4ca401076415de53c372c8061cd1af049bdf0f05d4e65104a9d23e370e3
% call key   : a387d1b335d748b114cd6a1afff1729a3e497ad5080f987c034d387b0f1cf754
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority supervising fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred must_identify_fundamental_rights_authorities/1, gloss('Member State must identify authorities under Article 77(1)'), source('celex:32024R1689/oj#art_77').
:- pred must_notify_list_of_authorities/2, gloss('Member State must notify list to Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred must_keep_list_up_to_date/1, gloss('Member State must keep list of authorities up to date'), source('celex:32024R1689/oj#art_77').
:- pred must_inform_market_surveillance_authority/2, gloss('authority must inform market surveillance authority of documentation request'), source('celex:32024R1689/oj#art_77').
:- pred may_request_documentation/2, gloss('authority may request documentation created under the Regulation'), source('celex:32024R1689/oj#art_77').
:- pred may_request_testing/2, gloss('authority may request market surveillance authority to organise testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority must organise testing with involvement of requesting authority'), source('celex:32024R1689/oj#art_77').
:- pred must_treat_as_confidential/1, gloss('information obtained must be treated in accordance with Article 78'), source('celex:32024R1689/oj#art_77').

fundamental_rights_authority(A) :-
    national_competent_authority(A),
    supervises_fundamental_rights_obligations(A).

supervises_fundamental_rights_obligations(A) :-
    national_competent_authority(A),
    high_risk_ai_system(S),
    relates_to_fundamental_rights(S).

may_request_documentation(A, documentation(S)) :-
    fundamental_rights_authority(A),
    high_risk_ai_system(S),
    documentation_created_under_regulation(S),
    access_necessary_for_mandate(A, S).

must_inform_market_surveillance_authority(A, request(A, documentation(S))) :-
    may_request_documentation(A, documentation(S)),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).

must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).

must_notify_list_of_authorities(MS, list_of_authorities(MS)) :-
    must_identify_fundamental_rights_authorities(MS).

must_keep_list_up_to_date(MS) :-
    must_identify_fundamental_rights_authorities(MS).

may_request_testing(A, reasoned_request(A, S)) :-
    fundamental_rights_authority(A),
    high_risk_ai_system(S),
    documentation_insufficient_for_infringement_determination(A, S),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).

must_organise_testing(MSA, testing(S, A)) :-
    may_request_testing(A, reasoned_request(A, S)),
    market_surveillance_authority(MSA),
    member_state_concerned(MSA, A).

must_treat_as_confidential(information_obtained(A)) :-
    fundamental_rights_authority(A).

provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_list_of_authorities/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_list_up_to_date/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_as_confidential/1, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
