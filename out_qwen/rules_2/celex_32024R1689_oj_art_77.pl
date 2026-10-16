% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : qwen/qwen3.7-max
% signature  : e4753a31cf344adab4695e31db94c98c6773178c8fbc88c7d117d5f457f38571
% call key   : 0e91cd075868fa1a5e99bca4ead16b4aa2338a30d3b5188be9fea4c5811b4882
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority or body supervising fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred must_inform_msa_of_request/2, gloss('fundamental rights authority must inform market surveillance authority of documentation request'), source('celex:32024R1689/oj#art_77').
:- pred must_identify_fundamental_rights_authorities/1, gloss('Member State must identify and list fundamental rights authorities'), source('celex:32024R1689/oj#art_77').
:- pred must_notify_fundamental_rights_authority_list/2, gloss('Member State must notify list of fundamental rights authorities to Commission and other Member States'), source('celex:32024R1689/oj#art_77').
:- pred must_keep_fundamental_rights_authority_list_updated/1, gloss('Member State must keep list of fundamental rights authorities up to date'), source('celex:32024R1689/oj#art_77').
:- pred may_request_testing_via_msa/2, gloss('fundamental rights authority may request market surveillance authority to organise testing'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority must organise testing of high-risk AI system upon reasoned request'), source('celex:32024R1689/oj#art_77').

fundamental_rights_authority(A) :-
    operator(_),
    high_risk_ai_system_annex_iii(_).

must_inform_msa_of_request(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA).

must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).

must_notify_fundamental_rights_authority_list(MS, Recipient) :-
    member_state(MS),
    (Recipient = commission ; member_state(Recipient)).

must_keep_fundamental_rights_authority_list_updated(MS) :-
    member_state(MS).

may_request_testing_via_msa(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    documentation_insufficient_for_infringement_assessment(A).

must_organise_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system(S),
    fundamental_rights_authority(A),
    reasoned_request(A, testing(S)).

provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(must_inform_msa_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_fundamental_rights_authority_list/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_fundamental_rights_authority_list_updated/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing_via_msa/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
