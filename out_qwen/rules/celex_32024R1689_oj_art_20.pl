% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : qwen/qwen3.7-max
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : e3c0a00035244fff18cea19cdd7fe8910b4db450993a026612fde2b9a74cfa48
% cached     : False
% title      : Corrective actions and duty of information
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk under this regulation'), source('celex:32024R1689/oj#art_20').
:- pred non_conformity_applies/1, gloss('system is not in conformity with the regulation'), source('celex:32024R1689/oj#art_20').
:- pred risk_presents/1, gloss('system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_20').
:- pred certificate_issued_for/2, gloss('notified body issued a certificate for the system'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    placing_on_market(System),
    non_conformity_applies(System).

must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    putting_into_service(System),
    non_conformity_applies(System).

must_inform(Provider, distributors(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System).

must_inform(Provider, deployers(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    deployer(_D).

must_inform(Provider, authorised_representative(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    authorised_representative(_R).

must_inform(Provider, importers(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    non_conformity_applies(System),
    importer(_I).

must_investigate_causes(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System).

must_inform(Provider, market_surveillance_authority(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System).

must_inform(Provider, notified_body(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_presents(System),
    certificate_issued_for(_Body, System).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_20').
provenance(non_conformity_applies/1, 'celex:32024R1689/oj#art_20').
provenance(risk_presents/1, 'celex:32024R1689/oj#art_20').
provenance(certificate_issued_for/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
