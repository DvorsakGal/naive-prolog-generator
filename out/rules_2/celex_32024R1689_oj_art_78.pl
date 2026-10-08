% unit       : celex:32024R1689/oj#art_78
% title      : Confidentiality
% context    : CHAPTER IX POST-MARKET MONITORING, INFORMATION SHARING AND MARKET SURVEILLANCE > SECTION 3 Enforcement
% slice sha  : 1dff3609d206c4fab2f355d033085d4acb34aa2cbc68be12b141cf0248fcc80f
% model      : gpt-oss:120b-cloud
% prompt sha : e960905a9845ca71d1e19ba6eb2eb2c86ae320bb4a2dc82a0b86b3d764b1bd8a
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred must_respect_confidentiality/2, gloss('obligation to keep information confidential'), source('celex:32024R1689/oj#art_78').
:- pred must_request_only_necessary_data/2, gloss('obligation to request only data strictly necessary'), source('celex:32024R1689/oj#art_78').
:- pred must_implement_cybersecurity_measures/1, gloss('obligation to put in place adequate cybersecurity measures'), source('celex:32024R1689/oj#art_78').
:- pred must_delete_data_when_no_longer_needed/2, gloss('obligation to delete data when no longer needed'), source('celex:32024R1689/oj#art_78').
:- pred prohibited_disclosure_without_consultation/1, gloss('prohibition on disclosing confidential information without prior consultation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_disclosure_with_consultation/1, gloss('permission to disclose confidential information after prior consultation'), source('celex:32024R1689/oj#art_78').
:- pred permitted_exchange_confidential_info/2, gloss('permission to exchange confidential information with third‑country authorities'), source('celex:32024R1689/oj#art_78').

% --- auxiliary predicates introduced for the provision ---
:- pred commission/1, gloss('the European Commission'), source('celex:32024R1689/oj#art_78').
:- pred member_state/1, gloss('a Member State'), source('celex:32024R1689/oj#art_78').
:- pred other_involved_actor/1, gloss('any other natural or legal person involved in the application of the Regulation'), source('celex:32024R1689/oj#art_78').
:- pred confidentiality_category/1, gloss('category of information protected by confidentiality'), source('celex:32024R1689/oj#art_78').
:- pred authority_involved/1, gloss('authority involved in the application of the Regulation'), source('celex:32024R1689/oj#art_78').
:- pred data_strictly_necessary/1, gloss('data that is strictly necessary for risk assessment or exercise of powers'), source('celex:32024R1689/oj#art_78').
:- pred data_no_longer_needed/1, gloss('data that is no longer needed for its original purpose'), source('celex:32024R1689/oj#art_78').
:- pred confidential_exchange/1, gloss('information exchanged on a confidential basis between competent authorities'), source('celex:32024R1689/oj#art_78').
:- pred high_risk_ai_system_used_by_law_enforcement/1, gloss('high‑risk AI system used by law‑enforcement, border control, immigration or asylum authorities'), source('celex:32024R1689/oj#art_78').
:- pred jeopardises_public_security/1, gloss('disclosure would jeopardise public or national security interests'), source('celex:32024R1689/oj#art_78').
:- pred prior_consultation/2, gloss('prior consultation of the originating authority and the deployer'), source('celex:32024R1689/oj#art_78').
:- pred confidentiality_arrangement/2, gloss('bilateral or multilateral confidentiality arrangement with a third‑country authority'), source('celex:32024R1689/oj#art_78').

% --- core rules derived from the provision ---

must_respect_confidentiality(Actor, Info) :-
    (   commission(Actor)
    ;   market_surveillance_authority(Actor)
    ;   notified_body(Actor)
    ;   other_involved_actor(Actor)
    ),
    confidentiality_category(Info),
    confidentiality_category(Info).

must_request_only_necessary_data(Authority, Data) :-
    authority_involved(Authority),
    data_strictly_necessary(Data).

must_implement_cybersecurity_measures(Authority) :-
    authority_involved(Authority).

must_delete_data_when_no_longer_needed(Authority, Data) :-
    authority_involved(Authority),
    data_no_longer_needed(Data).

prohibited_disclosure_without_consultation(Info) :-
    confidential_exchange(Info),
    high_risk_ai_system_used_by_law_enforcement(Info),
    jeopardises_public_security(Info),
    \+ permitted_disclosure_with_consultation(Info).

permitted_disclosure_with_consultation(Info) :-
    prior_consultation(_OriginAuthority, _Deployer),
    confidential_exchange(Info),
    confidential_exchange(Info).

permitted_exchange_confidential_info(Actor, ThirdCountryAuthority) :-
    (   commission(Actor)
    ;   member_state(Actor)
    ),
    confidentiality_arrangement(Actor, ThirdCountryAuthority).

% --- provenance facts ---

provenance(must_respect_confidentiality/2, 'celex:32024R1689/oj#art_78').
provenance(must_request_only_necessary_data/2, 'celex:32024R1689/oj#art_78').
provenance(must_implement_cybersecurity_measures/1, 'celex:32024R1689/oj#art_78').
provenance(must_delete_data_when_no_longer_needed/2, 'celex:32024R1689/oj#art_78').
provenance(prohibited_disclosure_without_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_disclosure_with_consultation/1, 'celex:32024R1689/oj#art_78').
provenance(permitted_exchange_confidential_info/2, 'celex:32024R1689/oj#art_78').

% --- reference facts (deduplicated) ---

references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj#art_5').
references('celex:32024R1689/oj#art_78', 'celex:32016L0943/oj').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_2').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_78/par_3').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_1').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_6').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_3/pnt_7').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_8').
references('celex:32024R1689/oj#art_78', 'celex:32024R1689/oj#art_74/par_9').
