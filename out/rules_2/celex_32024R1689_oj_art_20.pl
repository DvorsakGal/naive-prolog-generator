% unit       : celex:32024R1689/oj#art_20
% title      : Corrective actions and duty of information
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : gpt-oss:120b-cloud
% prompt sha : 21fd64530892d37fdb25fa85ffffbfe529e6f1c9abed045bffdb52fefde3a5d9
% signature : 835a6d55688184e8efa41e499cd49eace0c13572c8ebd52ffc66d4fad12ea27b
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred non_conformity_applies/1, gloss('system not in conformity'), source('celex:32024R1689/oj#art_20').
:- pred risk_present/1, gloss('risk presented by system'), source('celex:32024R1689/oj#art_20').
:- pred provider_aware_of_risk/2, gloss('provider aware of risk for system'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    non_conformity_applies(S).

must_inform_distributor(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    distributor(_D).

must_inform_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    deployer(_Deployer).

must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    authorised_representative(_AR).

must_inform_importer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    importer(_Imp).

must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S).

must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    market_surveillance_authority(_MA),
    risk_present(S),
    provider_aware_of_risk(P, S).

must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    notified_body(_NB),
    risk_present(S),
    provider_aware_of_risk(P, S).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributor/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployer/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importer/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authority/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
