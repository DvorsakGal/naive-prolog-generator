% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : mistralai/mistral-large-4-0
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : b6fd265ea8aa834b11571edbaba6c3f737092ed7ca144cf3c98dd5ad75b9507b
% cached     : False
% title      : Corrective actions and duty of information
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_20').
:- pred nonconformity/1, gloss('failure to comply with applicable requirements'), source('celex:32024R1689/oj#art_20').
:- pred corrective_action/1, gloss('action to bring a system into conformity, withdraw, disable, or recall'), source('celex:32024R1689/oj#art_20').
:- pred presents_risk/1, gloss('system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_20').
:- pred investigate_causes/2, gloss('investigation of causes of risk in collaboration with deployer'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S),
    nonconformity(S).

must_take_corrective_action(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S),
    nonconformity(S).

must_inform(Provider, nonconformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    placing_on_market(S),
    nonconformity(S).

must_inform(Provider, nonconformity(S)) :-
    provider(Provider),
    high_risk_ai_system(S),
    putting_into_service(S),
    nonconformity(S).

must_inform_distributors(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).

must_inform_deployers(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).

must_inform_authorised_representative(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).

must_inform_importers(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    nonconformity(S).

must_investigate_causes(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S).

must_inform_market_surveillance_authorities(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S).

must_inform_notified_body(Provider, S) :-
    provider(Provider),
    high_risk_ai_system(S),
    presents_risk(S),
    notified_body(B),
    certificate_issued_for(B, S).

certificate_issued_for(B, S) :-
    notified_body(B),
    high_risk_ai_system(S).

provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(nonconformity/1, 'celex:32024R1689/oj#art_20').
provenance(corrective_action/1, 'celex:32024R1689/oj#art_20').
provenance(presents_risk/1, 'celex:32024R1689/oj#art_20').
provenance(investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_distributors/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_deployers/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_authorised_representative/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_importers/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_market_surveillance_authorities/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform_notified_body/2, 'celex:32024R1689/oj#art_20').
provenance(certificate_issued_for/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
