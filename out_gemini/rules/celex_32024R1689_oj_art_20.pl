% unit       : celex:32024R1689/oj#art_20
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 72608c118ac081e2665d0864a978be5c48efe2339eff1799262a2170e0c79247
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 8ab8af5f11960c727eb73898f85b4df7e093a293f55413101cf0bfb84d4af715
% cached     : False
% title      : Corrective actions and duty of information
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_20').
:- pred non_conforming/1, gloss('AI system not in conformity with this Regulation'), source('celex:32024R1689/oj#art_20').
:- pred reasons_to_consider_non_conforming/2, gloss('provider considers or has reason to consider system non-conforming'), source('celex:32024R1689/oj#art_20').
:- pred places_on_market/2, gloss('provider placed AI system on the market'), source('celex:32024R1689/oj#art_20').
:- pred puts_into_service/2, gloss('provider put AI system into service'), source('celex:32024R1689/oj#art_20').
:- pred must_take_corrective_action/2, gloss('provider must immediately take corrective actions regarding AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_inform/2, gloss('actor must inform recipient about specified subject matter'), source('celex:32024R1689/oj#art_20').
:- pred presents_risk/1, gloss('AI system presents a risk within the meaning of Art. 79(1)'), source('celex:32024R1689/oj#art_20').
:- pred aware_of_risk/2, gloss('provider becomes aware of a risk presented by AI system'), source('celex:32024R1689/oj#art_20').
:- pred must_investigate_causes/2, gloss('provider must immediately investigate the causes of risk'), source('celex:32024R1689/oj#art_20').
:- pred distributor_of/2, gloss('distributor of an AI system'), source('celex:32024R1689/oj#art_20').
:- pred deployer_of/2, gloss('deployer of an AI system'), source('celex:32024R1689/oj#art_20').
:- pred authorised_representative_of/2, gloss('authorised representative for an AI system or provider'), source('celex:32024R1689/oj#art_20').
:- pred importer_of/2, gloss('importer of an AI system'), source('celex:32024R1689/oj#art_20').
:- pred competent_market_surveillance_authority/2, gloss('market surveillance authority competent for AI system'), source('celex:32024R1689/oj#art_20').
:- pred certifying_notified_body/2, gloss('notified body that issued a certificate for AI system under Art. 44'), source('celex:32024R1689/oj#art_20').

% Paragraph 1: Corrective actions
must_take_corrective_action(Provider, corrective_action(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System).

% Paragraph 1: Duty of information to supply chain and deployers
must_inform(Provider, information(Distributor, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    distributor_of(Distributor, System).

must_inform(Provider, information(Deployer, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    deployer_of(Deployer, System).

must_inform(Provider, information(Representative, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    authorised_representative_of(Representative, Provider).

must_inform(Provider, information(Importer, non_compliance_and_corrective_action(System))) :-
    provider(Provider),
    high_risk_ai_system(System),
    ( places_on_market(Provider, System)
    ; puts_into_service(Provider, System)
    ),
    reasons_to_consider_non_conforming(Provider, System),
    importer_of(Importer, System).

% Paragraph 2: Risk investigation
must_investigate_causes(Provider, risk(System)) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System).

% Paragraph 2: Inform market surveillance authority and notified body
must_inform(Provider, information(Authority, details(System, non_compliance, corrective_actions))) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System),
    competent_market_surveillance_authority(Authority, System).

must_inform(Provider, information(Body, details(System, non_compliance, corrective_actions))) :-
    provider(Provider),
    high_risk_ai_system(System),
    presents_risk(System),
    aware_of_risk(Provider, System),
    certifying_notified_body(Body, System).

% Provenance
provenance(must_take_corrective_action/2, 'celex:32024R1689/oj#art_20').
provenance(must_inform/2, 'celex:32024R1689/oj#art_20').
provenance(must_investigate_causes/2, 'celex:32024R1689/oj#art_20').

% References
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_20', 'celex:32024R1689/oj#art_44').
