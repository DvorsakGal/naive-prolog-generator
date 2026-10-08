% unit       : celex:32024R1689/oj#art_22
% title      : Authorised representatives of providers of high-risk AI systems
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : d7fce63cc7a3a3ea295ead4926bb9310a24825e5b0caba0d52dd1d72d3636c57
% model      : gpt-oss:120b-cloud
% prompt sha : 2642222c1a1f64715272b71862fa7a74c2977df744f37fd55fae053df430b1aa
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred third_country_provider/1, gloss('provider established in a third country'), source('celex:32024R1689/oj#art_22').
:- pred established_in_union/1, gloss('entity established in the Union'), source('celex:32024R1689/oj#art_22').
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_22').

:- pred required_appoint_authorised_representative/2, gloss('provider must appoint an authorised representative'), source('celex:32024R1689/oj#art_22').
:- pred required_enable_authorised_representative/2, gloss('provider must enable its authorised representative to perform mandated tasks'), source('celex:32024R1689/oj#art_22').
:- pred required_perform_task/2, gloss('authorised representative must perform a mandated task'), source('celex:32024R1689/oj#art_22').
:- pred task/1, gloss('specific task that the authorised representative must carry out'), source('celex:32024R1689/oj#art_22').

:- pred required_verify_declaration_and_assessment/1, gloss('authorised representative must verify EU declaration of conformity and conformity assessment'), source('celex:32024R1689/oj#art_22').
:- pred required_keep_documents_for_10_years/1, gloss('authorised representative must keep documentation for ten years'), source('celex:32024R1689/oj#art_22').
:- pred required_provide_information_on_request/1, gloss('authorised representative must provide information and documentation on a reasoned request'), source('celex:32024R1689/oj#art_22').
:- pred required_cooperate_with_authorities/1, gloss('authorised representative must cooperate with competent authorities'), source('celex:32024R1689/oj#art_22').
:- pred required_comply_with_registration_obligations/1, gloss('authorised representative must comply with registration obligations'), source('celex:32024R1689/oj#art_22').

:- pred must_provide_copy_of_mandate/2, gloss('authorised representative must provide a copy of the mandate to a market surveillance authority on request'), source('celex:32024R1689/oj#art_22').
:- pred required_terminate_mandate/1, gloss('authorised representative must terminate the mandate if the provider breaches obligations'), source('celex:32024R1689/oj#art_22').
:- pred must_inform_authority_of_termination/2, gloss('authorised representative must inform a relevant authority of the termination of the mandate'), source('celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% Obligations concerning appointment of an authorised representative
required_appoint_authorised_representative(P, AR) :-
    provider(P),
    third_country_provider(P),
    high_risk_ai_system(S),
    placing_on_market(S),
    authorised_representative(AR),
    established_in_union(AR).

provenance(required_appoint_authorised_representative/2, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% Obligation to enable the authorised representative
required_enable_authorised_representative(P, AR) :-
    provider(P),
    provider(P),
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_enable_authorised_representative/2, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% General task performance obligation
required_perform_task(AR, T) :-
    authorised_representative(AR),
    authorised_representative(AR),
    task(T),
    task(T).

provenance(required_perform_task/2, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% Specific tasks enumerated in the mandate
task(verify_declaration_and_assessment).
task(keep_documents_for_10_years).
task(provide_information_on_request).
task(cooperate_with_authorities).
task(comply_with_registration_obligations).

required_verify_declaration_and_assessment(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_verify_declaration_and_assessment/1, 'celex:32024R1689/oj#art_22').

required_keep_documents_for_10_years(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_keep_documents_for_10_years/1, 'celex:32024R1689/oj#art_22').

required_provide_information_on_request(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_provide_information_on_request/1, 'celex:32024R1689/oj#art_22').

required_cooperate_with_authorities(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_cooperate_with_authorities/1, 'celex:32024R1689/oj#art_22').

required_comply_with_registration_obligations(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_comply_with_registration_obligations/1, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% Provision of the mandate copy to market surveillance authorities
must_provide_copy_of_mandate(AR, Auth) :-
    authorised_representative(AR),
    authorised_representative(AR),
    market_surveillance_authority(Auth),
    market_surveillance_authority(Auth).

provenance(must_provide_copy_of_mandate/2, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% Termination of the mandate and notification obligations
required_terminate_mandate(AR) :-
    authorised_representative(AR),
    authorised_representative(AR).

provenance(required_terminate_mandate/1, 'celex:32024R1689/oj#art_22').

must_inform_authority_of_termination(AR, Auth) :-
    authorised_representative(AR),
    authorised_representative(AR),
    market_surveillance_authority(Auth),
    market_surveillance_authority(Auth).

provenance(must_inform_authority_of_termination/2, 'celex:32024R1689/oj#art_22').

% -----------------------------------------------------------------
% References cited in this provision (deduplicated)
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_74/par_10').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_22/par_3/unp_1/pnt_b').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_12/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#art_49/par_1').
references('celex:32024R1689/oj#art_22', 'celex:32024R1689/oj#anx_8/sec_1/pnt_3').
