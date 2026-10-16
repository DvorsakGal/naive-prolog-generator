% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : google/gemini-3.8-flash
% signature  : 87d5c1a46d791e30e399ce65c63c5e7a3d3e6d1b7f95fdfa76a7aed868be1fea
% call key   : 7903620a1c9ab30dbddaec7f52c6e17db2eca55cb17be89f4c887f763992adaa
% cached     : False
% title      : Obligations of importers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_23').
:- pred verified_conformity_assessment/2, gloss('importer verified relevant conformity assessment carried out by provider'), source('celex:32024R1689/oj#art_23').
:- pred verified_technical_documentation/2, gloss('importer verified technical documentation drawn up by provider'), source('celex:32024R1689/oj#art_23').
:- pred verified_ce_marking_and_declaration/2, gloss('importer verified CE marking, EU declaration of conformity, and instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred verified_authorised_representative/2, gloss('importer verified provider appointed authorised representative'), source('celex:32024R1689/oj#art_23').
:- pred non_conforming_or_falsified/2, gloss('importer has sufficient reason to consider system non-conforming or falsified'), source('celex:32024R1689/oj#art_23').
:- pred brought_into_conformity/1, gloss('system has been brought into conformity'), source('celex:32024R1689/oj#art_23').
:- pred presents_risk_article_79/1, gloss('AI system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_23').
:- pred prohibited_placing_on_market/2, gloss('operator is prohibited from placing system on the market'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure(Actor, Object), gloss('duty of an actor to ensure a state of affairs'), source('celex:32024R1689/oj#art_23').
:- pred must_inform(Actor, Object), gloss('duty of an actor to inform another party of a state of affairs'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate(Actor, Object), gloss('duty of an actor to indicate identification and contact information'), source('celex:32024R1689/oj#art_23').
:- pred must_keep(Actor, Object), gloss('duty of an actor to retain documentation for a specified period'), source('celex:32024R1689/oj#art_23').
:- pred must_provide(Actor, Object), gloss('duty of an actor to provide information or documentation upon request'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate(Actor, Object), gloss('duty of an actor to cooperate with authorities'), source('celex:32024R1689/oj#art_23').

% Paragraph 1: Importer duty to ensure conformity before placing on the market
must_ensure(Importer, conformity(System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    verified_conformity_assessment(Importer, System),
    verified_technical_documentation(Importer, System),
    verified_ce_marking_and_declaration(Importer, System),
    verified_authorised_representative(Importer, System).

% Paragraph 2: Prohibition on placing on market when non-conforming or falsified
prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    \+ brought_into_conformity(System).

% Paragraph 2: Informing when system presents a risk
must_inform(Importer, risk_information(System, Provider)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    provider(Provider).

must_inform(Importer, risk_information(System, AuthRep)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    authorised_representative(AuthRep).

must_inform(Importer, risk_information(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    non_conforming_or_falsified(Importer, System),
    presents_risk_article_79(System),
    market_surveillance_authority(Authority).

% Paragraph 3: Indicating contact information
must_indicate(Importer, contact_details(System)) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 4: Storage and transport conditions
must_ensure(Importer, safe_storage_and_transport(System)) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 5: Retention of documentation
must_keep(Importer, documentation(System, period(years(10), after(market_placement_or_service)))) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 6: Providing documentation and ensuring technical documentation availability
must_provide(Importer, documentation_demonstrating_conformity(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

must_ensure(Importer, technical_documentation_available(System, Authority)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Paragraph 7: Cooperation with competent authorities
must_cooperate(Importer, actions(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Provenance
provenance(high_risk_ai_system/1, 'celex:32024R1689/oj#art_23').
provenance(verified_conformity_assessment/2, 'celex:32024R1689/oj#art_23').
provenance(verified_technical_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(verified_ce_marking_and_declaration/2, 'celex:32024R1689/oj#art_23').
provenance(verified_authorised_representative/2, 'celex:32024R1689/oj#art_23').
provenance(non_conforming_or_falsified/2, 'celex:32024R1689/oj#art_23').
provenance(brought_into_conformity/1, 'celex:32024R1689/oj#art_23').
provenance(presents_risk_article_79/1, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide/2, 'celex:32024R1689/oj#art_23').
provenance(must_cooperate/2, 'celex:32024R1689/oj#art_23').

% References
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_43').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_11').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#anx_4').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_47').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_22/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_79/par_1').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#chp_3/sec_2').
references('celex:32024R1689/oj#art_23', 'celex:32024R1689/oj#art_23/par_5').
