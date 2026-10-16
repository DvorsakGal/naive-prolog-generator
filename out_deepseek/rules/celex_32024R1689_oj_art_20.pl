% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : deepseek/deepseek-v4-pro
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 609a5a3ed8f206ff2b7e992775bda6a957e4d766e37b2a592fd09b3593e63915
% cached     : False
% title      : Corrective actions and duty of information
:- pred corrective_action/1, gloss('action to bring system into conformity, withdraw, disable or recall'), source('celex:32024R1689/oj#art_20').
:- pred risk_presenting_system/1, gloss('high-risk AI system presenting a risk under Article 79(1)'), source('celex:32024R1689/oj#art_20').

% Article 20(1) – corrective actions and duty to inform supply chain
must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    placed_on_market_or_put_into_service(Provider, System),
    considers_or_has_reason_to_consider_nonconformity(Provider, System).

must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    distributor_of(Distributor, System),
    must_inform(Provider, Distributor).

must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    deployer_of(Deployer, System),
    must_inform(Provider, Deployer).

must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    authorised_representative_of(Rep, System),
    must_inform(Provider, Rep).

must_inform_supply_chain(Provider, System) :-
    must_take_corrective_action(Provider, System),
    importer_of(Importer, System),
    must_inform(Provider, Importer).

% Article 20(2) – risk investigation and notification
must_investigate_and_inform(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presenting_system(System),
    becomes_aware_of_risk(Provider, System).

must_inform_market_surveillance(Provider, System) :-
    must_investigate_and_inform(Provider, System),
    market_surveillance_authority(Authority),
    competent_for(Authority, System),
    must_inform(Provider, Authority).

must_inform_notified_body(Provider, System) :-
    must_investigate_and_inform(Provider, System),
    notified_body(Body),
    issued_certificate_for(Body, System),
    must_inform(Provider, Body).

% Supporting predicates
considers_or_has_reason_to_consider_nonconformity(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

placed_on_market_or_put_into_service(Provider, System) :-
    placing_on_market(System).
placed_on_market_or_put_into_service(Provider, System) :-
    putting_into_service(System).

becomes_aware_of_risk(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

% Provenance
provenance(corrective_action/1, 'celex:32024R1689/oj#art_20').
provenance(risk_presenting_system/1, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_supply_chain/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_and_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').

% References
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
