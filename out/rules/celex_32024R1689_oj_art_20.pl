% unit       : celex:32024R1689/oj#art_20
% title      : Corrective actions and duty of information
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : gpt-oss:120b-cloud
% prompt sha : 2877992088ef472985a37c2c0d7ae9492002c9c3e0673398d26195e4d91c6924
% signature : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% cached     : False
:- pred high_risk_ai_system/1, gloss('high‑risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred provider_considers_non_conformity/2, gloss('provider considers system not in conformity'), source('celex:32024R1689/oj#art_20').
:- pred provider_aware_of_risk/2, gloss('provider aware of risk presented by system'), source('celex:32024R1689/oj#art_20').
:- pred risk_present/1, gloss('risk presented by high‑risk AI system'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    (placing_on_market(S) ; putting_into_service(S)),
    provider_considers_non_conformity(P, S).

must_inform_distributor(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    distributor(D),
    D = D.

must_inform_deployer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    deployer(Dp),
    Dp = Dp.

must_inform_authorised_representative(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    authorised_representative(AR),
    AR = AR.

must_inform_importer(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    importer(I),
    I = I.

must_investigate_causes(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S).

must_inform_market_surveillance_authority(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S),
    market_surveillance_authority(MSA),
    MSA = MSA.

must_inform_notified_body(P, S) :-
    provider(P),
    high_risk_ai_system(S),
    risk_present(S),
    provider_aware_of_risk(P, S),
    notified_body(NB),
    NB = NB.

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
