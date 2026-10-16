% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : cbafc0603a0b52113c7f8c7645b657e936dc802a1c2340f90da2cbaa618d19d2
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_24').
:- pred non_compliant_with_requirements/1, gloss('AI system not in conformity with Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk_article_79/1, gloss('AI system presents a risk within Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request/2, gloss('authority makes a reasoned request to an actor'), source('celex:32024R1689/oj#art_24').
:- pred competent_authority/1, gloss('competent national or relevant authority'), source('celex:32024R1689/oj#art_24').
:- pred prohibited_making_available_on_market/2, gloss('distributor is prohibited from making AI system available on market'), source('celex:32024R1689/oj#art_24').
:- pred must_verify/2, gloss('distributor must verify certain compliance conditions before making available'), source('celex:32024R1689/oj#art_24').
:- pred must_inform/2, gloss('distributor must inform specified party about non-conformity or risk'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure/2, gloss('distributor must ensure conditions or corrective actions'), source('celex:32024R1689/oj#art_24').
:- pred must_take_action/2, gloss('distributor must take corrective actions'), source('celex:32024R1689/oj#art_24').
:- pred must_provide/2, gloss('distributor must provide information and documentation to authority'), source('celex:32024R1689/oj#art_24').
:- pred must_cooperate/2, gloss('distributor must cooperate with authority'), source('celex:32024R1689/oj#art_24').

% Paragraph 1: Verification obligations before making available on the market
must_verify(Distributor, verification_requirements(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).

% Paragraph 2: Prohibition when considering system non-compliant, and duty to inform
prohibited_making_available_on_market(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    non_compliant_with_requirements(System).

must_inform(Distributor, risk_provider_or_importer(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk_article_79(System).

% Paragraph 3: Storage and transport conditions under responsibility
must_ensure(Distributor, compliance_during_storage_and_transport(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).

% Paragraph 4: Corrective actions and notification after making available on the market
must_take_action(Distributor, corrective_action(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    non_compliant_with_requirements(System).

must_inform(Distributor, risk_and_corrective_actions(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    presents_risk_article_79(System).

% Paragraph 5: Provide information and documentation upon reasoned request
must_provide(Distributor, documentation_to(Authority, System)) :-
    distributor(Distributor),
    competent_authority(Authority),
    reasoned_request(Authority, Distributor),
    high_risk_ai_system(System).

% Paragraph 6: Cooperation with competent authorities
must_cooperate(Distributor, Authority) :-
    distributor(Distributor),
    competent_authority(Authority).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_24').
provenance(non_compliant_with_requirements/1, 'celex:32024R1689/oj#art_24').
provenance(presents_risk_article_79/1, 'celex:32024R1689/oj#art_24').
provenance(reasoned_request/2, 'celex:32024R1689/oj#art_24').
provenance(competent_authority/1, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/2, 'celex:32024R1689/oj#art_24').
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(must_inform/2, 'celex:32024R1689/oj#art_24').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_24').
provenance(must_take_action/2, 'celex:32024R1689/oj#art_24').
provenance(must_provide/2, 'celex:32024R1689/oj#art_24').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_24').

% References
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_b').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_16/unp_1/pnt_c').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_23/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_1').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_2').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_3').
references('celex:32024R1689/oj#art_24', 'celex:32024R1689/oj#art_24/par_4').
