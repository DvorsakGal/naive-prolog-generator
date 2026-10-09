% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : gpt-oss:120b-cloud
% signature  : 58e38705e9c73a9544b26bad9a5800681f39e7ee543b83f5b600690c8280f095
% call key   : b34aef7996f86249a46293c8267f39bc317213966713d9319ece6eafb220b911
% cached     : False
% title      : Corrective actions and duty of information
:- pred must_take_corrective_action/2, gloss('provider must take corrective action for a non‑conforming high‑risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform/2, gloss('actor must inform a specified party or authority about a high‑risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate/2, gloss('provider must investigate the causes of a risk associated with a high‑risk AI system'), source('celex:32024R1689/oj#art_20').
:- pred risk_within_art_79_par_1/1, gloss('high‑risk AI system presents a risk as defined in article 79 paragraph 1'), source('celex:32024R1689/oj#art_20').

must_take_corrective_action(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System).

must_inform(Provider, inform(distributor, System)) :-
    provider(Provider),
    distributor(_),
    high_risk_ai_system(System).

must_inform(Provider, inform(deployer, System)) :-
    provider(Provider),
    deployer(_),
    high_risk_ai_system(System).

must_inform(Provider, inform(authorised_representative, System)) :-
    provider(Provider),
    authorised_representative(_),
    high_risk_ai_system(System).

must_inform(Provider, inform(importer, System)) :-
    provider(Provider),
    importer(_),
    high_risk_ai_system(System).

must_investigate(Provider, System) :-
    provider(Provider),
    high_risk_ai_system(System),
    risk_within_art_79_par_1(System).

must_inform(Provider, market_surveillance_authority) :-
    provider(Provider),
    market_surveillance_authority(_).

must_inform(Provider, notified_body) :-
    provider(Provider),
    notified_body(_).

provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate/2, 'celex:32024R1689/oj#art_20').
provenance(risk_within_art_79_par_1/1, 'celex:32024R1689/oj#art_20').

references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
