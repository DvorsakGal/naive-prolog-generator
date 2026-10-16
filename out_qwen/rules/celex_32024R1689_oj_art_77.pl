% unit       : celex:32024R1689/oj#art_77
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 8327ef2af54fa921a1bda3ea60e6f87bc301259ec9b9abf292810ec24a512e9e
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 78828292caa0a0faf90d1c0cf2038028777e11c13121fa567c07bc7b9a9d7228
% cached     : False
% title      : Powers of authorities protecting fundamental rights
:- pred fundamental_rights_authority/1, gloss('national public authority supervising fundamental rights obligations'), source('celex:32024R1689/oj#art_77').
:- pred high_risk_ai_system_annex_iii/1, gloss('high-risk AI system referred to in Annex III'), source('celex:32024R1689/oj#art_77').
:- pred must_request_documentation/2, gloss('authority requests documentation under the regulation'), source('celex:32024R1689/oj#art_77').
:- pred must_inform_msa_of_request/2, gloss('authority informs market surveillance authority of documentation request'), source('celex:32024R1689/oj#art_77').
:- pred must_identify_fundamental_rights_authorities/1, gloss('Member State identifies relevant authorities'), source('celex:32024R1689/oj#art_77').
:- pred must_publish_authority_list/1, gloss('Member State makes list of authorities publicly available'), source('celex:32024R1689/oj#art_77').
:- pred must_notify_authority_list/2, gloss('Member State notifies list to recipient'), source('celex:32024R1689/oj#art_77').
:- pred must_keep_authority_list_updated/1, gloss('Member State keeps list up to date'), source('celex:32024R1689/oj#art_77').
:- pred may_request_testing/2, gloss('authority requests testing through technical means'), source('celex:32024R1689/oj#art_77').
:- pred must_organise_testing/2, gloss('market surveillance authority organises testing'), source('celex:32024R1689/oj#art_77').
:- pred must_treat_information_confidentially/2, gloss('authority treats obtained information according to confidentiality obligations'), source('celex:32024R1689/oj#art_77').

fundamental_rights_authority(A) :-
    national_competent_authority(A).

high_risk_ai_system_annex_iii(S) :-
    ai_system(S).

must_request_documentation(A, S) :-
    fundamental_rights_authority(A),
    high_risk_ai_system_annex_iii(S),
    access_necessary_for_mandate(A, S).

must_inform_msa_of_request(A, MSA) :-
    fundamental_rights_authority(A),
    market_surveillance_authority(MSA),
    must_request_documentation(A, _S).

must_identify_fundamental_rights_authorities(MS) :-
    member_state(MS).

must_publish_authority_list(MS) :-
    member_state(MS).

must_notify_authority_list(MS, Recipient) :-
    member_state(MS),
    (Recipient = commission ; member_state(Recipient)).

must_keep_authority_list_updated(MS) :-
    member_state(MS).

may_request_testing(A, S) :-
    fundamental_rights_authority(A),
    high_risk_ai_system_annex_iii(S),
    documentation_insufficient_to_ascertain_infringement(A, S).

must_organise_testing(MSA, S) :-
    market_surveillance_authority(MSA),
    high_risk_ai_system_annex_iii(S),
    may_request_testing(_A, S).

must_treat_information_confidentially(A, Info) :-
    fundamental_rights_authority(A),
    obtained_pursuant_to_art_77(A, Info).

provenance(fundamental_rights_authority/1, 'celex:32024R1689/oj#art_77').
provenance(high_risk_ai_system_annex_iii/1, 'celex:32024R1689/oj#art_77').
provenance(must_request_documentation/2, 'celex:32024R1689/oj#art_77').
provenance(must_inform_msa_of_request/2, 'celex:32024R1689/oj#art_77').
provenance(must_identify_fundamental_rights_authorities/1, 'celex:32024R1689/oj#art_77').
provenance(must_publish_authority_list/1, 'celex:32024R1689/oj#art_77').
provenance(must_notify_authority_list/2, 'celex:32024R1689/oj#art_77').
provenance(must_keep_authority_list_updated/1, 'celex:32024R1689/oj#art_77').
provenance(may_request_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_organise_testing/2, 'celex:32024R1689/oj#art_77').
provenance(must_treat_information_confidentially/2, 'celex:32024R1689/oj#art_77').

references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#anx_3').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_77/par_1').
references('celex:32024R1689/oj#art_77', 'celex:32024R1689/oj#art_78').
