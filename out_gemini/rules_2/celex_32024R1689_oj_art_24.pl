% unit       : celex:32024R1689/oj#art_24
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : 86f6a4142313fee528529b0ed884f90cb20a4b5625bb7a122e24a779cab98c12
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : d6bfc60ae98ae6dba11ce12d662ca888498a82102609f7324b60ff96e77751bb
% cached     : False
% title      : Obligations of distributors
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_24').
:- pred bears_ce_marking/1, gloss('AI system bears the required CE marking'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_declaration_of_conformity/1, gloss('system is accompanied by a copy of the EU declaration of conformity'), source('celex:32024R1689/oj#art_24').
:- pred accompanied_by_instructions_for_use/1, gloss('system is accompanied by instructions for use'), source('celex:32024R1689/oj#art_24').
:- pred compliant_with_applicable_obligations/1, gloss('provider and importer complied with their applicable obligations'), source('celex:32024R1689/oj#art_24').
:- pred verified_distributor_requirements/2, gloss('distributor verified markings, docs, and party compliance for system'), source('celex:32024R1689/oj#art_24').
:- pred considers_non_compliant/2, gloss('distributor considers or has reason to consider system not compliant with Chapter III Section 2'), source('celex:32024R1689/oj#art_24').
:- pred presents_risk_article_79_1/1, gloss('AI system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_24').
:- pred under_responsibility/2, gloss('system is under the responsibility of an operator'), source('celex:32024R1689/oj#art_24').
:- pred storage_or_transport_jeopardises_compliance/2, gloss('storage or transport conditions jeopardise compliance of system'), source('celex:32024R1689/oj#art_24').
:- pred made_available_on_market_by/2, gloss('system has been made available on the market by a distributor'), source('celex:32024R1689/oj#art_24').
:- pred reasoned_request_by/2, gloss('reasoned request made by an authority to an operator'), source('celex:32024R1689/oj#art_24').
:- pred competent_authority/1, gloss('relevant competent authority'), source('celex:32024R1689/oj#art_24').
:- pred prohibited_making_available_on_market/2, gloss('distributor is prohibited from making system available on market'), source('celex:32024R1689/oj#art_24').
:- pred must_verify/2, gloss('distributor must verify system requirements before making available'), source('celex:32024R1689/oj#art_24').
:- pred must_inform/2, gloss('distributor must inform actor of non-compliance or risk'), source('celex:32024R1689/oj#art_24').
:- pred must_ensure/2, gloss('distributor must ensure a condition holds'), source('celex:32024R1689/oj#art_24').
:- pred must_take_action/2, gloss('distributor must take corrective action'), source('celex:32024R1689/oj#art_24').
:- pred must_provide/2, gloss('distributor must provide information and documentation to authority'), source('celex:32024R1689/oj#art_24').
:- pred must_cooperate/2, gloss('distributor must cooperate with authority'), source('celex:32024R1689/oj#art_24').

% Paragraph 1: Verification duty before making high-risk AI system available
must_verify(Distributor, verification(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System).

verified_distributor_requirements(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    bears_ce_marking(System),
    accompanied_by_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    compliant_with_applicable_obligations(System).

% Paragraph 2: Prohibition on making available if considered non-compliant
prohibited_making_available_on_market(Distributor, System) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_compliant(Distributor, System),
    \+ complies_with_chapter_3_section_2(System).

% Paragraph 2: Inform provider or importer if system presents Article 79(1) risk
must_inform(Distributor, risk(System, ProviderOrImporter)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    (provider(ProviderOrImporter) ; importer(ProviderOrImporter)).

% Paragraph 3: Storage and transport conditions
must_ensure(Distributor, safe_storage_and_transport(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    under_responsibility(Distributor, System),
    \+ storage_or_transport_jeopardises_compliance(Distributor, System).

% Paragraph 4: Corrective actions for systems already on the market
must_take_action(Distributor, corrective_action(System)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System).

must_inform(Distributor, risk_and_corrective_action(System, Authority)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    competent_authority(Authority).

must_inform(Distributor, risk_and_corrective_action(System, ProviderOrImporter)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System),
    considers_non_compliant(Distributor, System),
    presents_risk_article_79_1(System),
    (provider(ProviderOrImporter) ; importer(ProviderOrImporter)).

% Paragraph 5: Providing documentation upon reasoned request
must_provide(Distributor, information_and_documentation(System, Authority)) :-
    distributor(Distributor),
    high_risk_ai_system(System),
    competent_authority(Authority),
    reasoned_request_by(Authority, Distributor).

% Paragraph 6: Cooperation with competent authorities
must_cooperate(Distributor, action(Authority, System)) :-
    distributor(Distributor),
    competent_authority(Authority),
    high_risk_ai_system(System),
    made_available_on_market_by(Distributor, System).

% Provenance
provenance(must_verify/2, 'celex:32024R1689/oj#art_24').
provenance(verified_distributor_requirements/2, 'celex:32024R1689/oj#art_24').
provenance(prohibited_making_available_on_market/2, 'celex:32024R1689/oj#art_24').
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
