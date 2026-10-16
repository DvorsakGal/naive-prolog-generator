% unit       : celex:32024R1689/oj#art_23
% context    : CHAPTER III HIGH-RISK AI SYSTEMS > SECTION 3 Obligations of providers and deployers of high-risk AI systems and other parties
% slice sha  : b201972e5b41297b8016735f75a6700057178c54c6ab1587eb933e6223a689fd
% model      : google/gemini-3.8-flash
% signature  : 7f753e9f3c1fb8188eb17a0b14b4a1d4bf0bdc8508310d98c2acdbda0c272e75
% call key   : fba14c6dfedb2e0b0bf3076feb7648fdc0ff573e2ef1ca9d28c426dfd94f615b
% cached     : False
% title      : Obligations of importers
:- pred high_risk_ai_system/1, gloss('AI system classified as high-risk'), source('celex:32024R1689/oj#art_23').
:- pred carried_out_conformity_assessment/2, gloss('provider has carried out conformity assessment for AI system'), source('celex:32024R1689/oj#art_23').
:- pred drawn_up_technical_documentation/2, gloss('provider has drawn up technical documentation for AI system'), source('celex:32024R1689/oj#art_23').
:- pred bears_ce_marking/1, gloss('AI system bears the CE marking'), source('celex:32024R1689/oj#art_23').
:- pred accompanied_by_declaration_of_conformity/1, gloss('AI system is accompanied by the EU declaration of conformity'), source('celex:32024R1689/oj#art_23').
:- pred accompanied_by_instructions_for_use/1, gloss('AI system is accompanied by instructions for use'), source('celex:32024R1689/oj#art_23').
:- pred appointed_authorised_representative/2, gloss('provider has appointed an authorised representative for AI system'), source('celex:32024R1689/oj#art_23').
:- pred verified_conformity/2, gloss('importer has verified that the AI system conforms before placing on the market'), source('celex:32024R1689/oj#art_23').
:- pred suspected_non_conformity/2, gloss('importer has reason to consider system non-conforming or falsified'), source('celex:32024R1689/oj#art_23').
:- pred prohibited_placing_on_market/2, gloss('actor is prohibited from placing the AI system on the market'), source('celex:32024R1689/oj#art_23').
:- pred presents_risk/1, gloss('AI system presents a risk within the meaning of Article 79(1)'), source('celex:32024R1689/oj#art_23').
:- pred must_inform/2, gloss('actor must inform recipient of specified circumstances'), source('celex:32024R1689/oj#art_23').
:- pred must_indicate_contact_info/2, gloss('importer must indicate contact details on the AI system, packaging, or documentation'), source('celex:32024R1689/oj#art_23').
:- pred must_ensure_storage_and_transport/2, gloss('importer must ensure storage and transport conditions do not jeopardise compliance'), source('celex:32024R1689/oj#art_23').
:- pred must_keep_documentation/2, gloss('importer must keep specified documentation for a period'), source('celex:32024R1689/oj#art_23').
:- pred must_provide_documentation/2, gloss('importer must provide documentation and information to competent authority'), source('celex:32024R1689/oj#art_23').
:- pred must_cooperate/2, gloss('importer must cooperate with competent authorities in their actions'), source('celex:32024R1689/oj#art_23').
:- pred reasoned_request/2, gloss('competent authority has made a reasoned request to importer'), source('celex:32024R1689/oj#art_23').
:- pred under_responsibility/2, gloss('AI system is under the responsibility of actor'), source('celex:32024R1689/oj#art_23').

% Paragraph 1: Verification of conformity before placing on the market
verified_conformity(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    provider(Provider),
    carried_out_conformity_assessment(Provider, System),
    drawn_up_technical_documentation(Provider, System),
    bears_ce_marking(System),
    accompanied_by_declaration_of_conformity(System),
    accompanied_by_instructions_for_use(System),
    appointed_authorised_representative(Provider, System).

must_comply(Importer, verify_conformity(System)) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 2: Prohibition to place on market if not conforming; notification obligation
prohibited_placing_on_market(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System).

must_inform(Importer, provider(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).

must_inform(Importer, authorised_representative(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).

must_inform(Importer, market_surveillance_authorities(System, risk(art_79_par_1))) :-
    importer(Importer),
    high_risk_ai_system(System),
    suspected_non_conformity(Importer, System),
    presents_risk(System).

% Paragraph 3: Contact information
must_indicate_contact_info(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 4: Storage and transport conditions
must_ensure_storage_and_transport(Importer, System) :-
    importer(Importer),
    high_risk_ai_system(System),
    under_responsibility(System, Importer).

% Paragraph 5: Retention of documentation for 10 years
must_keep_documentation(Importer, copy_documentation(System, period(years(10)))) :-
    importer(Importer),
    high_risk_ai_system(System).

% Paragraph 6: Provision of documentation upon reasoned request
must_provide_documentation(Importer, competent_authority(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority),
    reasoned_request(Authority, Importer).

% Paragraph 7: Cooperation with competent authorities
must_cooperate(Importer, actions(Authority, System)) :-
    importer(Importer),
    high_risk_ai_system(System),
    national_competent_authority(Authority).

% Provenance
provenance(verified_conformity/2, 'celex:32024R1689/oj#art_23').
provenance(must_comply/2, 'celex:32024R1689/oj#art_23').
provenance(prohibited_placing_on_market/2, 'celex:32024R1689/oj#art_23').
provenance(must_inform/2, 'celex:32024R1689/oj#art_23').
provenance(must_indicate_contact_info/2, 'celex:32024R1689/oj#art_23').
provenance(must_ensure_storage_and_transport/2, 'celex:32024R1689/oj#art_23').
provenance(must_keep_documentation/2, 'celex:32024R1689/oj#art_23').
provenance(must_provide_documentation/2, 'celex:32024R1689/oj#art_23').
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
