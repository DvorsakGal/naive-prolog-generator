% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : gpt-oss:120b-cloud
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : f6fc8b7e2d38af5039dabac2614e54de292e2c4d9fae67504fb66c1d060f08f6
% cached     : False
% title      : Corrective actions and duty of information
:- pred not_in_conformity/2, gloss('provider considers or has reason to consider the system not in conformity'), source('celex:32024R1689/oj#art_20').
:- pred risk_present/2, gloss('provider is aware that the system presents a risk'), source('celex:32024R1689/oj#art_20').
:- pred must_take_corrective_action/2, gloss('provider must take corrective actions for the system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform/2, gloss('provider must inform a party about the system'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(Provider, System) :-
    provider(Provider),
    ai_system(System),
    (   placing_on_market(System)
    ;   putting_into_service(System)
    ),
    not_in_conformity(Provider, System).

must_inform(Provider, distributors_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).

must_inform(Provider, deployers_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).

must_inform(Provider, authorised_representative_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).

must_inform(Provider, importers_of(System)) :-
    provider(Provider),
    ai_system(System),
    not_in_conformity(Provider, System).

must_investigate(Provider, System) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).

must_inform(Provider, market_surveillance_authority_of(System)) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).

must_inform(Provider, notified_body_of(System)) :-
    provider(Provider),
    ai_system(System),
    risk_present(Provider, System).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
